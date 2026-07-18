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
	GLOBAL OBJPAS_$$_UPDATERESOURCESTRINGREFS
OBJPAS_$$_UPDATERESOURCESTRINGREFS:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	ax,word [FPC_RESSTRINITTABLES]
		mov	word [bp-6],ax
		mov	word [bp-2],1
		mov	ax,word [bp-6]
		cmp	ax,word [bp-2]
		jl	..@j149
		dec	word [bp-2]
	ALIGN 2
..@j150:
		inc	word [bp-2]
		mov	bx,word [bp-2]
		shl	bx,1
		mov	ax,word [FPC_RESSTRINITTABLES+bx]
		mov	word [bp-4],ax
		jmp	..@j154
	ALIGN 2
..@j153:
		mov	bx,word [bp-4]
		mov	ax,word [bx]
		push	ax
		mov	bx,word [bp-4]
		mov	bx,word [bx+2]
		push	word [bx+2]
		call	fpc_ansistr_assign
		add	word [bp-4],4
..@j154:
		mov	bx,word [bp-4]
		cmp	word [bx],0
		jne	..@j153
		jmp	..@j155
..@j155:
		mov	ax,word [bp-6]
		cmp	ax,word [bp-2]
		jg	..@j150
..@j149:
		mov	sp,bp
		pop	bp
		ret
EXTERN	fpc_ansistr_assign
EXTERN	FPC_RESSTRINITTABLES
