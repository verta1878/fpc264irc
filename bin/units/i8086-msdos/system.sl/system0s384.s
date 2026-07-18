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
	GLOBAL fpc_val_qword_ansistr
fpc_val_qword_ansistr:
	GLOBAL FPC_VAL_QWORD_ANSISTR
FPC_VAL_QWORD_ANSISTR:
		push	bp
		mov	bp,sp
		sub	sp,264
		mov	word [bp-8],0
		mov	word [bp-6],0
		mov	word [bp-4],0
		mov	word [bp-2],0
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j9901
		mov	bx,word [bx-2]
..@j9901:
		cmp	bx,255
		jg	..@j9899
		jmp	..@j9900
..@j9899:
		mov	bx,word [bp+4]
		mov	word [bx],256
		jmp	..@j9904
..@j9900:
		lea	ax,[bp-264]
		push	ax
		mov	ax,255
		push	ax
		push	word [bp+6]
		call	fpc_ansistr_to_shortstr
		lea	ax,[bp-264]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	fpc_val_qword_shortstr
		mov	word [bp-8],dx
		mov	word [bp-6],cx
		mov	word [bp-4],bx
		mov	word [bp-2],ax
..@j9904:
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_val_qword_shortstr
EXTERN	fpc_ansistr_to_shortstr
