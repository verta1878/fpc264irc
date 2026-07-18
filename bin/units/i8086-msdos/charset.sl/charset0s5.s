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
	GLOBAL CHARSET_$$_REMOVEDUPLICATES$PREVERSECHARMAPPING$LONGINT$LONGINT$$PREVERSECHARMAPPING
CHARSET_$$_REMOVEDUPLICATES$PREVERSECHARMAPPING$LONGINT$LONGINT$$PREVERSECHARMAPPING:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	ax,word [bp+6]
		mov	word [bp-18],ax
		mov	ax,word [bp+8]
		mov	word [bp-16],ax
		lea	ax,[bp-4]
		push	ax
		mov	ax,word [bp-18]
		mov	dx,word [bp-16]
		shl	ax,1
		rcl	dx,1
		shl	ax,1
		rcl	dx,1
		push	ax
		call	SYSTEM_$$_GETMEM$POINTER$WORD
		mov	ax,word [bp-4]
		mov	word [bp-6],ax
		mov	ax,word [bp+10]
		mov	word [bp-8],ax
		mov	word [bp-22],0
		mov	word [bp-20],0
		mov	word [bp-14],0
		mov	word [bp-12],0
		jmp	..@j129
	ALIGN 2
..@j128:
		mov	bx,word [bp-8]
		push	word [bx]
		push	word [bp-4]
		push	word [bp-20]
		push	word [bp-22]
		call	CHARSET_$$_FIND$WORD$PREVERSECHARMAPPING$LONGINT$$PREVERSECHARMAPPING
		mov	word [bp-10],ax
		cmp	word [bp-10],0
		je	..@j139
		jmp	..@j140
..@j139:
		mov	bx,word [bp-6]
		mov	si,word [bp-8]
		mov	ax,word [si]
		mov	word [bx],ax
		mov	ax,word [si+2]
		mov	word [bx+2],ax
		mov	ax,word [bp-22]
		mov	dx,word [bp-20]
		add	ax,1
		adc	dx,0
		mov	word [bp-22],ax
		mov	word [bp-20],dx
		add	word [bp-6],4
		jmp	..@j145
..@j140:
		mov	bx,word [bp-8]
		mov	si,word [bp-10]
		mov	al,byte [bx+2]
		cmp	al,byte [si+2]
		jb	..@j146
		jmp	..@j148
..@j148:
		mov	bx,word [bp-8]
		mov	si,word [bp-10]
		mov	al,byte [bx+2]
		cmp	al,byte [si+2]
		je	..@j149
		jmp	..@j147
..@j149:
		mov	bx,word [bp-8]
		mov	si,word [bp-10]
		mov	al,byte [bx+3]
		cmp	al,byte [si+3]
		jb	..@j146
		jmp	..@j147
..@j146:
		mov	bx,word [bp-10]
		mov	si,word [bp-8]
		mov	ax,word [si]
		mov	word [bx],ax
		mov	ax,word [si+2]
		mov	word [bx+2],ax
..@j147:
..@j145:
		mov	ax,word [bp-14]
		mov	dx,word [bp-12]
		add	ax,1
		adc	dx,0
		mov	word [bp-14],ax
		mov	word [bp-12],dx
		add	word [bp-8],4
..@j129:
		mov	ax,word [bp-14]
		mov	dx,word [bp-12]
		cmp	dx,word [bp-16]
		jl	..@j128
		jg	..@j130
		cmp	ax,word [bp-18]
		jb	..@j128
		jmp	..@j130
		jmp	..@j130
..@j130:
		mov	ax,word [bp-18]
		mov	dx,word [bp-16]
		cmp	dx,word [bp-20]
		jne	..@j154
		cmp	ax,word [bp-22]
		jne	..@j154
		jmp	..@j155
		jmp	..@j155
..@j154:
		lea	ax,[bp-4]
		push	ax
		mov	ax,word [bp-22]
		mov	dx,word [bp-20]
		shl	ax,1
		rcl	dx,1
		shl	ax,1
		rcl	dx,1
		push	ax
		call	SYSTEM_$$_REALLOCMEM$POINTER$WORD$$POINTER
..@j155:
		mov	bx,word [bp+4]
		mov	ax,word [bp-22]
		mov	word [bx],ax
		mov	ax,word [bp-20]
		mov	word [bx+2],ax
		mov	ax,word [bp-4]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_REALLOCMEM$POINTER$WORD$$POINTER
EXTERN	CHARSET_$$_FIND$WORD$PREVERSECHARMAPPING$LONGINT$$PREVERSECHARMAPPING
EXTERN	SYSTEM_$$_GETMEM$POINTER$WORD
