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
	GLOBAL CLASSES$_$TSTREAMADAPTER_$__$$_STAT$TAGSTATSTG$LONGINT$$HRESULT
CLASSES$_$TSTREAMADAPTER_$__$$_STAT$TAGSTATSTG$LONGINT$$HRESULT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+4]
		cmp	byte [bx+14],0
		jne	..@j2730
		jmp	..@j2731
..@j2730:
		mov	word [bp-4],258
		mov	word [bp-2],-32765
		jmp	..@j2728
..@j2731:
		mov	ax,word [bp+8]
		cmp	ax,3
		jb	..@j2736
..@j2736:
		jc	..@j2734
		jmp	..@j2735
..@j2734:
		mov	ax,word [bp+6]
		test	ax,ax
		jne	..@j2737
		jmp	..@j2738
..@j2737:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,70
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$CHAR
		mov	bx,word [bp+6]
		mov	word [bx+2],2
		mov	word [bx+4],0
		mov	bx,word [bp+4]
		push	word [bx+8]
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	bx,word [bx]
		mov	ax,word [bx+56]
		call	ax
		mov	si,word [bp+6]
		mov	word [si+6],dx
		mov	word [si+8],cx
		mov	word [si+10],bx
		mov	word [si+12],ax
		mov	bx,word [bp+6]
		mov	word [bx+42],1
		mov	word [bx+44],0
..@j2738:
		mov	word [bp-4],0
		mov	word [bp-2],0
		jmp	..@j2755
..@j2735:
		mov	word [bp-4],255
		mov	word [bp-2],-32765
..@j2755:
..@j2728:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$CHAR
