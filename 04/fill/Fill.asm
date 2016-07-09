// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, the
// program clears the screen, i.e. writes "white" in every pixel.

// Put your code here.

@24576
D = A
@fullscreen
M = D



(START)

@SCREEN
D = A
@i
M = D

@KBD
D = M
@FILL
D ; JGT

@UNFILL
0 ; JMP


(FILL)

// Check if full
@fullscreen
D=M
@i
D = D - M
@START
D ; JEQ

// Fill

D = -1
@i
A = M
M = D

D = 1
@i
D = D + M
@i
M = D

@FILL
0 ; JMP

(UNFILL)
// Check if full
@fullscreen
D=M
@i
D = D - M
@START
D ; JEQ

// UnFill

D = 0
@i
A = M
M = D

D = 1
@i
D = D + M
@i
M = D

@UNFILL
0 ; JMP
