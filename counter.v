module counter(
    input clk,
    input rst,
    output reg [7:0] count
);

    always @(posedge clk) begin
        if (rst) begin
            count <= 8'd13; 
        end else begin
            case (count)
                8'd13: count <= 8'd2;
                8'd2:  count <= 8'd15;
                8'd15: count <= 8'd11;
                8'd11: count <= 8'd7;
                8'd7:  count <= 8'd9;
                8'd9:  count <= 8'd4;
                8'd4:  count <= 8'd8;
                8'd8:  count <= 8'd14;
                8'd14: count <= 8'd1;
                8'd1:  count <= 8'd10;
                8'd10: count <= 8'd13;
                default: count <= 8'd13; 
            endcase
        end
    end

endmodule
