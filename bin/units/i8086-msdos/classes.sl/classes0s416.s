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
	GLOBAL CLASSES_$$_THREADPROC$POINTER$$SMALLINT
CLASSES_$$_THREADPROC$POINTER$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,32
		mov	ax,1
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-10]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j9766
		mov	bx,word [bp+4]
		cmp	byte [bx+4],0
		je	..@j9770
		jmp	..@j9771
..@j9770:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j9774
		push	word [U_$CLASSES_$$_CURRENTTHREADVAR+2]
		push	word [U_$CLASSES_$$_CURRENTTHREADVAR]
		call	ax
		mov	bx,ax
		jmp	..@j9775
..@j9774:
		mov	bx,word U_$CLASSES_$$_CURRENTTHREADVAR+2
..@j9775:
		mov	ax,word [bp+4]
		mov	word [bx],ax
		push	word [bp+4]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+52]
		call	ax
..@j9771:
..@j9766:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j9768
		mov	ax,1
		push	ax
		lea	ax,[bp-30]
		push	ax
		lea	ax,[bp-24]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j9778
		call	SYSTEM_$$_ACQUIREEXCEPTIONOBJECT$$POINTER
		mov	bx,word [bp+4]
		mov	word [bx+17],ax
..@j9778:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j9781
		call	FPC_RAISE_NESTED
..@j9781:
		call	FPC_DONEEXCEPTION
		jmp	..@j9768
..@j9768:
		mov	bx,word [bp+4]
		mov	al,byte [bx+5]
		mov	byte [bp-3],al
		mov	bx,word [bp+4]
		mov	ax,word [bx+11]
		mov	word [bp-2],ax
		mov	bx,word [bp+4]
		mov	byte [bx+6],1
		push	word [bp+4]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+50]
		call	ax
		cmp	byte [bp-3],0
		jne	..@j9790
		jmp	..@j9791
..@j9790:
		push	word [bp+4]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
..@j9791:
		mov	ax,word [bp-2]
		cwd
		push	dx
		push	ax
		call	SYSTEM_$$_ENDTHREAD$LONGWORD
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_ENDTHREAD$LONGWORD
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREE
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	SYSTEM_$$_ACQUIREEXCEPTIONOBJECT$$POINTER
EXTERN	FPC_POPADDRSTACK
EXTERN	U_$CLASSES_$$_CURRENTTHREADVAR
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
