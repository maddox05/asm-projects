.text
.globl bubblesort

bubblesort:
    pushq %rbp
    movq %rsp, %rbp
    pushq %rbx # rbx = i
    pushq %r10 # r10 = j
    movq $0, %rbx

    subq $1, %rsi

    while_1:
        cmpq %rbx, %rsi # while(i<n-1) TODO
        jle end_while_1
        movq $0, %r10
        while_2:
            cmpq %r10, %rsi # while (j<n-1) 
            jle end_while_2
            
            # if a[j] > a[j+1] then swap
            #rdx = a[j]
            # rcx = a[j+1]
            
            imulq $8, %r10, %rdx # 8*j store it in rdx
            addq %rdi, %rdx # rdx = a[j]
            movq %rdx, %rcx
            addq $8, %rcx   # rcx =a[j+1]


            # pre loading
            movq (%rcx), %r9  # r9 = *(rcx)
            
            cmpq %r9, (%rdx) # if a[j] > a[j+1]
            jg swap
            jle after_swap
            swap:
                movq (%rdx), %r8 # tmp = a[j]
                movq %r9, (%rdx) # a[j]=a[j+1]
                movq %r8, (%rcx) # a[j+1] = tmp
            after_swap:
                addq $1, %r10
                jmp while_2
        end_while_2:
            addq $1, %rbx
            jmp while_1
    end_while_1:
        popq %r10
        popq %rbx
        leave
        ret


