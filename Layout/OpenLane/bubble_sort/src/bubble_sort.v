// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

//`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="bubble_sort,hls_ip_2019_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=6.508000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=76,HLS_SYN_LUT=194,HLS_VERSION=2019_1}" *)
//`define USE_POWER_PINS
module bubble_sort (
`ifdef USE_POWER_PINS
    VPWR,
    VGND,
`endif
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        memory_Addr_A,
        memory_EN_A,
        memory_WEN_A,
        memory_Din_A,
        memory_Dout_A,
        memory_Clk_A,
        memory_Rst_A,
        memory_Addr_B,
        memory_EN_B,
        memory_WEN_B,
        memory_Din_B,
        memory_Dout_B,
        memory_Clk_B,
        memory_Rst_B
);

parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;

`ifdef USE_POWER_PINS
   inout VPWR;
   inout VGND;
`endif

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [31:0] memory_Addr_A;
output   memory_EN_A;
output  [3:0] memory_WEN_A;
output  [31:0] memory_Din_A;
input  [31:0] memory_Dout_A;
output   memory_Clk_A;
output   memory_Rst_A;
output  [31:0] memory_Addr_B;
output   memory_EN_B;
output  [3:0] memory_WEN_B;
output  [31:0] memory_Din_B;
input  [31:0] memory_Dout_B;
output   memory_Clk_B;
output   memory_Rst_B;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg memory_EN_A;
reg[3:0] memory_WEN_A;
reg memory_EN_B;
reg[3:0] memory_WEN_B;

(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [9:0] i_fu_95_p2;
reg   [9:0] i_reg_138;
wire    ap_CS_fsm_state2;
wire   [9:0] j_fu_107_p2;
reg   [9:0] j_reg_146;
wire    ap_CS_fsm_state3;
reg   [9:0] memory_addr_reg_151;
wire   [0:0] icmp_ln11_fu_101_p2;
reg   [9:0] memory_addr_1_reg_156;
wire   [9:0] add_ln9_fu_123_p2;
wire   [0:0] icmp_ln13_fu_129_p2;
reg   [0:0] icmp_ln13_reg_166;
wire    ap_CS_fsm_state4;
reg   [9:0] indvars_iv_reg_55;
reg   [9:0] i_0_reg_67;
reg   [9:0] j_0_reg_78;
wire    ap_CS_fsm_state5;
wire   [0:0] icmp_ln9_fu_89_p2;
wire   [63:0] zext_ln13_fu_113_p1;
wire   [63:0] zext_ln13_1_fu_118_p1;
reg   [31:0] memory_Addr_A_orig;
reg   [31:0] memory_Addr_B_orig;
reg   [4:0] ap_NS_fsm;

// power-on initialization
initial begin
 ap_CS_fsm = 5'd1;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_0_reg_67 <= 10'd0;
    end else if (((icmp_ln11_fu_101_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        i_0_reg_67 <= i_reg_138;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        indvars_iv_reg_55 <= 10'd1023;
    end else if (((icmp_ln11_fu_101_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        indvars_iv_reg_55 <= add_ln9_fu_123_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln9_fu_89_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        j_0_reg_78 <= 10'd0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        j_0_reg_78 <= j_reg_146;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_138 <= i_fu_95_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        icmp_ln13_reg_166 <= icmp_ln13_fu_129_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        j_reg_146 <= j_fu_107_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln11_fu_101_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        memory_addr_1_reg_156 <= zext_ln13_1_fu_118_p1;
        memory_addr_reg_151 <= zext_ln13_fu_113_p1;
    end
end

always @ (*) begin
    if (((icmp_ln9_fu_89_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln9_fu_89_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4))) begin
        memory_Addr_A_orig = memory_addr_reg_151;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        memory_Addr_A_orig = zext_ln13_fu_113_p1;
    end else begin
        memory_Addr_A_orig = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4))) begin
        memory_Addr_B_orig = memory_addr_1_reg_156;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        memory_Addr_B_orig = zext_ln13_1_fu_118_p1;
    end else begin
        memory_Addr_B_orig = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        memory_EN_A = 1'b1;
    end else begin
        memory_EN_A = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state3))) begin
        memory_EN_B = 1'b1;
    end else begin
        memory_EN_B = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln13_reg_166 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        memory_WEN_A = 4'd15;
    end else begin
        memory_WEN_A = 4'd0;
    end
end

always @ (*) begin
    if (((icmp_ln13_reg_166 == 1'd1) & (1'b1 == ap_CS_fsm_state5))) begin
        memory_WEN_B = 4'd15;
    end else begin
        memory_WEN_B = 4'd0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln9_fu_89_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((icmp_ln11_fu_101_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln9_fu_123_p2 = ($signed(indvars_iv_reg_55) + $signed(10'd1023));

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign i_fu_95_p2 = (i_0_reg_67 + 10'd1);

assign icmp_ln11_fu_101_p2 = ((j_0_reg_78 == indvars_iv_reg_55) ? 1'b1 : 1'b0);

assign icmp_ln13_fu_129_p2 = (($signed(memory_Dout_A) > $signed(memory_Dout_B)) ? 1'b1 : 1'b0);

assign icmp_ln9_fu_89_p2 = ((i_0_reg_67 == 10'd1023) ? 1'b1 : 1'b0);

assign j_fu_107_p2 = (j_0_reg_78 + 10'd1);

assign memory_Addr_A = memory_Addr_A_orig << 32'd2;

assign memory_Addr_B = memory_Addr_B_orig << 32'd2;

assign memory_Clk_A = ap_clk;

assign memory_Clk_B = ap_clk;

assign memory_Din_A = memory_Dout_B;

assign memory_Din_B = memory_Dout_A;

assign memory_Rst_A = ap_rst;

assign memory_Rst_B = ap_rst;

assign zext_ln13_1_fu_118_p1 = j_fu_107_p2;

assign zext_ln13_fu_113_p1 = j_0_reg_78;

endmodule //bubble_sort