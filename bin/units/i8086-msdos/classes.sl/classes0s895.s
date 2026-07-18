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
	GLOBAL CLASSES$_$TWRITER_$__$$_WRITEBINARY$TSTREAMPROC
CLASSES$_$TWRITER_$__$$_WRITEBINARY$TSTREAMPROC:
		push	bp
		mov	bp,sp
		sub	sp,24
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	word [bp-10],ax
		mov	ax,word [bx+2]
		mov	word [bp-8],ax
		mov	ax,word VMT_$CLASSES_$$_TMEMORYSTREAM
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	word [bp-2],ax
		mov	ax,1
		push	ax
		lea	ax,[bp-22]
		push	ax
		lea	ax,[bp-16]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j22007
		push	word [bp-8]
		push	word [bp-2]
		mov	ax,word [bp-10]
		call	ax
		push	word [bp-2]
		mov	bx,word [bp-2]
		mov	bx,word [bx]
		mov	ax,word [bx+56]
		call	ax
		mov	word [bp-6],dx
		mov	word [bp-4],cx
		mov	bx,word [bp+6]
		push	word [bx+9]
		mov	bx,word [bp-2]
		mov	ax,word [bx+2]
		push	ax
		push	word [bp-4]
		push	word [bp-6]
		mov	bx,word [bp+6]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+66]
		call	ax
..@j22007:
		call	FPC_POPADDRSTACK
		push	word [bp-2]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		pop	ax
		test	ax,ax
		je	..@j22008
		call	FPC_RERAISE
..@j22008:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREE
EXTERN	FPC_POPADDRSTACK
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
EXTERN	VMT_$CLASSES_$$_TMEMORYSTREAM
