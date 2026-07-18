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
	GLOBAL CLASSES$_$TTHREAD_$__$$_INITSYNCHRONIZEEVENT
CLASSES$_$TTHREAD_$__$$_INITSYNCHRONIZEEVENT:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		cmp	word [bx+20],0
		jne	..@j9965
		jmp	..@j9966
..@j9965:
		jmp	..@j9963
..@j9966:
		mov	ax,12
		push	ax
		call	fpc_getmem
		mov	bx,word [bp+4]
		mov	word [bx+20],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+20]
		push	ax
		mov	ax,12
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
		mov	bx,word [bp+4]
		mov	bx,word [bx+20]
		mov	ax,word [bp+4]
		mov	word [bx+4],ax
		call	SYSTEM_$$_RTLEVENTCREATE$$PRTLEVENT
		mov	bx,word [bp+4]
		mov	bx,word [bx+20]
		mov	word [bx+8],ax
..@j9963:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_RTLEVENTCREATE$$PRTLEVENT
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
EXTERN	fpc_getmem
