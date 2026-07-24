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
	GLOBAL CLASSES$_$TCOMPONENT_$__$$_SETCOMPONENTINDEX$SMALLINT
CLASSES$_$TCOMPONENT_$__$$_SETCOMPONENTINDEX$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	bx,word [bp+6]
		cmp	word [bx+6],0
		je	..@j12168
		jmp	..@j12169
..@j12168:
		jmp	..@j12166
..@j12169:
		push	word [bp+6]
		call	CLASSES$_$TCOMPONENT_$__$$_GETCOMPONENTINDEX$$SMALLINT
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		jl	..@j12174
		jg	..@j12175
		cmp	ax,0
		jb	..@j12174
		jmp	..@j12175
..@j12174:
		jmp	..@j12166
..@j12175:
		cmp	word [bp+4],0
		jl	..@j12176
		jmp	..@j12177
..@j12176:
		mov	word [bp+4],0
..@j12177:
		mov	bx,word [bp+6]
		mov	bx,word [bx+6]
		mov	bx,word [bx+12]
		mov	ax,word [bx+4]
		cwd
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		mov	ax,word [bp+4]
		cwd
		cmp	dx,word [bp-6]
		jg	..@j12182
		jl	..@j12183
		cmp	ax,word [bp-8]
		jae	..@j12182
		jmp	..@j12183
		jmp	..@j12183
..@j12182:
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		sub	ax,1
		sbb	dx,0
		mov	word [bp+4],ax
..@j12183:
		mov	ax,word [bp+4]
		cwd
		cmp	dx,word [bp-2]
		jne	..@j12186
		cmp	ax,word [bp-4]
		jne	..@j12186
		jmp	..@j12187
		jmp	..@j12187
..@j12186:
		mov	bx,word [bp+6]
		mov	bx,word [bx+6]
		push	word [bx+12]
		push	word [bp-4]
		call	CLASSES$_$TFPLIST_$__$$_DELETE$SMALLINT
		mov	bx,word [bp+6]
		mov	bx,word [bx+6]
		push	word [bx+12]
		push	word [bp+4]
		push	word [bp+6]
		call	CLASSES$_$TFPLIST_$__$$_INSERT$SMALLINT$POINTER
..@j12187:
..@j12166:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TFPLIST_$__$$_INSERT$SMALLINT$POINTER
EXTERN	CLASSES$_$TFPLIST_$__$$_DELETE$SMALLINT
EXTERN	CLASSES$_$TCOMPONENT_$__$$_GETCOMPONENTINDEX$$SMALLINT
