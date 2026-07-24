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
	GLOBAL fpc_shortstr_compare
fpc_shortstr_compare:
	GLOBAL FPC_SHORTSTR_COMPARE
FPC_SHORTSTR_COMPARE:
		push	bp
		mov	bp,sp
		sub	sp,16
		mov	bx,word [bp+6]
		mov	al,byte [bx]
		mov	byte [bp-5],al
		mov	bx,word [bp+4]
		mov	al,byte [bx]
		mov	byte [bp-6],al
		mov	al,byte [bp-5]
		cmp	al,byte [bp-6]
		jb	..@j1138
		jmp	..@j1139
..@j1138:
		mov	al,byte [bp-5]
		mov	byte [bp-7],al
		jmp	..@j1142
..@j1139:
		mov	al,byte [bp-6]
		mov	byte [bp-7],al
..@j1142:
		mov	cl,byte [bp-7]
		mov	byte [bp-8],1
		cmp	cl,byte [bp-8]
		jb	..@j1148
		dec	byte [bp-8]
	ALIGN 2
..@j1149:
		inc	byte [bp-8]
		mov	bx,word [bp+6]
		mov	al,byte [bp-8]
		mov	byte [bp-14],al
		mov	byte [bp-13],0
		mov	si,word [bp-14]
		mov	al,byte [bx+si]
		mov	ah,0
		mov	bx,word [bp+4]
		mov	dl,byte [bp-8]
		mov	byte [bp-16],dl
		mov	byte [bp-15],0
		mov	si,word [bp-16]
		mov	dl,byte [bx+si]
		mov	dh,0
		sub	ax,dx
		cwd
		mov	bx,ax
		mov	ax,dx
		mov	word [bp-12],bx
		mov	word [bp-10],ax
		mov	ax,word [bp-12]
		mov	dx,word [bp-10]
		cmp	dx,0
		jg	..@j1152
		jl	..@j1153
		cmp	ax,0
		ja	..@j1152
		jmp	..@j1153
..@j1152:
		mov	word [bp-4],1
		mov	word [bp-2],0
		jmp	..@j1132
		jmp	..@j1156
..@j1153:
		mov	ax,word [bp-12]
		mov	dx,word [bp-10]
		cmp	dx,0
		jl	..@j1157
		jg	..@j1158
		cmp	ax,0
		jb	..@j1157
		jmp	..@j1158
..@j1157:
		mov	word [bp-4],-1
		mov	word [bp-2],-1
		jmp	..@j1132
..@j1158:
..@j1156:
		cmp	cl,byte [bp-8]
		ja	..@j1149
..@j1148:
		mov	al,byte [bp-5]
		cmp	al,byte [bp-6]
		ja	..@j1161
		jmp	..@j1162
..@j1161:
		mov	word [bp-4],1
		mov	word [bp-2],0
		jmp	..@j1132
		jmp	..@j1165
..@j1162:
		mov	al,byte [bp-5]
		cmp	al,byte [bp-6]
		jb	..@j1166
		jmp	..@j1167
..@j1166:
		mov	word [bp-4],-1
		mov	word [bp-2],-1
		jmp	..@j1132
		jmp	..@j1170
..@j1167:
		mov	word [bp-4],0
		mov	word [bp-2],0
		jmp	..@j1132
..@j1170:
..@j1165:
..@j1132:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
