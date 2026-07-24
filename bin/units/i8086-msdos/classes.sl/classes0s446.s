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
	GLOBAL CLASSES$_$TTHREAD_$__$$_REMOVEQUEUEDEVENTS$TTHREADMETHOD
CLASSES$_$TTHREAD_$__$$_REMOVEQUEUEDEVENTS$TTHREADMETHOD:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	word [bp-4],ax
		mov	ax,word [bx+2]
		mov	word [bp-2],ax
		mov	ax,0
		push	ax
		lea	ax,[bp-4]
		push	ax
		call	CLASSES$_$TTHREAD_$__$$_REMOVEQUEUEDEVENTS$TTHREAD$TTHREADMETHOD
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CLASSES$_$TTHREAD_$__$$_REMOVEQUEUEDEVENTS$TTHREAD$TTHREADMETHOD
