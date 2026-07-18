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
	GLOBAL CLASSES$_$TTHREAD_$__$$_QUEUE$TTHREAD$TTHREADMETHOD
CLASSES$_$TTHREAD_$__$$_QUEUE$TTHREAD$TTHREADMETHOD:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	word [bp-6],ax
		mov	ax,word [bx+2]
		mov	word [bp-4],ax
		cmp	word [bp+6],0
		je	..@j10151
		jmp	..@j10152
..@j10151:
		call	CLASSES$_$TTHREAD_$__$$_GETCURRENTTHREAD$$TTHREAD
		mov	word [bp+6],ax
..@j10152:
		mov	ax,12
		push	ax
		call	fpc_getmem
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		push	ax
		mov	ax,12
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
		mov	bx,word [bp-2]
		mov	ax,word [bp+6]
		mov	word [bx+4],ax
		mov	bx,word [bp-2]
		mov	ax,word [bp-6]
		mov	word [bx],ax
		mov	ax,word [bp-4]
		mov	word [bx+2],ax
		push	word [bp-2]
		call	CLASSES_$$_THREADQUEUEAPPEND$TThread.PTHREADQUEUEENTRY
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES_$$_THREADQUEUEAPPEND$TThread.PTHREADQUEUEENTRY
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
EXTERN	fpc_getmem
EXTERN	CLASSES$_$TTHREAD_$__$$_GETCURRENTTHREAD$$TTHREAD
