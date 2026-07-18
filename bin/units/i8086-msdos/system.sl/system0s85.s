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
	GLOBAL fpc_pchar_to_shortstr
fpc_pchar_to_shortstr:
	GLOBAL FPC_PCHAR_TO_SHORTSTR
FPC_PCHAR_TO_SHORTSTR:
		push	bp
		mov	bp,sp
		sub	sp,260
		cmp	word [bp+4],0
		je	..@j1189
		jmp	..@j1190
..@j1189:
		mov	word [bp-4],0
		mov	word [bp-2],0
		jmp	..@j1193
..@j1190:
		push	word [bp+4]
		call	FPC_PCHAR_LENGTH
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
..@j1193:
		mov	ax,word [bp+6]
		cwd
		cmp	dx,word [bp-2]
		jl	..@j1198
		jg	..@j1199
		cmp	ax,word [bp-4]
		jb	..@j1198
		jmp	..@j1199
		jmp	..@j1199
..@j1198:
		mov	ax,word [bp+6]
		cwd
		mov	word [bp-4],ax
		mov	word [bp-2],dx
..@j1199:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		jg	..@j1202
		jl	..@j1203
		cmp	ax,0
		ja	..@j1202
		jmp	..@j1203
..@j1202:
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-259]
		push	ax
		push	word [bp-4]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j1203:
		mov	al,byte [bp-4]
		mov	byte [bp-260],al
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+6]
		lea	ax,[bp-260]
		push	ax
		call	fpc_shortstr_to_shortstr
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_shortstr_to_shortstr
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	FPC_PCHAR_LENGTH
