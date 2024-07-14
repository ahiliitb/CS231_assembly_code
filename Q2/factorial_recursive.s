.data 

inputstring: .asciiz "Enter the number(n): "
outputstring: .asciiz "The factorial of "
outputstring1: .asciiz " is "
newline: .asciiz "\n"
recursing: .asciiz "Recursing with input = "
a1value: .asciiz "$a1 = "
v1value: .asciiz "$v1 = "

.text

computefactorial:

    addi $sp, $sp, -8  #creates two memory locations for storage
    sw $ra, 0($sp)  #store from $ra(register) into memory location $sp+0(memory)
    sw $a1, 4($sp)  #store from $ra(register) into memory location $sp+4(memory)

    beq $a1, 1, factorialDone  #base case

    sub $a1, $a1, 1
    jal computefactorial

    lw $ra, 0($sp)  #load value from memory $sp+0 into register $ra
    lw $a1, 4($sp)

    mul $v1, $v1, $a1

    addi $sp, $sp, 8
    jr $ra 

factorialDone:
    li $v1, 1
    jr $ra


main:
    li $v0, 4
    la $a0, inputstring
    syscall

    li $v0, 5
    syscall


    move $t0, $v0
    move $a1, $v0

    li $s0, 1
    jal computefactorial

    li $v0, 4
    la $a0, outputstring
    syscall

    li $v0, 1
    move $a0, $t0
    syscall

    li $v0, 4
    la $a0, outputstring1
    syscall

    li $v0, 1
    move $a0, $v1
    syscall

    li $v0, 4
    la $a0, newline
    syscall

    li $v0, 10
    syscall


