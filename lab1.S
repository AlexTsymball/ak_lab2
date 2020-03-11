.global lab1
.syntax unified
#define A #3
#define B #1
lab1:
    push {lr}
    // calculate 
//c
    mov r0, #1
//a
    mov r1, #1
//b
    mov r2, #2
//1
    mov r3, B
//3
    mov r4, A
    bl test_var
    pop {pc}
test_var:
    push { r0, r1, r2, r3, r4, lr }
    sub r1, r2
    mul r1, r4
    mov r4, #2
l:
    mul r3, r4
    sub r0, #1
    cmp r0, 0
    bne l
    add r2, r1, r3
    pop { r0, r1, r2, r3, r4, pc }


