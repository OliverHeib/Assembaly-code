.text
addi $s0, $zero, 2 #initiating division number

#inputting ID
li $v0, 5 #syscall number for inputting an integer
syscall
add $s1, $v0, $zero #copying the input to another register

#dividing by 2
div $s1, $s0 #dividing input by 2

#outputting ID
mflo $a0 # moving the quotient to anothere register
li $v0, 1 #syscall number for outputting an integer
syscall
