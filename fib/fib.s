.text
.globl fib

fib:
    pushq %rbp
    movq %rsp, %rbp
    pushq %rbx

    cmpq $0, %rdi  # if (n==0 ||n==1)
    cmove %rdi, %rax
    je end_fib

    cmpq $1, %rdi
    cmove %rdi, %rax
    je end_fib


    

    pushq %rdi # save rdi
    subq $1, %rdi
    call fib
    popq %rdi
    movq %rax, %rbx

    pushq %rdi
    subq $2, %rdi
    call fib
    popq %rdi
    addq %rbx, %rax
   # sum += fib(n-2)

end_fib:
    popq %rbx
    leave
    ret


