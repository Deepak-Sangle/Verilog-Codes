.data
arrayA:	.space 60
input:	.asciiz "Enter size of array: "
arr:	.asciiz "Enter array values one at a time : \n"
error:	.asciiz "Error: n should be positive \n"
ending:	.asciiz "The required result is: \n"


	.text
	.globl main

main:	li $v0, 4		#syscall 4 input msg
	la $a0, input
	syscall
	li $v0, 5		#syscall 5 read_int
	syscall
	add $t0, $v0, $0	# $t0 contains n

	slti $t1, $t0,1		# error check
	beq $t1, $0, go
	li $v0, 4
	la $a0, error
	syscall
	jr $ra

go:	li $v0, 4		# syscall 4 array msg
	la $a0, arr
	syscall
	
	la $t1, arrayA		# t1 contains address of arrayA
	xor $t2, $t2, $t2	# $t2 contains i
	li $v0, 6		# syscall 6 read_float

loop:	sll $t3, $t2, 2		# i*4
	add $t3, $t1, $t3	# A[i] = A + i*4
	syscall			#read the input float
	swc1 $f0, 0($t3)	#put the value in A[i]
	addi $t2, $t2, 1	#i=i+1
	beq  $t2, $t0, cont	#terminate if i=n
	j loop 

cont:   xor $t2, $t2, $t2	# i = 0
	mtc1 $t2, $f12		# sum = 0

loop2:	sll $t3, $t2, 2
	add $t3, $t1, $t3
	lwc1 $f0, 0( $t3 )
	andi $t3, $t2, 1	# i&1
	beq $t3, $0, even	#if i is even, add else subtract
	sub.s $f12, $f12, $f0	# (-1)^odd
	j Check

even:	add.s $f12, $f12, $f0	# (-1)^even

Check:	addi $t2, $t2, 1	#checks the termination condition
	beq $t2, $t0, end
	j loop2

end:	li $v0, 4		# End message
	la $a0, ending
	syscall

	li $v0, 2		# print_float
	syscall

	xor $v0, $v0, $v0
	jr $ra