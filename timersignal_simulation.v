`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// This is a test-bench template to test your timersignal module
// Make sure to rename the inputs, outputs, and module name to match your designed Verilog source file
// NO need to insert any stimulus (testing vectors) 
// the input is given as a clock of 50% duty cycle 
//////////////////////////////////////////////////////////////////////////////////

module timersignal_simulation;

// Inputs
     reg tsin;
     reg reset;
     
// Outputs
     wire tsout;

// Instantiate the Unit Under Test (UUT)
     timersignal uut (   
                    .tsin(tsin), 
                    .reset(reset),
                    .tsout(tsout)
                    );             
initial begin   
         tsin  = 1;  // Initialize Input
         reset = 1;  // Initialize Input
   
         #10;     // Wait 10 ns for global reset to finish
         reset  = 0;
         
         // Add stimulus here
            forever #25 tsin = ~tsin;   // clock input of 50ns period for testing purposes 
end               
    endmodule
