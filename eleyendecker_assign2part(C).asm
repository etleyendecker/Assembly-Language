# Name: 	Emily Leyendecker
# Class: CS2318-260 Spring 2018
# HW:	Assignment 2 Part 1(C)
# Date: 02/05/2018
##########################################################################
# The following MIPS program initializes an array with three integers and 
# reverses the position
#########################################################################


			.data
			
intArr:			.word 1001, 2002, 3003
showArr:		.asciiz "Elements in array are: "
addComma:         	.asciiz ", "
swapArr:                .asciiz "\nArray after swapping: "
		
                	.text
			.globl main
main:
			li $v0, 4
			la $a0, showArr 
			syscall
			
			la $t0, intArr	# load array into $t0
			
			li $v0, 1
			lw $a0, 0($t0)	#prints 1st in array
			syscall
			li $v0, 4
			la $a0, addComma 
			syscall
			
			li $v0, 1
			lw $a0, 4($t0)	#prints 2nd in array
			syscall
			li $v0, 4
			la $a0, addComma  
			syscall
			
			li $v0, 1
			lw $a0, 8($t0)	#prints 3rd in array
			syscall
			li $v0, 4
			la $a0, addComma 
			syscall
			
			la $t0, intArr
			lw $t1, 0($t0)
			lw $t2, 4($t0)
			lw $t3, 8($t0)
			
			sw $t2, 0($t0)	# swaps 1st with 2nd
			sw $t1, 4($t0)	# swaps 2nd with 1st
			
			sw $t3, 0($t0)	# swaps 1st with 3rd
			sw $t1, 8($t0) 	# swaps 3rd with 1st
			
			sw $t2, 4($t0)	#swaps 2nd with 3rd
			
			li $v0, 4
			la $a0, swapArr  
			syscall
			
			li $v0, 1
			lw $a0, 0($t0)	#prints 1st swap
			syscall
			li $v0, 4
			la $a0, addComma
			syscall
			
			li $v0, 1
			lw $a0, 4($t0)	#prints 2nd swap
			syscall
			li $v0, 4
			la $a0, addComma 
			syscall
			
			li $v0, 1
			lw $a0, 8($t0)	#prints 3rd swap
			syscall
			li $v0, 4
			la $a0, addComma
			syscall 
			
			
			
			li $v0, 10	      # exit program
			syscall 

			
