.text
.global mystrlen

mystrlen:
    pushq %rbp
    movq %rsp, %rbp
    movq $0, %rax

    while_1:
        cmpb $0, (%rdi) # while(*(rdi)!=0)
        je end_while_1
        addq $1, %rax # sum++
        addq $1, %rdi # p++ (go to next char)
        jmp while_1

    end_while_1:
        leave
        ret