.text
.globl hist

hist:
    pushq %rbp
    movq %rsp, %rbp
    # rdi = s
    # rsi = countArr[]
    pushq %rbx # rbx will be lowest byte of s



    while_1:
        cmpb $0, (%rdi)  # while(*s != 0)
        jle end_while_1

        movzbq (%rdi), %rbx #  move value at current rdi into rbx 
        # rbx = *s
        
         # tmp rdx = countArr
        movq %rsi, %rdx 
        imulq $8, %rbx # arr of longs offset would be by 8
        addq %rbx, %rdx # go to offset
        addq $1, (%rdx) # countArr[s]++;

        

        addq $1, %rdi # s++
        jmp while_1
    end_while_1:
        popq %rbx
        leave
        ret

        