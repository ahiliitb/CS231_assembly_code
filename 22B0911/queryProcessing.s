.data
n: .word 0
arrayn: .space 40000
q: .word 0
newline: .asciiz "\n"


.text

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
        lw $s5, 0($s1)  
        lw $s6, 0($s2)  
        sw $s5, 0($s2)  
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

binary_search:
    li $s4, 0 #start is zero initially stored in $s4
    move $s5, $s1  
    addi $s5, $s5, -1 #end is n-1 initially stored in $s5
    binary_loop:
        bgt $s4, $s5, not_found
        add $s6, $s4, $s5 #adding s4 and s5 into mid which is $s6 
        li $t1 2
        div		$s6, $t1			# $s6 / $t1
        mflo	$t2					# $t2 = floor($s6 / $t1) 
        move $s6, $t2
        sll $t0, $s6, 2       # Multiply the index by 4 (shift left by 2)
        add $t1, $a0, $t0     # Add the result to the base address
        lw $s7, 0($t1)        # Load the value at the calculated address into $s7
        beq $s7, $s3, found
        bgt $s3, $s7, greater_than_mid #if $s7<$s3
        bgt $s7, $s3, less_than_mid #$s7>$s3
        j binary_loop
        
    found:
        jr $ra #returns $s6
    greater_than_mid:
        addi $s6, $s6, 1
        move $s4, $s6 #shifing the start index
        j binary_loop
    less_than_mid:
        addi $s6, $s6, -1
        move $s5, $s6  #shifing the end index
        j binary_loop
    not_found:
        li $s6, -1
        jr $ra


query:
    addi $sp, $sp, -4
    sw $ra, 0($sp)
    loop_query:
        beq $s2, 0, end_loop_query 

        li $v0, 5        
        syscall

        move $s3, $v0 #storing searching value in $s3
        la $a0, arrayn
        lw $s1, n 
        jal binary_search   #$ra point at jal(jump and link)

        li $v0, 1
        move $a0, $s6
        syscall

        li $v0, 4
        la $a0, newline
        syscall
    
        addi $s2, $s2, -1 
        j loop_query

    end_loop_query:
        lw $ra, 0($sp)
        addi $sp, $sp, 4
        jr $ra



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

    li $v0, 5  #input q
    syscall 

    sw $v0 q

    lw $s2 q   #solving the query 
    jal query

    li $v0, 10
    syscall


