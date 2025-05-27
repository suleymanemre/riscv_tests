start_prog:
    li x1, 0x800
    slli x1, x1, 20 # x1 address setting
    addi x2, x1, 0
    addi x5, x0, 0
    addi x3, x0, 0
    addi x4, x0, 0
    addi x12, x0, 0
    addi x14, x0, 22 # start point of decrease
    addi x13, x0, 10 # define the number of sort element
    addi x17, x13, -1

memory_store_loop:
    sw x14, 0(x1)

body:
    addi x14, x14, -1    
    addi x1, x1, 4
    addi x12, x12, 1
    bne x13, x12, memory_store_loop
    slli x11, x13, 2
    sub x1, x1, x11 #return the first value of x1

ordering:
    beq x3, x17, order_control_reset 
    addi x3, x3, 1
    lw x20, 0(x1)
    lw x21, 4(x1)
    bge x20, x21, switch
    sw x20, 0(x1)
    beq x3, x13, eol_1
    sw x21, 4(x1)

eol_1:
    addi x1, x1, 4
    j ordering

switch: #switching the values for ordering
    add x22, x0, x20
    add x20, x0, x21
    add x21, x0, x22
    sw x20, 0(x1)
    beq x3, x13, eol_2
    sw x21, 4(x1)

eol_2:
    addi x1, x1, 4
    j ordering

order_control_reset:
    addi x4, x0, -1
    addi x1, x2, 0 #return the first value of x1
    addi x5, x2, -4
    addi x3, x0, 0
order_control:
    addi x5, x5, 4
    addi x4, x4, 1
    beq x4, x17, pg_end # kontrolün tamam? ba?ar?l? ise 
    lw x20, 0(x5)
    lw x21, 4(x5)
    blt x21, x20, ordering # if order wrong try again
    j order_control

pg_end:
    lw x20, 0(x2)
    lw x20, 4(x2)
    lw x20, 8(x2)
    lw x20, 12(x2)
    lw x20, 16(x2)
    lw x20, 20(x2)
    lw x20, 24(x2)
    lw x20, 28(x2)
    lw x20, 32(x2)
    lw x20, 36(x2)
    addi x7, x0, 1
