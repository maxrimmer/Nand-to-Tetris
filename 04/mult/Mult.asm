// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

@sum
D = 0
M = D
@i
D = 1
M = D

(LOOP)
@R1
D = M
@i
D = D - M
@NEAREND
D ; JLT

@i
D = M
D = D + 1
M = D

@sum
D = M
@R0
D = D + M
@sum
M = D
@LOOP
0 ; JMP

(NEAREND)
@sum
D = M
@R2
M = D
@END

(END)
@END
0 ; JMP
