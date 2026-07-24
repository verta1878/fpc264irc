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
	GLOBAL CLASSES$_$TWRITER_$__$$_DEFINEPROPERTY$ANSISTRING$TREADERPROC$TWRITERPROC$BOOLEAN
CLASSES$_$TWRITER_$__$$_DEFINEPROPERTY$ANSISTRING$TREADERPROC$TWRITERPROC$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,24
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
		jne	..@j21931
		cmp	byte [bp+4],0
		jne	..@j21935
		jmp	..@j21934
..@j21935:
		cmp	word [bp-8],0
		jne	..@j21933
		jmp	..@j21934
..@j21933:
		mov	bx,word [bp+12]
		push	word [bx+9]
		lea	ax,[bp-24]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-24]
		push	ax
		mov	bx,word [bp+12]
		push	word [bx+14]
		push	word [bp+10]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		push	word [bp-24]
		mov	bx,word [bp+12]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+60]
		call	ax
		push	word [bp-6]
		push	word [bp+12]
		mov	ax,word [bp-8]
		call	ax
		mov	bx,word [bp+12]
		push	word [bx+9]
		mov	bx,word [bp+12]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+62]
		call	ax
..@j21934:
..@j21931:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-24]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j21932
		call	FPC_RERAISE
..@j21932:
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	FPC_RERAISE
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_concat
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
