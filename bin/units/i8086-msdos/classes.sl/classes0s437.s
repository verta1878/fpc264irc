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
	GLOBAL CLASSES$_$TTHREAD_$__$$_SYNCHRONIZE$TTHREAD$TTHREADMETHOD
CLASSES$_$TTHREAD_$__$$_SYNCHRONIZE$TTHREAD$TTHREADMETHOD:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	word [bp-4],ax
		mov	ax,word [bx+2]
		mov	word [bp-2],ax
		cmp	word [bp+6],0
		je	..@j9995
		jmp	..@j9996
..@j9995:
		call	CLASSES$_$TTHREAD_$__$$_GETCURRENTTHREAD$$TTHREAD
		mov	word [bp+6],ax
..@j9996:
		push	word [bp+6]
		call	CLASSES$_$TTHREAD_$__$$_INITSYNCHRONIZEEVENT
		mov	bx,word [bp+6]
		mov	bx,word [bx+20]
		mov	word [bx+6],0
		mov	bx,word [bp+6]
		mov	bx,word [bx+20]
		mov	ax,word [bp-4]
		mov	word [bx],ax
		mov	ax,word [bp-2]
		mov	word [bx+2],ax
		mov	bx,word [bp+6]
		push	word [bx+20]
		call	CLASSES_$$_THREADQUEUEAPPEND$TThread.PTHREADQUEUEENTRY
		mov	bx,word [bp+6]
		mov	bx,word [bx+20]
		mov	ax,0
		mov	dx,0
		mov	word [bx],dx
		mov	word [bx+2],ax
		mov	bx,word [bp+6]
		mov	bx,word [bx+20]
		mov	word [bx+10],0
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	CLASSES_$$_THREADQUEUEAPPEND$TThread.PTHREADQUEUEENTRY
EXTERN	CLASSES$_$TTHREAD_$__$$_INITSYNCHRONIZEEVENT
EXTERN	CLASSES$_$TTHREAD_$__$$_GETCURRENTTHREAD$$TTHREAD
