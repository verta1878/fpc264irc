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
	GLOBAL OBJECTS$_$TDOSSTREAM_$__$$_SEEK$LONGINT
OBJECTS$_$TDOSSTREAM_$__$$_SEEK$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+8]
		cmp	word [bx+2],0
		je	..@j744
		jmp	..@j745
..@j744:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		cmp	dx,0
		jl	..@j746
		jg	..@j747
		cmp	ax,0
		jb	..@j746
		jmp	..@j747
..@j746:
		mov	word [bp+4],0
		mov	word [bp+6],0
..@j747:
		mov	bx,word [bp+8]
		lea	ax,[bx+273]
		push	ax
		mov	dx,word [bp+4]
		mov	si,word [bp+6]
		mov	ax,dx
		mov	bx,si
		mov	cl,15
		sar	bx,cl
		mov	ax,bx
		push	bx
		push	ax
		push	si
		push	dx
		call	SYSTEM_$$_SEEK$file$INT64
		call	SYSTEM_$$_IORESULT$$WORD
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		jne	..@j756
		jmp	..@j757
..@j756:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,-7
		push	ax
		push	word [bp-2]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+22]
		call	ax
		jmp	..@j764
..@j757:
		mov	bx,word [bp+8]
		mov	ax,word [bp+4]
		mov	word [bx+10],ax
		mov	ax,word [bp+6]
		mov	word [bx+12],ax
..@j764:
..@j745:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_IORESULT$$WORD
EXTERN	SYSTEM_$$_SEEK$file$INT64
