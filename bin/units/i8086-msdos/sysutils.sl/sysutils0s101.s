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
	GLOBAL SYSUTILS_$$_GENERICANSISTRLCOMP$PCHAR$PCHAR$WORD$$SMALLINT
SYSUTILS_$$_GENERICANSISTRLCOMP$PCHAR$PCHAR$WORD$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	word [bp-2],0
		cmp	word [bp+4],0
		je	..@j3102
		jmp	..@j3103
..@j3102:
		jmp	..@j3098
..@j3103:
		cmp	word [bp+8],0
		je	..@j3104
		jmp	..@j3105
..@j3104:
		cmp	word [bp+6],0
		je	..@j3106
		jmp	..@j3107
..@j3106:
		jmp	..@j3098
..@j3107:
		mov	word [bp-2],-1
		jmp	..@j3098
..@j3105:
		cmp	word [bp+6],0
		je	..@j3110
		jmp	..@j3111
..@j3110:
		mov	word [bp-2],1
		jmp	..@j3098
..@j3111:
		mov	word [bp-6],0
		mov	word [bp-4],0
	ALIGN 2
..@j3116:
		mov	bx,word [bp+8]
		mov	al,byte [bx]
		mov	ah,0
		mov	bx,word [bp+6]
		mov	dl,byte [bx]
		mov	dh,0
		sub	ax,dx
		mov	word [bp-2],ax
		inc	word [bp+8]
		inc	word [bp+6]
		add	word [bp-6],1
		adc	word [bp-4],0
		cmp	word [bp-2],0
		jne	..@j3118
		jmp	..@j3121
..@j3121:
		mov	ax,word [bp+4]
		mov	dx,0
		cmp	dx,word [bp-4]
		jne	..@j3116
		cmp	ax,word [bp-6]
		jne	..@j3116
		jmp	..@j3118
		jmp	..@j3116
..@j3118:
..@j3098:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
