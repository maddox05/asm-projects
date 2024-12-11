.data
    .comm n,8

.text
    formatN: 
        .string "N? "
    formatScanf: 
        .string "%ld"
    formatStar:
        .string "*"
    formatNewline:
        .string "\n"

.globl triangle

triangle:
    pushq %rbp
    movq %rsp, %rbp
    pushq %rbx # rbx = i
    pushq %r10 # r10 = j


    movq $formatN, %rdi
    movq $0, %rsi
    movq $0, %rax
    call printf # printf("N?");
    
    
    movq $formatScanf, %rdi
    movq $n, %rsi
    movq $0, %rax
    call scanf # scanf("%ld", &n); n==user input

    movq n, %rbx # i=n

    while_1: # while(i!=0)
        cmpq $0, %rbx # if(i-0==0)
        je end_while_1
        movq $0, %r10
        while_2: # while(j!=i)
            cmpq %r10, %rbx # if(i-j==0)
            je end_while_2
            movq $formatStar, %rdi
            movq $0, %rsi
            movq $0, %rax
            call printf # printf("*");
            addq $1, %r10 # j--
            jmp while_2
        end_while_2:
            subq $1, %rbx # i--
            movq $formatNewline, %rdi
            movq $0, %rsi
            movq $0, %rax
            call printf # printf("\n");
            jmp while_1
    end_while_1:
        popq %r10
        popq %rbx
        leave
        ret
        
