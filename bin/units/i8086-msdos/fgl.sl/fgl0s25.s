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
	GLOBAL FGL$_$TFPSLIST_$__$$_INDEXOF$POINTER$$SMALLINT
FGL$_$TFPSLIST_$__$$_INDEXOF$POINTER$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	word [bp-2],0
		push	word [bp+6]
		call	FGL$_$TFPSLIST_$__$$_GETFIRST$$POINTER
		mov	word [bp-4],ax
		jmp	..@j538
	ALIGN 2
..@j537:
		inc	word [bp-2]
		mov	bx,word [bp+6]
		mov	dx,word [bx+8]
		mov	ax,word [bp-4]
		add	ax,dx
		mov	word [bp-4],ax
..@j538:
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		cmp	ax,word [bp-2]
		jg	..@j542
		jmp	..@j539
..@j542:
		mov	ax,word [bp-4]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+6]
		push	word [bx+8]
		call	SYSTEM_$$_COMPAREBYTE$formal$formal$SMALLINT$$SMALLINT
		test	ax,ax
		jne	..@j537
		jmp	..@j539
..@j539:
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		cmp	ax,word [bp-2]
		je	..@j549
		jmp	..@j550
..@j549:
		mov	word [bp-2],-1
..@j550:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_COMPAREBYTE$formal$formal$SMALLINT$$SMALLINT
EXTERN	FGL$_$TFPSLIST_$__$$_GETFIRST$$POINTER
