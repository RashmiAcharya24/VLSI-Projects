
module up_down_counter (

input wire clk,

// Clock input

input wire reset,

// Asynchronous reset

input wire up_down,

// Mode control: 1 for up, 0 for down

output reg [3:0] count

// 4-bit counter output

);

// Initialize the counter

always @(posedge clk or posedge reset) begin

if (reset) begin

count <= 4'b0000; // Reset the counter to 0

end else begin

if (up_down) begin

count <= count + 1; // Increment counter

end else begin

count <= count - 1; // Decrement counter

end

end

end

endmodule