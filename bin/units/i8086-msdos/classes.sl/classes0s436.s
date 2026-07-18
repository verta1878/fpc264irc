BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TTHREAD_$__$$_DONESYNCHRONIZEEVENT
CLASSES$_$TTHREAD_$__$$_DONESYNCHRONIZEEVENT:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		cmp	word [bx+20],0
		je	..@j9985
		jmp	..@j9986
..@j9985:
		jmp	..@j9983
..@j9986:
		mov	bx,word [bp+4]
		mov	bx,word [bx+20]
		push	word [bx+8]
		call	SYSTEM_$$_RTLEVENTDESTROY$PRTLEVENT
		mov	bx,word [bp+4]
		push	word [bx+20]
		call	fpc_freemem
		mov	bx,word [bp+4]
		mov	word [bx+20],0
..@j9983:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_freemem
EXTERN	SYSTEM_$$_RTLEVENTDESTROY$PRTLEVENT
