// create module
    module new_blink (
    input wire clk, // 50MHz input clock
    output wire GPIO, // GPIO ouput
	 output wire GPIO1,
	 output wire GPIO2,
	 output wire GPIO3,
	 output wire GPIO4,
	 output wire GPIO5,
	 output wire GPIO6,
	 output wire GPIO7,
	 output wire GPIO8,
	 output wire GPIO9,
	 output wire GPIO10,
	 output wire GPIO11,
	 output wire GPIO12,
	 output wire GPIO13,
	 output wire GPIO14,
	 output wire GPIO15,
	 output wire GPIO16,
	 output wire GPIO17,
	 output wire GPIO18,
	 output wire GPIO19,
	 output wire GPIO20,
	 output wire GPIO21,
	 output wire GPIO22,
	 output wire GPIO23,
	 input [9:0] SW
	 //output [9:0] LEDR
	 //input [0] SW	 
	 
    );
 
// create a binary counter
   reg [31:0] cnt; 
	reg [31:0] cnt3;
	reg [31:0] cnt2;// 32-bit counter
 
initial begin
 
cnt <= 32'h00000000; // start at zero
cnt2<= 32'h00000000;
cnt3<= 32'h00000000;
end
 
always @(posedge clk) begin
 
cnt <= cnt + 1; // count up
cnt2<= cnt2 + 1; 
cnt3<= cnt3 +1;
 
 
end
 
//assign LED to 25th bit of the counter to blink the LED at a few Hz
//assign GPIO = cnt[24];
//assign GPIO1 = cnt2[23];
//assign GPIO2 = cnt3[25];
//assign LEDR = SW; 
assign GPIO = SW;
assign GPIO1 = SW;
assign GPIO2 = SW;
assign GPIO3 = SW;
assign GPIO4 = SW;
assign GPIO5 = SW[1]; 
assign GPIO6 = SW[1];
assign GPIO7 = SW[1];
assign GPIO8 = SW[1];
assign GPIO9 = SW[1];
assign GPIO10 = SW[2];
assign GPIO11 = SW[2];
assign GPIO12 = SW[2];
assign GPIO13 = SW[2];
assign GPIO14 = SW[2];
assign GPIO15 = SW[3];
assign GPIO16 = SW[3];
assign GPIO17 = SW[3];
assign GPIO18 = SW[3];
assign GPIO19 = SW[3];
assign GPIO20 = cnt[24];
assign GPIO21 = cnt[24];
assign GPIO22 = cnt[24];
assign GPIO23 = cnt[24];

endmodule



/*module new_blink(SW, LEDR);

		input [9:0] SW;
		output [9:0] LEDR; 
		assign LEDR = SW; 
		
endmodule*/
