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
	GLOBAL STRUTILS_$$_WORDCOUNT$ANSISTRING$TSYSCHARSET$$SMALLINT
STRUTILS_$$_WORDCOUNT$ANSISTRING$TSYSCHARSET$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	word [bp-2],0
		mov	ax,word [bp+6]
		mov	word [bp-4],ax
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j3102
		mov	bx,word [bx-2]
..@j3102:
		mov	ax,word [bp-4]
		add	ax,bx
		mov	word [bp-6],ax
		jmp	..@j3104
	ALIGN 2
..@j3103:
		jmp	..@j3107
	ALIGN 2
..@j3106:
		inc	word [bp-4]
..@j3107:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-6]
		jb	..@j3109
		jmp	..@j3108
..@j3109:
		mov	si,word [bp-4]
		mov	bx,word [bp+4]
		mov	al,byte [si]
		mov	ah,0
		mov	si,ax
		mov	cl,4
		shr	si,cl
		shl	si,1
		mov	cx,ax
		and	cl,15
		test	ax,ax
		jbe	..@j3110
		test	al,0
		jmp	..@j3111
..@j3110:
		mov	ax,1
		shl	ax,cl
		test	word [bx+si],ax
..@j3111:
		jne	..@j3106
		jmp	..@j3108
..@j3108:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-6]
		jb	..@j3112
		jmp	..@j3113
..@j3112:
		inc	word [bp-2]
..@j3113:
		jmp	..@j3115
	ALIGN 2
..@j3114:
		inc	word [bp-4]
..@j3115:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-6]
		jb	..@j3117
		jmp	..@j3116
..@j3117:
		mov	si,word [bp-4]
		mov	bx,word [bp+4]
		mov	al,byte [si]
		mov	ah,0
		mov	si,ax
		mov	cl,4
		shr	si,cl
		shl	si,1
		mov	cx,ax
		and	cl,15
		test	ax,ax
		jbe	..@j3118
		test	al,0
		jmp	..@j3119
..@j3118:
		mov	ax,1
		shl	ax,cl
		test	word [bx+si],ax
..@j3119:
		je	..@j3114
		jmp	..@j3116
..@j3116:
..@j3104:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-6]
		jb	..@j3103
		jmp	..@j3105
..@j3105:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
