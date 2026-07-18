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
	GLOBAL SYSTEM_$$_READPCHARLEN$TEXT$PCHAR$LONGINT$$LONGINT
SYSTEM_$$_READPCHARLEN$TEXT$PCHAR$LONGINT$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	word [bp-4],0
		mov	word [bp-2],0
		mov	ax,word [bp+10]
		push	ax
		call	SYSTEM_$$_CHECKREAD$TEXT$$BOOLEAN
		test	al,al
		je	..@j23154
		jmp	..@j23155
..@j23154:
		jmp	..@j23150
..@j23155:
		mov	word [bp-8],0
		mov	word [bp-6],0
		mov	byte [bp-19],0
	ALIGN 2
..@j23162:
		mov	bx,word [bp+10]
		mov	si,word [bp+10]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jge	..@j23165
		jmp	..@j23166
..@j23165:
		mov	ax,word [bp+10]
		push	ax
		mov	bx,word [bp+10]
		mov	ax,word [bx+18]
		call	ax
		mov	bx,word [bp+10]
		mov	si,word [bp+10]
		mov	ax,word [bx+10]
		cmp	ax,word [si+12]
		jge	..@j23169
		jmp	..@j23170
..@j23169:
		jmp	..@j23164
..@j23170:
..@j23166:
		mov	bx,word [bp+10]
		mov	bx,word [bx+14]
		mov	si,word [bp+10]
		mov	si,word [si+10]
		lea	ax,[bx+si]
		mov	word [bp-14],ax
		mov	bx,word [bp+10]
		mov	ax,word [bx+12]
		cwd
		mov	cx,word [bp-8]
		mov	bx,word [bp-6]
		add	cx,ax
		adc	bx,dx
		mov	si,word [bp+10]
		mov	ax,word [si+10]
		cwd
		sub	cx,ax
		sbb	bx,dx
		cmp	bx,word [bp+6]
		jg	..@j23173
		jl	..@j23174
		cmp	cx,word [bp+4]
		ja	..@j23173
		jmp	..@j23174
		jmp	..@j23174
..@j23173:
		mov	bx,word [bp+10]
		mov	bx,word [bx+14]
		mov	si,word [bp+10]
		mov	ax,word [si+10]
		cwd
		mov	cx,word [bp+4]
		mov	si,word [bp+6]
		add	cx,ax
		adc	si,dx
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		sub	cx,ax
		sbb	si,dx
		mov	si,cx
		lea	ax,[bx+si]
		mov	word [bp-18],ax
		jmp	..@j23177
..@j23174:
		mov	bx,word [bp+10]
		mov	bx,word [bx+14]
		mov	si,word [bp+10]
		mov	si,word [si+12]
		lea	ax,[bx+si]
		mov	word [bp-18],ax
..@j23177:
		mov	ax,word [bp-14]
		mov	word [bp-16],ax
		jmp	..@j23183
	ALIGN 2
..@j23182:
		mov	bx,word [bp-14]
		cmp	byte [bx],32
		jb	..@j23185
		jmp	..@j23186
..@j23185:
		mov	bx,word [bp-14]
		mov	al,byte [bx]
		mov	ah,0
		cmp	ax,10
		je	..@j23190
		cmp	ax,13
		je	..@j23190
..@j23190:
		je	..@j23187
		jmp	..@j23189
..@j23189:
		cmp	byte [TC_$SYSTEM_$$_CTRLZMARKSEOF],0
		jne	..@j23191
		jmp	..@j23188
..@j23191:
		mov	bx,word [bp-14]
		cmp	byte [bx],26
		je	..@j23187
		jmp	..@j23188
..@j23187:
		mov	byte [bp-19],1
		jmp	..@j23184
..@j23188:
..@j23186:
		inc	word [bp-14]
..@j23183:
		mov	ax,word [bp-14]
		cmp	ax,word [bp-18]
		jb	..@j23182
		jmp	..@j23184
..@j23184:
		mov	ax,word [bp-14]
		mov	dx,word [bp-16]
		sub	ax,dx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-12],cx
		mov	word [bp-10],ax
		mov	bx,word [bp+10]
		mov	ax,word [bp-12]
		add	word [bx+10],ax
		mov	ax,word [bp-16]
		push	ax
		mov	bx,word [bp+8]
		mov	si,word [bp-8]
		lea	ax,[bx+si]
		push	ax
		push	word [bp-12]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	dx,word [bp-12]
		mov	ax,word [bp-10]
		add	word [bp-8],dx
		adc	word [bp-6],ax
		mov	dx,word [bp-8]
		mov	ax,word [bp-6]
		cmp	ax,word [bp+6]
		jne	..@j23202
		cmp	dx,word [bp+4]
		jne	..@j23202
		jmp	..@j23164
		jmp	..@j23202
..@j23202:
		cmp	byte [bp-19],0
		jne	..@j23164
		jmp	..@j23162
..@j23164:
		mov	ax,word [bp-8]
		mov	word [bp-4],ax
		mov	ax,word [bp-6]
		mov	word [bp-2],ax
..@j23150:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	TC_$SYSTEM_$$_CTRLZMARKSEOF
EXTERN	SYSTEM_$$_CHECKREAD$TEXT$$BOOLEAN
