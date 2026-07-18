BITS 16
CPU 8086
SECTION text use16 class=code
SECTION rodata class=data
SECTION data class=data
SECTION fpc class=data
SECTION bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION text

SECTION text
	ALIGN 2
	GLOBAL FGL$_$TFPSLIST_$__$$_DESTROY
FGL$_$TFPSLIST_$__$$_DESTROY:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],0
		jg	..@j41
		jmp	..@j42
..@j41:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+36]
		call	ax
..@j42:
		push	word [bp+6]
		call	FGL$_$TFPSLIST_$__$$_CLEAR
		mov	bx,word [bp+6]
		push	word [bx+2]
		call	SYSTEM_$$_FREEMEM$POINTER$$WORD
		push	word [bp+6]
		mov	ax,0
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
		cmp	word [bp+6],0
		jne	..@j55
		jmp	..@j54
..@j55:
		cmp	word [bp+4],0
		jne	..@j53
		jmp	..@j54
..@j53:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+28]
		call	ax
..@j54:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM$_$TOBJECT_$__$$_DESTROY
EXTERN	SYSTEM_$$_FREEMEM$POINTER$$WORD
EXTERN	FGL$_$TFPSLIST_$__$$_CLEAR
