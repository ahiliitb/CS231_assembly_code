# Binary Search function
# Inputs:
# $a0: Address of the sorted array
# $a1: Array size
# $a2: Value to search
# Outputs:
# $v0: Index of the found value (-1 if not found



.data
array_size: .word 0
array: .space 100   # Adjust the size as needed
search_value: .word 0
result: .word -1    # Initialize result to -1 (not found)
# Prompt strings
array_size_prompt: .asciiz "Enter the size of the array: "
array_size_print: .asciiz "The size of the array: "
search_value_prompt: .asciiz "Enter the value to search for: "
found_message: .asciiz "Value found at index: "
not_found_message: .asciiz "Value not found"
string_to_print: .asciiz "Hello, MIPS!"   # Define a null-terminated string

.text

read_array:
    loop_read:
        beq $a1, 0, end_loop_read  # Exit the loop if the size is zero
        li $v0, 5         # System call code for reading an integer
        syscall
        sw $v0, 0($a0)          # Store the read integer in the array
        addi $a0, $a0, 4       # Move to the next element in the array
        addi $a1, $a1, -1      # Decrement the size
        j loop_read

    end_loop_read:
        jr $ra

print_array:
    loop_print:
        beq $s1, 0, end_loop_print  # Exit the loop if the size is zero
        li $v0, 1         # System call code for reading an integer
        lw $a0, 0($a1)          # Store the read integer in the array
        syscall
        addi $a1, $a1, 4       # Move to the next element in the array
        addi $s1, $s1, -1      # Decrement the size
        j loop_print

    end_loop_print:
        jr $ra
        

main:
    # Prompt for and read the array size
    li $v0, 4  #loading the command which is used to print $a0 only
    la $a0, array_size_prompt  # loading address in $a0 resister from array_size memory
    syscall   #call the command of print which will print $a0 only

    li $v0, 5  
    syscall 

    sw $v0 array_size

    lw $a1, array_size
    la $a0, array
    jal read_array


    lw $s1, array_size
    la $a1, array
    jal print_array



    li $v0, 10
    syscall


