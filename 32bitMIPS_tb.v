module test_mips32();
  reg clk1,clk2;
  
  mips_32 MIPS (clk1,clk2);
  initial begin
    clk1=0;clk2=0;
    repeat(20)
      begin
        #5 clk1=1; #5 clk1=0;
        #5 clk2=1; #5 clk2=0;
      end
  end
  
  initial begin
    for(int k=0;k<31;k++)
      MIPS.Reg[k]=k;
    MIPS.Mem[0]=32'h28000000;// ADDI R0,R0,0
    MIPS.Mem[1]=32'h28010005;// ADDI R1,R0,10
    MIPS.Mem[2]=32'h28020005;// ADDI R2,R0,05
    MIPS.Mem[3]=32'h28030019;// ADDI R3,R0,25
    MIPS.Mem[4]=32'h00222000;// ADD R4,R1,R2
    MIPS.Mem[5]=32'h00A10822;// SUB R5,R1,R2
    MIPS.Mem[6]=32'hfc000000;// HLT
    
    
    MIPS.HALT=0;
    MIPS.pc=0;
    MIPS.TAKEN_BRANCH=0;
    
    #280;
    for (int k=0; k<6; k++)begin
      $display ("R[%1d]=%d",k,MIPS.Reg[k]);
    end
  end
endmodule
