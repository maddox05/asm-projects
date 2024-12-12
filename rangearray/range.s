.text
.globl range

range:
    pushq %rbp
    movq %rsp, %rbp
    pushq %rbx # rbx == i
    pushq %r10 # r10 == max
    pushq %r13 # r13 == min
    pushq %r14 # r14 == tmp

    movq $0 , %rbx # i = 0
    movq (%rdi), %r10 # max, min = arr[0]
    movq (%rdi), %r13

    while_1:
        cmpq %rbx, %rsi # while (i<n) 
        jle end_while_1

        cmpq %r10, (%rdi) # if max < arr[i]
            cmovg (%rdi), %r10
        cmpq (%rdi),%r13  # if min > arr[i]
            cmovg (%rdi), %r13
        
        addq $1, %rbx # i++
        addq $8, %rdi # go to next long in arr
        jmp while_1
    end_while_1:
        subq %r13, %r10
        movq %r10, %rax
        popq %r14
        popq %r13
        popq %r10
        popq %rbx
        leave
        ret


        

