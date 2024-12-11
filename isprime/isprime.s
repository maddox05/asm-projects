.text 
.globl isprime

isprime:
    pushq %rbp
    movq %rsp, %rbp
    pushq %rbx

    movq $2, %rbx

    while_1:
        cmpq %rbx, %rdi # n > i 
        jle prime
        movq $0, %rdx  # if (n%i==0)
        movq %rdi, %rax # rdx is remainder

        divq %rbx

        cmpq $0, %rdx
            jle not_prime
        addq $1, %rbx
        jmp while_1

    prime:
        movq $1, %rax
        jmp endd
    not_prime:
        movq $0, %rax
        jmp endd
    endd:
        popq %rbx
        leave
        ret