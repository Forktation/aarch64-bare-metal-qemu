.global _Reset
_Reset:
    mov x0, 0x48
    ldr x1, =0x09000000
    str x0, [x1]
    b .
