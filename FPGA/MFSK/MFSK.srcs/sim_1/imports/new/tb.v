`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2020 09:51:11 PM
// Design Name: 
// Module Name: tb
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
module tb();

reg clk;
reg [3:0] btn, sw;

wire [7:0] ja, jb, jc, jd;
wire dclk_o, dclk_o_c, data, loadb, loadb_c, sctrl, sctrl_c;
wire drc_bus, drc_bus_c, sac_bus, sac_bus_c, drc_strobe, drc_strobe_c;
wire led0_g, led0_b, led0_r, led1_b, led3_b, led2_r;
reg [31:0] w_gpio_out;

logicanalyze dut(
    .CLK100MHZ(clk),
    .btn(btn[3:0]),
    .sw(sw[3:0]),
    .ja(ja[7:0]),
    .jb(jb[7:0]),
    .jc(jc[7:0]),
    .jd(jd[7:0]),
    .dclk_o(dclk_o), 
    .dclk_o_c(dclk_o_c),
    .loadb(loadb),
    .loadb_c(loadb_c),
    .sctrl(sctrl),
    .sctrl_c(sctrl_c),
    .drc_bus(drc_bus),
    .drc_bus_c(drc_bus_c),
    .sac_bus(sac_bus),
    .sac_bus_c(sac_bus_c),
    .drc_strobe(drc_strobe),
    .drc_strobe_c(drc_strobe_c),
    .led0_g(led0_g),
    .led0_b(led0_b),
    .led0_r(led0_r),
    .led1_b(led1_b),
    .w_gpio_out(w_gpio_out)
);

always #5 clk = ~clk;
 
initial
begin
    sw[3] = 1;
    btn = 4'b0100;  
    clk = 0;
    #20 btn[2] = 1'b0;
    #30 btn[0] = 1'b1;
    #100 btn[3] = 1'b1;
    #150 btn[3] = 1'b0;
    #300 btn[3] = 1'b1;
    #350 btn[3] = 1'b0;
    //#5000 w_gpio_out = 'b10000000000000000000000000110011;
    //#800 w_gpio_out = 'b10000000000000000000000001110111;
    //#1500 w_gpio_out = 'd0;
    //#3200 w_gpio_out = 'b01000000000000000000000000010100;
end    

endmodule
