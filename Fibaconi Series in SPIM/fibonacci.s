.data
	msg:	.asciiz ", "        
	
.text
	.globl main

main:	li $t0,  12     #upper limit of i
	li $t1,  0          #initialize i=0(t1 constains i)
	li $t2,	 1          #initialize a=1(t2 contains a)
	li $t3,  1          #initialize b=1(t3 contains b)
	li $t4,  0          #initialize c(t4 contains c)
	li $v0,  1          #syscall 1(print _int)
	move $a0,  $t2      #loads a in a0
	syscall             #print a 
	li $v0, 4           #syscall 4(print_string)
	la $a0, msg         #load msg in a0
	syscall             #print msg
	li $v0,  1          #syscall 1(print _int)
	move $a0,  $t3      #load b in a0
	syscall             #print b
loop:
	beq $t1, $t0, end   #termination condition
	add $t4, $t3, $t2   #c=a+b
	li $v0, 4           #syscall 4 (print _string)
	la $a0, msg         #load msg in a0
	syscall             #print msg
	li $v0,  1          #syscall 1 (print _int)
	move $a0, $t4       #load c in a0
	syscall             #print c
	addi $t2, $t3, 0    #a=b
	addi $t3, $t4, 0    #b=c
	addi $t1, $t1, 1    #i=i+1
	j loop              
end:
	li $v0, 10
	syscall             #exit code