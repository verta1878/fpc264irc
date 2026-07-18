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
	GLOBAL CLASSES$_$TBITS_$__$$_CHECKBITINDEX$LONGINT$BOOLEAN
CLASSES$_$TBITS_$__$$_CHECKBITINDEX$LONGINT$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	dx,word [bp+6]
		mov	ax,word [bp+8]
		cmp	ax,0
		jl	..@j111
		jg	..@j113
		cmp	dx,0
		jb	..@j111
		jmp	..@j113
..@j113:
		cmp	byte [bp+4],0
		jne	..@j114
		jmp	..@j112
..@j114:
		mov	bx,word [bp+10]
		mov	dx,word [bx+8]
		mov	ax,word [bx+10]
		cmp	ax,word [bp+8]
		jl	..@j111
		jg	..@j112
		cmp	dx,word [bp+6]
		jbe	..@j111
		jmp	..@j112
		jmp	..@j112
..@j111:
		push	word [RESSTR_$RTLCONSTS_$$_SERRINVALIDBITINDEX+2]
		mov	dx,word [bp+6]
		mov	ax,word [bp+8]
		mov	word [bp-4],dx
		mov	word [bp-2],ax
		mov	word [bp-6],0
		lea	ax,[bp-6]
		push	ax
		mov	ax,0
		push	ax
		call	CLASSES_$$_BITSERRORFMT$ANSISTRING$array_of_const
..@j112:
		mov	dx,word [bp+6]
		mov	ax,word [bp+8]
		cmp	ax,0
		jg	..@j121
		jl	..@j122
		cmp	dx,32736
		jae	..@j121
		jmp	..@j122
..@j121:
		push	word [RESSTR_$RTLCONSTS_$$_SERRINDEXTOOLARGE+2]
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	word [bp-6],0
		lea	ax,[bp-6]
		push	ax
		mov	ax,0
		push	ax
		call	CLASSES_$$_BITSERRORFMT$ANSISTRING$array_of_const
..@j122:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	RESSTR_$RTLCONSTS_$$_SERRINDEXTOOLARGE
EXTERN	CLASSES_$$_BITSERRORFMT$ANSISTRING$array_of_const
EXTERN	RESSTR_$RTLCONSTS_$$_SERRINVALIDBITINDEX
