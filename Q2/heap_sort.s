.data
n: .word 0
arrayn: .space 40000
q: .word 0
newline: .asciiz "\n"



.text

read_array:
    loop_read:
        beq $a1, 0, end_loop_read 
        li $v0, 5        
        syscall
        sw $v0, 0($a0)         
        addi $a0, $a0, 4       
        addi $a1, $a1, -1     
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



upheapify:
    upheapify_loop:
        beqz $t0, upheapify_done 

        sub $t0, $t0, 1  #t1 is the index of parent
        srl $t1, $t0, 1
        add $t0, $t0, 1

         # Load the value at the child index
        sll $s0, $t0, 2      
        add $s2, $a0, $s0   
        lw $t2, 0($s2)       

        # Load the value at the parent index
        sll $s0, $t1, 2      
        add $s1, $a0, $s0    
        lw $t3, 0($s1)        

        # Compare the parent and current element
        bge $t3, $t2, upheapify_done

        # Swap the parent and child element
        lw $s5, 0($s1)   # Store parent value at the current index
        lw $s6, 0($s2)   # Store parent value at the current index
        sw $s5, 0($s2)   # Store current value at the parent index
        sw $s6, 0($s1)

        # Move up to the child
        move $t0, $t1

        # Repeat the upheapify process
        j upheapify_loop

    upheapify_done:
        jr $ra  # Return to the calling code


downheapify:
    li $t0, 0 
    downheapify_loop:

        # li $v0, 1
        # move $a0, $t1
        # syscall
        # la $a0, arrayn

        sll $t1, $t0, 1
        sll $t2, $t0, 1
        addi $t1, $t1, 1  #left child
        addi $t2, $t2, 2  #right child

        bge $t1, $a1, downheapify_done 
        bge $t2, $a1, downheapify_exception # exception case when right child not exist but left exist

        sll $s0, $t0, 2       
        add $s0, $a0, $s0  #s0 store address of parent
        lw $s3, 0($s0)  #s3 store value of parent 

        sll $s1, $t1, 2       
        add $s1, $a0, $s1 #s1 store address of left child
        lw $s4, 0($s1)  #s4 store value of left child

        sll $s2, $t2, 2       
        add $s2, $a0, $s2  #s2 store address of right child
        lw $s5, 0($s2)  #s5 store value of right child   

        # Compare the parent and current element
        bge $s4, $s5, left_bigger
        bge $s5, $s4, right_bigger

        j downheapify_loop


    left_swap:
        # Swap the parent and left element
        lw $s6, 0($s0)  
        lw $s7, 0($s1)  
        sw $s6, 0($s1)   
        sw $s7, 0($s0)

        move $t0, $t1
        j downheapify_loop

    left_bigger:
        bge $s3, $s4, downheapify_done
        bge $s4, $s3 left_swap
        j downheapify_loop

    right_swap:
        # Swap the parent and right element
        lw $s6, 0($s0)  
        lw $s7, 0($s2)  
        sw $s6, 0($s2)   
        sw $s7, 0($s0)

        move $t0, $t2
        j downheapify_loop

    right_bigger:
        bge $s3, $s5, downheapify_done
        bge $s5, $s3 right_swap
        j downheapify_loop

    downheapify_done:
        jr $ra 

    downheapify_swap:
       
        # Swap the parent and left element
        lw $s6, 0($s0)  
        lw $s7, 0($s1)  
        sw $s6, 0($s1)   
        sw $s7, 0($s0)

        move $t0, $t1
        j downheapify_loop

    downheapify_exception:
        sll $s0, $t0, 2       
        add $s0, $a0, $s0  #s0 store address of parent
        lw $s3, 0($s0)  #s3 store value of parent 

        sll $s1, $t1, 2       
        add $s1, $a0, $s1 #s1 store address of left child
        lw $s4, 0($s1)  #s4 store value of left child

        bge $s3, $s4, downheapify_done
        bge $s4, $s3 downheapify_swap
        j downheapify_loop


uploop:
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    upheapify_looping:

        beq $a3, $a2, upheapify_looping_end
        move $t0, $a3
        jal upheapify
        addi $a3, $a3, 1
        j upheapify_looping
    
    upheapify_looping_end:
        move $a3, $a2
        # addi $a3, $a3, -1
        lw $ra, 0($sp)
        addi $sp, $sp, 4
        jr $ra

downloop:
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    downheapify_looping:
        addi $a3, $a3, -1
        beqz $a3, downheapify_looping_end 
        sll $t0, $a3, 2       
        add $t0, $a0, $t0 #s1 store address of left child

        lw $s6, 0($a0)  
        lw $s7, 0($t0)  
        sw $s6, 0($t0)   
        sw $s7, 0($a0)


        move $a1, $a3
        jal downheapify
        j downheapify_looping

    downheapify_looping_end:
        lw $ra, 0($sp)
        addi $sp, $sp, 4
        jr $ra

        
heap_sort:

    li $a3, 0
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    
    jal uploop

    jal downloop

    lw $ra, 0($sp)
    addi $sp, $sp, 4
    jr $ra

main:

    li $v0, 5  #input n
    syscall 

    sw $v0 n

    lw $a1, n  #input array
    la $a0, arrayn
    jal read_array

    lw $a2, n
    la $a0, arrayn
    jal heap_sort

    lw $s1, n  
    la $a1, arrayn
    jal print_array
    

    li $v0, 10
    syscall


