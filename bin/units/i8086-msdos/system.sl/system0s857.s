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
	GLOBAL SYSTEM_$$_STRINGTOPPCHAR$PCHAR$SMALLINT$$PPCHAR
SYSTEM_$$_STRINGTOPPCHAR$PCHAR$SMALLINT$$PPCHAR:
		push	bp
		mov	bp,sp
		sub	sp,14
		mov	ax,word [bp+6]
		mov	word [bp-12],ax
		mov	word [bp-10],1
		mov	word [bp-8],0
		jmp	..@j18185
	ALIGN 2
..@j18184:
		jmp	..@j18188
	ALIGN 2
..@j18187:
		inc	word [bp-12]
..@j18188:
		mov	bx,word [bp-12]
		mov	al,byte [bx]
		mov	ah,0
		sub	ax,9
		cmp	ax,2
		jb	..@j18190
		cmp	ax,23
		stc
		je	..@j18190
		clc
..@j18190:
		jc	..@j18187
		jmp	..@j18189
..@j18189:
		add	word [bp-10],1
		adc	word [bp-8],0
		mov	bx,word [bp-12]
		cmp	byte [bx],34
		je	..@j18191
		jmp	..@j18192
..@j18191:
		inc	word [bp-12]
		jmp	..@j18194
	ALIGN 2
..@j18193:
		inc	word [bp-12]
..@j18194:
		mov	bx,word [bp-12]
		mov	al,byte [bx]
		mov	ah,0
		cmp	ax,0
		je	..@j18196
		cmp	ax,34
		je	..@j18196
..@j18196:
		je	..@j18195
		jmp	..@j18193
..@j18195:
		mov	bx,word [bp-12]
		cmp	byte [bx],34
		je	..@j18197
		jmp	..@j18198
..@j18197:
		inc	word [bp-12]
..@j18198:
		jmp	..@j18199
..@j18192:
		jmp	..@j18201
	ALIGN 2
..@j18200:
		inc	word [bp-12]
..@j18201:
		mov	bx,word [bp-12]
		mov	al,byte [bx]
		mov	ah,0
		cmp	ax,0
		stc
		je	..@j18203
		sub	ax,9
		cmp	ax,2
		jb	..@j18203
		cmp	ax,23
		stc
		je	..@j18203
		clc
..@j18203:
		jc	..@j18202
		jmp	..@j18200
..@j18202:
..@j18199:
..@j18185:
		mov	bx,word [bp-12]
		cmp	byte [bx],0
		jne	..@j18184
		jmp	..@j18186
..@j18186:
		lea	ax,[bp-14]
		push	ax
		mov	ax,word [bp+4]
		cwd
		mov	cx,word [bp-10]
		mov	bx,word [bp-8]
		add	cx,ax
		adc	bx,dx
		shl	cx,1
		rcl	bx,1
		push	cx
		call	SYSTEM_$$_GETMEM$POINTER$WORD
		mov	ax,word [bp-14]
		mov	word [bp-2],ax
		cmp	word [bp-14],0
		je	..@j18210
		jmp	..@j18211
..@j18210:
		jmp	..@j18178
..@j18211:
		mov	ax,word [bp+4]
		cwd
		mov	word [bp-6],1
		mov	word [bp-4],0
		cmp	dx,word [bp-4]
		jl	..@j18215
		jg	..@j18217
		cmp	ax,word [bp-6]
		jb	..@j18215
..@j18217:
		sub	word [bp-6],1
		sbb	word [bp-4],0
	ALIGN 2
..@j18216:
		add	word [bp-6],1
		adc	word [bp-4],0
		add	word [bp-14],2
		cmp	dx,word [bp-4]
		jg	..@j18216
		jl	..@j18218
		cmp	ax,word [bp-6]
		ja	..@j18216
..@j18218:
..@j18215:
		mov	ax,word [bp+6]
		mov	word [bp-12],ax
		jmp	..@j18222
	ALIGN 2
..@j18221:
		jmp	..@j18225
	ALIGN 2
..@j18224:
		mov	bx,word [bp-12]
		mov	byte [bx],0
		inc	word [bp-12]
..@j18225:
		mov	bx,word [bp-12]
		mov	al,byte [bx]
		mov	ah,0
		sub	ax,9
		cmp	ax,2
		jb	..@j18229
		cmp	ax,23
		stc
		je	..@j18229
		clc
..@j18229:
		jc	..@j18224
		jmp	..@j18226
..@j18226:
		mov	bx,word [bp-12]
		cmp	byte [bx],34
		je	..@j18230
		jmp	..@j18231
..@j18230:
		inc	word [bp-12]
		mov	bx,word [bp-14]
		mov	ax,word [bp-12]
		mov	word [bx],ax
		add	word [bp-14],2
		mov	bx,word [bp-14]
		mov	word [bx],0
		jmp	..@j18237
	ALIGN 2
..@j18236:
		inc	word [bp-12]
..@j18237:
		mov	bx,word [bp-12]
		mov	al,byte [bx]
		mov	ah,0
		cmp	ax,0
		je	..@j18239
		cmp	ax,34
		je	..@j18239
..@j18239:
		je	..@j18238
		jmp	..@j18236
..@j18238:
		mov	bx,word [bp-12]
		cmp	byte [bx],34
		je	..@j18240
		jmp	..@j18241
..@j18240:
		mov	bx,word [bp-12]
		mov	byte [bx],0
		inc	word [bp-12]
..@j18241:
		jmp	..@j18244
..@j18231:
		mov	bx,word [bp-14]
		mov	ax,word [bp-12]
		mov	word [bx],ax
		add	word [bp-14],2
		mov	bx,word [bp-14]
		mov	word [bx],0
		jmp	..@j18250
	ALIGN 2
..@j18249:
		inc	word [bp-12]
..@j18250:
		mov	bx,word [bp-12]
		mov	al,byte [bx]
		mov	ah,0
		cmp	ax,0
		stc
		je	..@j18252
		sub	ax,9
		cmp	ax,2
		jb	..@j18252
		cmp	ax,23
		stc
		je	..@j18252
		clc
..@j18252:
		jc	..@j18251
		jmp	..@j18249
..@j18251:
..@j18244:
..@j18222:
		mov	bx,word [bp-12]
		cmp	byte [bx],0
		jne	..@j18221
		jmp	..@j18223
..@j18223:
..@j18178:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_GETMEM$POINTER$WORD
