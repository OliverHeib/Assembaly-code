.text
#inputting ID
li $v0, 5 #syscall number for inputting an integer
syscall
add $t0, $v0, $zero #copying the input to another register

li $t3, 26 #setting the number of times loop2 will loop when it is called
loop3:
	li $t2, 999 #setting the number of times loop2 will loop when it is called
	addi $t3 , $t3, -1 #counting down loops for loop2
	loop2:
		li $t1, 999 #setting the number of times loop1 will loop when it is called
		addi $t2 , $t2, -1 #counting down loops for loop2
		loop1:
			addi $t1 , $t1, -1 #counting down loops for loop1
			add $s0, $t0,$t0 #adding the two number
			#add $a0, $s0, $zero #putting the result of the calculation
			#li $v0, 1 #loading the syscall number for outputting an integer
			#syscall
			bgez $t1, loop1 #if the loop1 counter is not 0 then it branches to loop1 
		#end of loop1
		bgez $t2, loop2 #if the loop2 counter is not 0 then it branches to loop2 
	#end of loop2
	bgez $t3, loop3 #if the loop3 counter is not 0 then it branches to loop3 
#end of loop2
add $a0, $s0, $zero #putting the result of the calculation
li $v0, 1 #loading the syscall number for outputting an integer
syscall
