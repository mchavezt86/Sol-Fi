`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2020 08:51:51 PM
// Design Name: 
// Module Name: test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module logicanalyze(
	input CLK100MHZ,
	input [3:0] btn, input [3:0] sw,
	output [7:0] ja, output [7:0] jb, output [7:0] jc, output [7:0] jd,
	output dclk_o, output dclk_o_c,
	output reg loadb, output loadb_c,
	output reg sctrl, output sctrl_c,
	output reg drc_bus,	output drc_bus_c,
	output reg sac_bus,	output sac_bus_c,
	output reg drc_strobe, output drc_strobe_c,
	output reg led0_g, output reg led0_b, output led0_r,
	output led1_b,
	output ck_a0,
	output reg ck_a1
	//input [31:0] w_gpio_out
);


parameter ARRAY_SIZE = 'd18;
parameter WAIT_COUNT = 'd1; //180;
parameter S_WRITE_LM = 'd1;
parameter F_WRITE_LM = 'd200; //160; //222; //642;
parameter S_WRITE_START = 'd150; //221; //550;
parameter PRE_COUNT = 'd0;

parameter COUNT_DRC_1 = 'd17;
parameter COUNT_DRC_2 = 'd25;
parameter COUNT_DRC_3 = 'd41;
parameter COUNT_DRC_4 = 'd49;
parameter COUNT_DRC_5 = 'd63; //73;
parameter COUNT_DRC_6 = 'd71; //81;

parameter COUNT_SAC_1 = 'd8;
parameter COUNT_SAC_2 = 'd88;
parameter COUNT_SAC_3 = 'd96;

parameter COUNT_DRC_STROBE_1 = 'd26;
parameter COUNT_DRC_STROBE_2 = 'd27;
parameter COUNT_DRC_STROBE_3 = 'd50;
parameter COUNT_DRC_STROBE_4 = 'd51;
parameter COUNT_DRC_STROBE_5 = 'd72; //82;
parameter COUNT_DRC_STROBE_6 = 'd73; //83;
//parameter COUNT_SWRITE_MAX = 'd1200;
parameter FWRITE_P = ARRAY_SIZE;
parameter SWRITE_DATA_SIZE = 8;
parameter STATE_SIZE = 4;
parameter IDLE = 3'b000, START = 3'b001, SWRITE = 3'b010;

parameter GPIO_SIZE = 'd32;
parameter MAX_DATA_FRAME = 'd128;
parameter BYTE_SIZE = 'd8;
parameter PADDING_SIZE = 'd10;
parameter BIT_PATTERN = 'd4;

parameter dSTARTUP = 3'b000, dIDLE = 3'b001, dFREQ = 3'b010, dMSG = 3'b011;
parameter BASE_FREQ_SIZE = 'd28;
parameter FREQ_MULT_SIZE = 'd10;

parameter COUNTER_SWRITE_SIZE = 30;
parameter COUNTER_STATE_SIZE = 10;
parameter COUNTER_FWRITE_SIZE = 5;
parameter CYCLE_COUNT_1_HZ = 'd36000000;
parameter COUNT_SWRITE_MAX = 30;

wire [ARRAY_SIZE-1:0] loadb_array;
wire [GPIO_SIZE-1:0] w_gpio_out;
wire [BYTE_SIZE-1:0] idle_signal, stx, etx, etb, cancel, end_of_message;
wire [COUNT_SWRITE_MAX-1:0] count_swrite_max;
wire rset, clk_single, clk_double;

reg [ARRAY_SIZE-1:0] sctrl_array;
reg [SWRITE_DATA_SIZE-1:0] drc_bus_w1s1, drc_bus_w1s2, drc_bus_w1s3, sac_bus_w1s1, sac_bus_w1s2;
reg [COUNTER_STATE_SIZE-1:0] counter_state_fwrite, counter_state_swrite;
reg [COUNTER_FWRITE_SIZE-1:0] counter_fwrite;
reg [STATE_SIZE-1:0] state, next_state;
reg [MAX_DATA_FRAME-1:0] data_to_send;
reg [BYTE_SIZE-1:0] next_msg, current_msg;
reg [BYTE_SIZE-1:0] current_bit;
reg [FREQ_MULT_SIZE-1:0] current_cycle_count, freq_mult1, freq_mult2, freq_mult3, freq_mult4;
reg [STATE_SIZE-1:0] dstate;
reg [GPIO_SIZE-1:0] w_gpio_read;
reg [COUNTER_SWRITE_SIZE-1:0] counter_swrite;
reg start_signal_1, start_signal_2, start_signal;
reg dReady;
reg [BIT_PATTERN-1:0] cnt1, cnt2;
reg [BASE_FREQ_SIZE-1:0] base_freq_1, base_freq_2, base_freq_3, base_freq_4;

wire [FREQ_MULT_SIZE-1:0] current_cycle_limit;
assign ja[7:0] = 8'b00000000;
assign jb[7:0] = 8'b00000000;
assign jc[7:0] = 8'b11111111;
assign jd[7:0] = 8'b11111111;

assign idle_signal[BYTE_SIZE-1:0] = 8'b11011000;
assign rset = btn[2];
assign led0_r = (state == IDLE);

assign dclk_o_c = dclk_o;
assign loadb_c = loadb;
assign sctrl_c = sctrl;
assign drc_bus_c = drc_bus;
assign sac_bus_c = sac_bus;
assign drc_strobe_c = drc_strobe;
assign dclk_o = clk_single;
assign ck_a0 = drc_bus_w1s1[0];

assign led1_b = drc_bus_w1s1[0];
//assign count_swrite_max = 'd10; //12500; 
//assign count_swrite_max = (current_msg[current_bit] == 1'b0)? base_freq_1:base_freq_2;
//assign current_cycle_limit = (current_msg[current_bit] == 1'b0)? freq_mult1:freq_mult2;

assign count_swrite_max = (current_msg[current_bit] == 0)?
                            ((current_msg[current_bit+1] == 0) ? base_freq_1: base_freq_2):
                            ((current_msg[current_bit+1] == 0) ? base_freq_3: base_freq_4);

assign current_cycle_limit = (current_msg[current_bit] == 0)?
                            ((current_msg[current_bit+1] == 0) ? freq_mult1: freq_mult2):
                            ((current_msg[current_bit+1] == 0) ? freq_mult3: freq_mult4);
                                                        
// state machine for writing logic
always @ (*)
begin 
    next_state = IDLE;
    case(state)
        IDLE: begin//if (start_signal == 1'b1) begin
            next_state = START;
        end 
        START: begin
            next_state = SWRITE;
        end
        SWRITE: begin 
            if (counter_state_swrite >= S_WRITE_LM) begin
                next_state = START;
            end else begin
                next_state = SWRITE;
            end
        end
    endcase
end    

always @ (posedge clk_single)
begin
    if (rset == 1'b1) begin
        state <= IDLE;
    end else begin
        state <= next_state;
    end 
end

// state machine for accepting user input
always @ (posedge clk_single)
begin
	if (rset == 1'b1) begin
		dstate <= dSTARTUP;
	end else if (dReady == 1'b1) begin
		w_gpio_read <= w_gpio_out;
		if (w_gpio_read[GPIO_SIZE-1:GPIO_SIZE-2] == 2'b01) begin
			dstate <= dFREQ;
		end else if (w_gpio_read[GPIO_SIZE-1:GPIO_SIZE-2] == 2'b10) begin
			dstate <= dMSG;
		end else begin
			dstate <= dIDLE;
		end
	end
end

always @ (posedge clk_single)
begin
	if (rset == 1'b1) begin
	    led0_g <= 0;
	    
		drc_bus <= 1;
		drc_strobe <= 0;
		sac_bus <= 1;
		
		counter_swrite <= 0;
		counter_state_swrite <= 0;
		
        drc_bus_w1s1 <= {4'b0011, 4'b0000}; //counter_state_swrite[0], counter_state_swrite[1], counter_state_swrite[2], 1'b0};
        drc_bus_w1s2 <= {4'b0000, 4'b0000};
        drc_bus_w1s3 <= {4'b0100, 4'b0000};
        sac_bus_w1s1 <= {3'b000,  4'b0000, 1'b1};
        sac_bus_w1s2 <= {4'b0000, 4'b0000};

        // Reset Start Signal
        start_signal_1 <= 0;
        start_signal_2 <= 0;
        start_signal <= 0; 
		
		dReady <= 0;
				
		current_msg <= idle_signal;
		next_msg <= idle_signal;
		current_bit <= 0;
		
		current_cycle_count <= 'd0;
		ck_a1 <= 0;
		
		//1234
		base_freq_1 <= 'd900; //18000 - 2k;
		base_freq_2 <= 'd450; //9000;
		base_freq_3 <= 'd300; //6000;
		base_freq_4 <= 'd225; //4500;
		freq_mult1 <= 'd1;
		freq_mult2 <= 'd2;
		freq_mult3 <= 'd3;
		freq_mult4 <= 'd4;
		
	end else begin 
		// Wait for start signal edge
        start_signal_1 <= btn[0];
        start_signal_2 <= start_signal_1;
        start_signal <= (start_signal_1 & ~start_signal_2); 
		//if (state == SWRITE) begin
			led0_g <= 1;
			counter_swrite <= counter_swrite + 1;
				
			if (counter_swrite >= count_swrite_max - 1) begin	
                ck_a1 <= ~ck_a1;	    
				counter_swrite <= 0;
				counter_state_swrite <= counter_state_swrite + 1;
                
                if (current_cycle_count >= current_cycle_limit*2 - 1) begin
                    if (current_bit >= BYTE_SIZE - 2) begin
                        dReady <= 1'b1;
                        current_bit <= 0;
                        current_msg <= next_msg;
                        next_msg = idle_signal;		        
                    end else begin
                        current_bit <= current_bit + 2;
                    end
                    current_cycle_count <= 0;
			    end else begin
			        current_cycle_count <= current_cycle_count + 1;
			    end
            
                if (dReady == 1'b1) begin
                    if (dstate == dFREQ) begin
                        if (w_gpio_read[GPIO_SIZE-3] == 1'b0) begin // change base value
                            if (w_gpio_read[GPIO_SIZE-4] == 1'b0) begin 
                                base_freq_1 <= w_gpio_read[BASE_FREQ_SIZE-1:0];
                            end else begin
                                base_freq_2 <= w_gpio_read[BASE_FREQ_SIZE-1:0];
                            end
                        end else begin // change mult value
                            //freq_mult1 <= w_gpio_read[FREQ_MULT_SIZE+FREQ_MULT_SIZE-1:FREQ_MULT_SIZE];
                            //freq_mult2 <= w_gpio_read[FREQ_MULT_SIZE-1:0];			
                        end
                    end else if (dstate == dMSG) begin
                        next_msg <= w_gpio_read[BYTE_SIZE-1:0];
                    end else begin
                        next_msg <= idle_signal;
                    end
                    dReady <= 1'b0;
                end
            
                if (dstate == dSTARTUP) begin
                    dReady <= 1;
                end 
			
				if (sw[3] == 0) begin
					if (sw[2] == 0) begin
						drc_bus_w1s1 <= {4'b0011, 4'b0000}; //counter_state_swrite[0], counter_state_swrite[1], counter_state_swrite[2], 1'b0};
						drc_bus_w1s2 <= {4'b0000, 4'b0000};
						drc_bus_w1s3 <= {4'b0100, 4'b0000};
						sac_bus_w1s1 <= {3'b000,  4'b0000, 1'b1};
						sac_bus_w1s2 <= {4'b0000, 4'b0000};
					end else begin
						drc_bus_w1s1 <= {4'b0011, 4'b0001};
						drc_bus_w1s2 <= {4'b0000, 4'b0001};
						drc_bus_w1s3 <= {4'b0100, 4'b0001};
						sac_bus_w1s1 <= {3'b000,  4'b0001, 1'b1};
						sac_bus_w1s2 <= {4'b0000, 4'b0001};
					end
				end else begin
					if (drc_bus_w1s1[0] == 1'b1) begin
						drc_bus_w1s1 <= {4'b0011, 4'b0000};
						drc_bus_w1s2 <= {4'b0000, 4'b0000};
						drc_bus_w1s3 <= {4'b0100, 4'b0000};
						sac_bus_w1s1 <= {3'b000,  4'b0000, 1'b1};
						sac_bus_w1s2 <= {4'b0000, 4'b0000};
					end else begin
						drc_bus_w1s1 <= {4'b0011, 4'b0001}; //counter_state_swrite[0], counter_state_swrite[1], counter_state_swrite[2], 1'b0};
						drc_bus_w1s2 <= {4'b0000, 4'b0001};
						drc_bus_w1s3 <= {4'b0100, 4'b0001};
						sac_bus_w1s1 <= {3'b000,  4'b0001, 1'b1};
						sac_bus_w1s2 <= {4'b0000, 4'b0001};                       
					end
				end
			end
			

			if (counter_swrite >= PRE_COUNT) begin
				// drc_bus write
				if ((counter_swrite-PRE_COUNT) >= COUNT_DRC_6) begin
					drc_bus <= 1;
				end else if ((counter_swrite-PRE_COUNT) >= COUNT_DRC_5) begin
					drc_bus <= drc_bus_w1s3[(counter_swrite-PRE_COUNT)-COUNT_DRC_5];
				end else if ((counter_swrite-PRE_COUNT) >= COUNT_DRC_4) begin
					drc_bus <= 1;
				end else if ((counter_swrite-PRE_COUNT) >= COUNT_DRC_3) begin
					drc_bus <= drc_bus_w1s2[(counter_swrite-PRE_COUNT)-COUNT_DRC_3];
				end else if ((counter_swrite-PRE_COUNT) >= COUNT_DRC_2) begin
					drc_bus <= 1;
				end else if ((counter_swrite-PRE_COUNT) >= COUNT_DRC_1) begin
					drc_bus <= drc_bus_w1s1[(counter_swrite-PRE_COUNT)-COUNT_DRC_1];
				end else begin
					drc_bus <= 1;
				end
				
				// sac_bus write
				if ((counter_swrite-PRE_COUNT) >= COUNT_SAC_3) begin
					sac_bus <= 1;
				end else if ((counter_swrite-PRE_COUNT) >= COUNT_SAC_2) begin
					sac_bus <= sac_bus_w1s2[(counter_swrite-PRE_COUNT-COUNT_SAC_2)];
				end else if ((counter_swrite-PRE_COUNT) >= COUNT_SAC_1) begin
					sac_bus <= 1;
				end else begin
					sac_bus <= sac_bus_w1s1[(counter_swrite-PRE_COUNT)];
				end
				
				// drc_strobe write
				if ((counter_swrite-PRE_COUNT) >= COUNT_DRC_STROBE_6) begin
					drc_strobe <= 0;
				end else if ((counter_swrite-PRE_COUNT) >= COUNT_DRC_STROBE_5) begin
					drc_strobe <= 1;
				end else if ((counter_swrite-PRE_COUNT) >= COUNT_DRC_STROBE_4) begin
					drc_strobe <= 0;
				end else if ((counter_swrite-PRE_COUNT) >= COUNT_DRC_STROBE_3) begin
					drc_strobe <= 1;
				end else if ((counter_swrite-PRE_COUNT) >= COUNT_DRC_STROBE_2) begin
					drc_strobe <= 0;
				end else if ((counter_swrite-PRE_COUNT) >= COUNT_DRC_STROBE_1) begin
					drc_strobe <= 1;
				end else begin
					drc_strobe <= 0;
				end
			end
			
        //end else begin
        //    drc_bus <= 1;
        //    drc_strobe <= 0;
        //    sac_bus <= 1;       
			
        //    counter_swrite <= 0;
        //    counter_state_swrite <= 0;
        //end
    end
end

assign loadb_array = 'b111111111111111100;
always @ (posedge clk_double)
begin
    if (rset == 1'b1 || state == START) begin

        led0_b <= 0;
        loadb <= 1;
        sctrl <= 1;
        // Reset Counters
        counter_state_fwrite <= 0;
        counter_fwrite <= 0;
    end else if (state == SWRITE & counter_state_fwrite <= F_WRITE_LM + 1) begin
		led0_b <= ~led0_b;
		// Increment write counter
		counter_fwrite <= counter_fwrite + 1;
		
		if (counter_state_fwrite == F_WRITE_LM - 'd5 ) begin
			sctrl_array <= 'b110000100100111111; 
		end else begin
			sctrl_array <= 'b110000101100111111;
		end
		
		// total write
		if (counter_fwrite >= FWRITE_P - 1) begin
			counter_fwrite <= 0;
			counter_state_fwrite <= counter_state_fwrite + 1;
			loadb <= 1;
			sctrl <= 1;
		end
		
		loadb <= loadb_array[counter_fwrite];
		sctrl <= sctrl_array[counter_fwrite];
    end
end

clk_wiz_0 wiz
 (
	// Clock out ports
	.clk_double(clk_double),
	.clk_single(clk_single),
	// Status and control signals
	.reset(btn[2]),
	.locked(),
	// Clock in ports
	.clk_in1(CLK100MHZ)
 );

ila_0 lb (
    .clk(clk_single),
    .probe0(w_gpio_out)
);

design_1_wrapper d0
(
	.gpio_io_o_0(w_gpio_out),
	.gpio_rtl_0_tri_i(dReady),
	.clk(clk_single),
	.reset(rset)
);
	
endmodule
