.data
array_prompt: .asciiz "Enter the size of the array: "
element_prompt: .asciiz "Enter element %d: "
result_prompt: .asciiz "Array elements: "

.text
.globl main

# Function to read an integer from input
# Output:
#   $v0: The read integer
read_int:
    li $v0, 5       # System call code for reading an integer
    syscall
    jr $ra          # Return to the calling code

# Function to print an integer
# Input:
#   $a0: The integer to print
print_int:
    li $v0, 1       # System call code for printing an integer
    syscall
    jr $ra          # Return to the calling code

main:
    # Prompt the user to enter the size of the array
    li $v0, 4
    la $a0, array_prompt
    syscall

    # Read the size of the array from the user
    jal read_int
    move $s0, $v0   # Store the size in $s0

    # Allocate memory for the array
    sll $s1, $s0, 2 # Calculate the size in bytes (4 bytes per integer)
    li $v0, 9       # System call code for memory allocation
    move $a0, $s1   # Size to allocate
    syscall
    move $s2, $v0   # Store the address of the allocated memory in $s2

    # Prompt the user to enter elements for the array and read them
    li $t0, 0       # Initialize loop counter
input_loop:
    beq $t0, $s0, end_input_loop  # If loop counter equals the size, exit
    li $v0, 4
    la $a0, element_prompt
    move $a1, $t0   # Pass the current element number
    syscall

    jal read_int     # Call read_int to read an element
    sw $v0, ($s2)    # Store the read element in the array
    addi $s2, $s2, 4 # Move to the next element in the array
    addi $t0, $t0, 1 # Increment the loop counter
    j input_loop

end_input_loop:
    # Print the array elements
    li $v0, 4
    la $a0, result_prompt
    syscall

    li $t0, 0       # Reset loop counter for printing
print_loop:
    beq $t0, $s0, end_print_loop  # If loop counter equals the size, exit

    lw $t1, ($s2)   # Load an element from the array
    jal print_int   # Call print_int to print the element
    addi $s2, $s2, 4 # Move to the next element in the array
    addi $t0, $t0, 1 # Increment the loop counter

    # Print a space between elements
    li $v0, 4
    la $a0, " "      # Load the address of the space string
    syscall

    # Repeat the print loop
    j print_loop

end_print_loop:
    # Print a newline
    li $v0, 4
    la $a0, "\n"     # Load the address of the newline string
    syscall

    # Exit the program
    li $v0, 10       # System call code for program exit
    syscall
