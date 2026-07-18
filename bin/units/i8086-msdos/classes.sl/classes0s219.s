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
	GLOBAL CLASSES$_$TFPLIST_$__$$_SETCOUNT$SMALLINT
CLASSES$_$TFPLIST_$__$$_SETCOUNT$SMALLINT:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],0
		jl	..@j4779
		jmp	..@j4781
..@j4781:
		cmp	word [bp+4],1024
		jg	..@j4779
		jmp	..@j4780
..@j4779:
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SLISTCOUNTERROR+2]
		push	word [bp+4]
		call	CLASSES$_$TFPLIST_$__$$_ERROR$ANSISTRING$SMALLINT
..@j4780:
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		cmp	ax,word [bp+4]
		jl	..@j4788
		jmp	..@j4789
..@j4788:
		mov	bx,word [bp+6]
		mov	ax,word [bx+6]
		cmp	ax,word [bp+4]
		jl	..@j4790
		jmp	..@j4791
..@j4790:
		push	word [bp+6]
		push	word [bp+4]
		call	CLASSES$_$TFPLIST_$__$$_SETCAPACITY$SMALLINT
..@j4791:
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		cmp	ax,word [bp+4]
		jl	..@j4796
		jmp	..@j4797
..@j4796:
		mov	bx,word [bp+6]
		mov	bx,word [bx+2]
		mov	si,word [bp+6]
		mov	ax,word [si+4]
		mov	si,ax
		shl	si,1
		lea	ax,[bx+si]
		push	ax
		mov	bx,word [bp+6]
		mov	dx,word [bx+4]
		mov	ax,word [bp+4]
		sub	ax,dx
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLWORD$formal$SMALLINT$WORD
..@j4797:
..@j4789:
		mov	bx,word [bp+6]
		mov	ax,word [bp+4]
		mov	word [bx+4],ax
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_FILLWORD$formal$SMALLINT$WORD
EXTERN	CLASSES$_$TFPLIST_$__$$_SETCAPACITY$SMALLINT
EXTERN	CLASSES$_$TFPLIST_$__$$_ERROR$ANSISTRING$SMALLINT
EXTERN	RESSTR_$RTLCONSTS_$$_SLISTCOUNTERROR
