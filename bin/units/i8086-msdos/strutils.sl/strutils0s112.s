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
	GLOBAL STRUTILS_$$_WORDPOSITION$SMALLINT$ANSISTRING$TSYSCHARSET$$SMALLINT
STRUTILS_$$_WORDPOSITION$SMALLINT$ANSISTRING$TSYSCHARSET$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	word [bp-2],0
		mov	word [bp-10],0
		mov	ax,word [bp+6]
		mov	word [bp-4],ax
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j3130
		mov	bx,word [bx-2]
..@j3130:
		mov	ax,word [bp-4]
		add	ax,bx
		mov	word [bp-8],ax
		mov	ax,word [bp-4]
		mov	word [bp-6],ax
		jmp	..@j3134
	ALIGN 2
..@j3133:
		jmp	..@j3137
	ALIGN 2
..@j3136:
		inc	word [bp-6]
..@j3137:
		mov	ax,word [bp-6]
		cmp	ax,word [bp-8]
		jb	..@j3139
		jmp	..@j3138
..@j3139:
		mov	si,word [bp-6]
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
		jbe	..@j3140
		test	al,0
		jmp	..@j3141
..@j3140:
		mov	ax,1
		shl	ax,cl
		test	word [bx+si],ax
..@j3141:
		jne	..@j3136
		jmp	..@j3138
..@j3138:
		mov	ax,word [bp-6]
		cmp	ax,word [bp-8]
		jb	..@j3142
		jmp	..@j3143
..@j3142:
		inc	word [bp-10]
..@j3143:
		mov	ax,word [bp-10]
		cmp	ax,word [bp+8]
		jne	..@j3144
		jmp	..@j3145
..@j3144:
		jmp	..@j3147
	ALIGN 2
..@j3146:
		inc	word [bp-6]
..@j3147:
		mov	ax,word [bp-6]
		cmp	ax,word [bp-8]
		jb	..@j3149
		jmp	..@j3148
..@j3149:
		mov	si,word [bp-6]
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
		jbe	..@j3150
		test	al,0
		jmp	..@j3151
..@j3150:
		mov	ax,1
		shl	ax,cl
		test	word [bx+si],ax
..@j3151:
		je	..@j3146
		jmp	..@j3148
..@j3148:
		jmp	..@j3152
..@j3145:
		mov	ax,word [bp-6]
		mov	dx,word [bp-4]
		sub	ax,dx
		inc	ax
		mov	word [bp-2],ax
..@j3152:
..@j3134:
		mov	ax,word [bp-6]
		cmp	ax,word [bp-8]
		jb	..@j3155
		jmp	..@j3135
..@j3155:
		mov	ax,word [bp-10]
		cmp	ax,word [bp+8]
		jne	..@j3133
		jmp	..@j3135
..@j3135:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
