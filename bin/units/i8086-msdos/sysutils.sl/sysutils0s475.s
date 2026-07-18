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
	GLOBAL SYSUTILS_$$_FILEREAD$WORD$formal$LONGINT$$LONGINT
SYSUTILS_$$_FILEREAD$WORD$formal$LONGINT$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,32
		mov	word [bp-32],0
		mov	word [bp-30],0
		jmp	..@j15217
	ALIGN 2
..@j15216:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		cmp	dx,0
		jg	..@j15219
		jl	..@j15220
		cmp	ax,-1
		ja	..@j15219
		jmp	..@j15220
..@j15219:
		mov	word [bp-28],-1
		mov	word [bp-26],0
		jmp	..@j15223
..@j15220:
		mov	ax,word [bp+4]
		mov	word [bp-28],ax
		mov	ax,word [bp+6]
		mov	word [bp-26],ax
..@j15223:
		mov	ax,word [bp-28]
		mov	word [bp-20],ax
		mov	ax,word [bp+8]
		mov	word [bp-18],ax
		mov	ax,word [bp+8]
		mov	ax,ds
		mov	word [bp-10],ax
		mov	ax,word [bp+10]
		mov	word [bp-22],ax
		mov	word [bp-24],16128
		mov	ax,33
		push	ax
		lea	ax,[bp-24]
		push	ax
		call	FPC_INTR
		mov	ax,word [bp-6]
		and	ax,1
		test	ax,ax
		jne	..@j15240
		jmp	..@j15241
..@j15240:
		mov	word [bp-4],-1
		mov	word [bp-2],-1
		jmp	..@j15212
..@j15241:
		mov	ax,word [bp-24]
		mov	dx,0
		add	word [bp-32],ax
		adc	word [bp-30],dx
		mov	ax,word [bp-24]
		mov	dx,0
		sub	word [bp+4],ax
		sbb	word [bp+6],dx
		mov	ax,word [bp-24]
		mov	dx,0
		cmp	dx,word [bp-26]
		jl	..@j15244
		jg	..@j15245
		cmp	ax,word [bp-28]
		jb	..@j15244
		jmp	..@j15245
		jmp	..@j15245
..@j15244:
		jmp	..@j15218
..@j15245:
..@j15217:
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		cmp	dx,0
		jg	..@j15216
		jl	..@j15218
		cmp	ax,0
		ja	..@j15216
		jmp	..@j15218
..@j15218:
		mov	ax,word [bp-32]
		mov	word [bp-4],ax
		mov	ax,word [bp-30]
		mov	word [bp-2],ax
..@j15212:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_INTR
