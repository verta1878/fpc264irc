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
	GLOBAL CLASSES$_$TWRITER_$__$$_WRITECOMPONENT$TCOMPONENT
CLASSES$_$TWRITER_$__$$_WRITECOMPONENT$TCOMPONENT:
		push	bp
		mov	bp,sp
		sub	sp,34
		mov	bx,word [bp+6]
		mov	ax,word [bx+2]
		mov	word [bp-4],ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+6]
		mov	word [bp-2],ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+12]
		mov	word [bp-6],ax
		mov	ax,1
		push	ax
		lea	ax,[bp-18]
		push	ax
		lea	ax,[bp-12]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j22149
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	ax,word [si+22]
		or	ax,4
		mov	word [bx+22],ax
		mov	ax,1
		push	ax
		lea	ax,[bp-32]
		push	ax
		lea	ax,[bp-26]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j22154
		push	word [bp+6]
		push	word [bp+4]
		call	CLASSES$_$TWRITER_$__$$_DETERMINEANCESTOR$TCOMPONENT
		push	word [bp+6]
		push	word [bp+4]
		call	CLASSES$_$TWRITER_$__$$_DOFINDANCESTOR$TCOMPONENT
		push	word [bp+4]
		push	word [bp+6]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+96]
		call	ax
		mov	bx,word [bp+6]
		push	word [bx+9]
		mov	bx,word [bp+6]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+58]
		call	ax
..@j22154:
		call	FPC_POPADDRSTACK
		mov	bx,word [bp+4]
		mov	si,word [bp+4]
		mov	ax,word [si+22]
		and	ax,-5
		mov	word [bx+22],ax
		pop	ax
		test	ax,ax
		je	..@j22155
		call	FPC_RERAISE
..@j22155:
..@j22149:
		call	FPC_POPADDRSTACK
		mov	bx,word [bp+6]
		mov	ax,word [bp-2]
		mov	word [bx+6],ax
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		mov	word [bx+2],ax
		mov	bx,word [bp+6]
		mov	ax,word [bp-6]
		mov	word [bx+12],ax
		pop	ax
		test	ax,ax
		je	..@j22150
		call	FPC_RERAISE
..@j22150:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TWRITER_$__$$_DOFINDANCESTOR$TCOMPONENT
EXTERN	CLASSES$_$TWRITER_$__$$_DETERMINEANCESTOR$TCOMPONENT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
