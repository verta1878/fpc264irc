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
	GLOBAL CLASSES$_$TREADER_$_READPROPERTY$TPERSISTENT_$$_HANDLEMISSINGPROPERTY$BOOLEAN$$BOOLEAN
CLASSES$_$TREADER_$_READPROPERTY$TPERSISTENT_$$_HANDLEMISSINGPROPERTY$BOOLEAN$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	byte [bp-1],1
		mov	bx,word [bp+6]
		mov	bx,word [bx+6]
		cmp	word [bx+43],0
		jne	..@j20008
		jmp	..@j20009
..@j20008:
		mov	bx,word [bp+6]
		lea	ax,[bx-18]
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx+6]
		push	word [bx+55]
		call	fpc_ansistr_assign
		mov	bx,word [bp+6]
		mov	byte [bx-16],0
		mov	bx,word [bp+6]
		mov	byte [bx-15],0
		mov	bx,word [bp+6]
		mov	bx,word [bx+6]
		push	word [bx+45]
		mov	bx,word [bp+6]
		push	word [bx+6]
		mov	bx,word [bp+6]
		push	word [bx-4]
		mov	bx,word [bp+6]
		mov	bx,word [bx+6]
		lea	ax,[bx+55]
		push	ax
		mov	al,byte [bp+4]
		mov	ah,0
		push	ax
		mov	bx,word [bp+6]
		lea	ax,[bx-16]
		push	ax
		mov	bx,word [bp+6]
		lea	ax,[bx-15]
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx+6]
		mov	ax,word [bx+43]
		call	ax
		mov	bx,word [bp+6]
		cmp	byte [bx-16],0
		jne	..@j20035
		jmp	..@j20033
..@j20035:
		mov	bx,word [bp+6]
		cmp	byte [bx-15],0
		je	..@j20034
		jmp	..@j20033
..@j20034:
		mov	bx,word [bp+6]
		push	word [bx-18]
		mov	bx,word [bp+6]
		mov	bx,word [bx+6]
		push	word [bx+55]
		call	fpc_ansistr_compare_equal
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,0
		jne	..@j20032
		cmp	cx,0
		jne	..@j20032
		jmp	..@j20033
..@j20032:
		mov	bx,word [bp+6]
		mov	bx,word [bx-4]
		mov	ax,word [bx]
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CLASSINFO$$POINTER
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx+6]
		push	word [bx+55]
		call	TYPINFO_$$_GETPROPINFO$PTYPEINFO$ANSISTRING$$PPROPINFO
		mov	bx,word [bp+6]
		mov	word [bx-10],ax
..@j20033:
		mov	bx,word [bp+6]
		cmp	byte [bx-15],0
		jne	..@j20048
		jmp	..@j20049
..@j20048:
		mov	bx,word [bp+6]
		mov	bx,word [bx+6]
		push	word [bx+9]
		mov	bx,word [bp+6]
		mov	bx,word [bx+6]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+96]
		call	ax
		mov	byte [bp-1],0
		jmp	..@j19768
..@j20049:
..@j20009:
..@j19768:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	TYPINFO_$$_GETPROPINFO$PTYPEINFO$ANSISTRING$$PPROPINFO
EXTERN	SYSTEM$_$TOBJECT_$__$$_CLASSINFO$$POINTER
EXTERN	fpc_ansistr_compare_equal
EXTERN	fpc_ansistr_assign
