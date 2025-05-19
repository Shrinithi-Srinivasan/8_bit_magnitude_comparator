module tb_magnitude_comparator;
    reg [7:0] A, B;     
    wire A_eq_B, A_gt_B, A_lt_B;  
    magnitude_comparator uut (
        .A(A), 
        .B(B), 
        .A_eq_B(A_eq_B), 
        .A_gt_B(A_gt_B), 
        .A_lt_B(A_lt_B)
    );
    initial begin
        $dumpfile("dumpfile.vcd");
    	$dumpvars(1);
        // Test case 1: A == B
        A = 8'b01010101;
        B = 8'b01010101;
        #10;
        $display("Test Case 1: A = %b, B = %b, A_eq_B = %b, A_gt_B = %b, A_lt_B = %b", A, B, A_eq_B, A_gt_B, A_lt_B);
        // Test case 2: A > B
        A = 8'b11000000;
        B = 8'b10000000;
        #10;
        $display("Test Case 2: A = %b, B = %b, A_eq_B = %b, A_gt_B = %b, A_lt_B = %b", A, B, A_eq_B, A_gt_B, A_lt_B);
        // Test case 3: A < B
        A = 8'b00001111;
        B = 8'b11110000;
        #10;
        $display("Test Case 3: A = %b, B = %b, A_eq_B = %b, A_gt_B = %b, A_lt_B = %b", A, B, A_eq_B, A_gt_B, A_lt_B);
        // Test case 4: A > B
        A = 8'b11111111;
        B = 8'b00000000;
        #10;
        $display("Test Case 4: A = %b, B = %b, A_eq_B = %b, A_gt_B = %b, A_lt_B = %b", A, B, A_eq_B, A_gt_B, A_lt_B);
        // Test case 5: A < B
        A = 8'b00000001;
        B = 8'b11111111;
        #10;
        $display("Test Case 5: A = %b, B = %b, A_eq_B = %b, A_gt_B = %b, A_lt_B = %b", A, B, A_eq_B, A_gt_B, A_lt_B);
        $finish;
    end
endmodule
