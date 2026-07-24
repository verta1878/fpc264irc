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
	GLOBAL CLASSES$_$TEXTERNALTHREAD_$__$$_DESTROY
CLASSES$_$TEXTERNALTHREAD_$__$$_DESTROY:
		push	bp
		mov	bp,sp
		sub	sp,18
		cmp	word [bp+4],0
		jg	..@j9732
		jmp	..@j9733
..@j9732:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+36]
		call	ax
..@j9733:
		push	word [bp+6]
		mov	ax,0
		push	ax
		call	CLASSES$_$TTHREAD_$__$$_DESTROY
		cmp	byte [TC_$CLASSES_$$_EXTERNALTHREADSCLEANUP],0
		je	..@j9740
		jmp	..@j9741
..@j9740:
		push	word [U_$CLASSES_$$_EXTERNALTHREADS]
		call	CLASSES$_$TTHREADLIST_$__$$_LOCKLIST$$TLIST
		mov	word [bp-18],ax
		mov	ax,word [bp-18]
		mov	word [bp-16],ax
		mov	ax,1
		push	ax
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-6]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j9748
		push	word [bp-16]
		push	word [bp+6]
		call	CLASSES$_$TLIST_$__$$_EXTRACT$POINTER$$POINTER
..@j9748:
		call	FPC_POPADDRSTACK
		push	word [U_$CLASSES_$$_EXTERNALTHREADS]
		call	CLASSES$_$TTHREADLIST_$__$$_UNLOCKLIST
		pop	ax
		test	ax,ax
		je	..@j9749
		call	FPC_RERAISE
..@j9749:
..@j9741:
		cmp	word [bp+6],0
		jne	..@j9759
		jmp	..@j9758
..@j9759:
		cmp	word [bp+4],0
		jne	..@j9757
		jmp	..@j9758
..@j9757:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+28]
		call	ax
..@j9758:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	CLASSES$_$TTHREADLIST_$__$$_UNLOCKLIST
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TLIST_$__$$_EXTRACT$POINTER$$POINTER
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	CLASSES$_$TTHREADLIST_$__$$_LOCKLIST$$TLIST
EXTERN	U_$CLASSES_$$_EXTERNALTHREADS
EXTERN	TC_$CLASSES_$$_EXTERNALTHREADSCLEANUP
EXTERN	CLASSES$_$TTHREAD_$__$$_DESTROY
