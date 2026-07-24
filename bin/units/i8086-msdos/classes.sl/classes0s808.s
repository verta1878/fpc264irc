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
	GLOBAL CLASSES$_$TREADER_$__$$_DEFINEPROPERTY$ANSISTRING$TREADERPROC$TWRITERPROC$BOOLEAN
CLASSES$_$TREADER_$__$$_DEFINEPROPERTY$ANSISTRING$TREADERPROC$TWRITERPROC$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,26
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	word [bp-4],ax
		mov	ax,word [bx+2]
		mov	word [bp-2],ax
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		mov	word [bp-8],ax
		mov	ax,word [bx+2]
		mov	word [bp-6],ax
		mov	word [bp-26],0
		mov	word [bp-24],0
		mov	ax,1
		push	ax
		lea	ax,[bp-20]
		push	ax
		lea	ax,[bp-14]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j18520
		cmp	word [bp-4],0
		jne	..@j18524
		jmp	..@j18523
..@j18524:
		lea	ax,[bp-24]
		push	ax
		push	word [bp+10]
		call	SYSUTILS_$$_UPPERCASE$ANSISTRING$$ANSISTRING
		push	word [bp-24]
		lea	ax,[bp-26]
		push	ax
		mov	bx,word [bp+12]
		push	word [bx+55]
		call	SYSUTILS_$$_UPPERCASE$ANSISTRING$$ANSISTRING
		push	word [bp-26]
		call	fpc_ansistr_compare_equal
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,0
		jne	..@j18523
		cmp	cx,0
		jne	..@j18523
		jmp	..@j18522
..@j18522:
		push	word [bp-2]
		push	word [bp+12]
		mov	ax,word [bp-4]
		call	ax
		mov	bx,word [bp+12]
		lea	ax,[bx+55]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
..@j18523:
..@j18520:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-26]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-24]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j18521
		call	FPC_RERAISE
..@j18521:
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_setlength
EXTERN	fpc_ansistr_compare_equal
EXTERN	SYSUTILS_$$_UPPERCASE$ANSISTRING$$ANSISTRING
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
