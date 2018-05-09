.data
	newline: .asciiz   "\nĄ§
.text	
	li $v0,5                # num1    
  	syscall
        add $s0,$v0,$zero
        
        li $v0,5                # num2    
  	syscall
        add $s1,$v0,$zero
        
        div $t0,$s0,$s1
        rem $t1,$s0,$s1
        
        li $v0,1
   	move $a0,$t0
   	syscall 
   	

	 		li $v0,1
   	move $a0,$t1
   	syscall 


   	la $a0,newline        
        li $v0,4
       	syscall
   	

li $v0,1
   	move $a0,$t1
   	syscall 
   
