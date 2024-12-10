.text
.globl maxarray

maxarray:
    pushq %rbp
    movq %rsp, %rbp
    movq $0 , %rax

    pushq %r10 # r10 = i
    pushq %rbx # rbx = tmp

    movq $0 , %r10

    while_1:
        cmpq %r10, %rsi # while(n-i!=0)
        jle end_while_1

        # arr++;
        movq %r10,%rbx
        imulq $8, %rbx
        addq %rdi, %rbx # rbx = current offset from arr rdi


        cmpq %rax, (%rbx) # if *rbx >rax
            cmovg (%rbx), %rax # max = rdi
        addq $1, %r10 # i++
        jmp while_1
    
    end_while_1:
        popq %rbx
        popq %r10
        leave
        ret
