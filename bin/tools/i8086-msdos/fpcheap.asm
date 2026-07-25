; fpcheap.asm — provides heap/stack symbols for FPC DOS programs
BITS 16
CPU 8086

SECTION heap class=heap align=16
GLOBAL ___heap
___heap:

SECTION stack stack class=stack align=16
GLOBAL ___stacktop
  resb 4096
___stacktop:

SECTION .data class=data
GLOBAL __fpc_stackplusmaxheap_in_para
__fpc_stackplusmaxheap_in_para:
  dw 4096  ; (stack + heap) / 16 — placeholder
