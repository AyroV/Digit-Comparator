    load R1,11101100b
    load R2,10101100b
    load R0,0 
    xor R3,R1,R2; R3=01000000b
    jmpEQ R3=R0,dur2
    load R4,00000001b
    load R6,0
    load R7,1
    load R8,48
islem1:
    and R5,R3,R4
    load R0,0
    jmpEQ R5=R0,islem2
    jmp dur
islem2:
    addi R6,R6,R7
    ror R3,1
    jmp islem1
dur:
    addi RF,R6,R8
    halt
dur2:
    load RF,56
    halt
