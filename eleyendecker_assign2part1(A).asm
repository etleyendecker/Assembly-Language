# Name: 	Emily Leyendecker
# Class: CS2318-260 Spring 2018
# HW:	Assignment 2 Part 1(A)
# Date: 2/28/2018
#################################################################################
# The following MIPS program prompts the user to enter the following, read the 
# user input, and print the input to the output
#	Integer
#	String up to 50 characters long
#	Character
#################################################################################


.data
	string: 	.space 51
	enterInt:	.asciiz "Please enter an integer: "
	showInt:	.asciiz "You entered the integer - "
	enterStr:	.asciiz "\nPlease enter a string up to 50 characters: "
	showStr:	.asciiz "You entered the string - "
	enterChar:	.asciiz "Please enter a character: "
	showChar: 	.asciiz "\nYou entered the character - "
	
.text
.global main

main:
	#asks user to enter integer
	li $v0, 4
	la $a0, enterInt
	syscall
	
	#recieves and stores uesr input for int
	li $v0, 5
	syscall
	move $t0, $v0
	
	#shows user input for int
	li $v0, 4
	la $a0, showInt
	syscall
	li $v0, 1
	move $a0, $t0
	syscall
	
	#asks user to enter string
	li $v0, 4
	la $a0, enterStr
	syscall
	
	#recieves and stores user input for string
	li $v0, 8
	la $a0, string
	li $a1, 51
	syscall
	
	#shows user input for string
	li $v0, 4
	la $a0, showStr
	syscall
	li $v0, 4
	la $a0, string
	syscall
	
	#asks user to ender character
	li $v0, 4
	la $a0, enterChar
	syscall
	
	#recieves and stores user input for character
	li $v0, 12
	syscall
	move $t1, $v0
	
	#shows user input for character
	li $v0, 4
	la $a0, showChar
	syscall
	li $v0, 11
	move $a0, $t1
	syscall
	
	
	
	li $v0, 10
	syscall
	