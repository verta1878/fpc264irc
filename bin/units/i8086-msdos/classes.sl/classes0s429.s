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
	GLOBAL CLASSES$_$TTHREAD_$__$$_DESTROY
CLASSES$_$TTHREAD_$__$$_DESTROY:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],0
		jg	..@j9869
		jmp	..@j9870
..@j9869:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+36]
		call	ax
..@j9870:
		mov	bx,word [bp+6]
		cmp	byte [bx+19],0
		je	..@j9873
		jmp	..@j9874
..@j9873:
		push	word [bp+6]
		call	CLASSES$_$TTHREAD_$__$$_SYSDESTROY
		mov	bx,word [bp+6]
		cmp	word [bx+2],0
		jne	..@j9877
		jmp	..@j9878
..@j9877:
		mov	bx,word [bp+6]
		push	word [bx+2]
		call	SYSTEM_$$_CLOSETHREAD$WORD$$LONGWORD
..@j9878:
..@j9874:
		push	word [bp+6]
		call	CLASSES$_$TTHREAD_$__$$_REMOVEQUEUEDEVENTS$TTHREAD
		push	word [bp+6]
		call	CLASSES$_$TTHREAD_$__$$_DONESYNCHRONIZEEVENT
		push	word [bp+6]
		mov	ax,0
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
		cmp	word [bp+6],0
		jne	..@j9891
		jmp	..@j9890
..@j9891:
		cmp	word [bp+4],0
		jne	..@j9889
		jmp	..@j9890
..@j9889:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+28]
		call	ax
..@j9890:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM$_$TOBJECT_$__$$_DESTROY
EXTERN	CLASSES$_$TTHREAD_$__$$_DONESYNCHRONIZEEVENT
EXTERN	CLASSES$_$TTHREAD_$__$$_REMOVEQUEUEDEVENTS$TTHREAD
EXTERN	SYSTEM_$$_CLOSETHREAD$WORD$$LONGWORD
EXTERN	CLASSES$_$TTHREAD_$__$$_SYSDESTROY
