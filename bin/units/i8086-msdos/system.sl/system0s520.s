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
	GLOBAL SYSTEM_$$_UTF8TOUNICODE$PUNICODECHAR$WORD$PCHAR$WORD$$WORD
SYSTEM_$$_UTF8TOUNICODE$PUNICODECHAR$WORD$PCHAR$WORD$$WORD:
		push	bp
		mov	bp,sp
		sub	sp,18
		cmp	word [bp+6],0
		je	..@j13143
		jmp	..@j13144
..@j13143:
		mov	word [bp-2],0
		jmp	..@j13141
..@j13144:
		mov	word [bp-2],-1
		mov	word [bp-4],0
		mov	word [bp-8],0
		mov	word [bp-10],0
		cmp	word [bp+10],0
		jne	..@j13155
		jmp	..@j13156
..@j13155:
		jmp	..@j13158
	ALIGN 2
..@j13157:
		mov	bx,word [bp+6]
		mov	si,word [bp-4]
		mov	al,byte [bx+si]
		mov	byte [bp-5],al
		mov	al,byte [bp-5]
		and	al,128
		test	al,al
		je	..@j13162
		jmp	..@j13163
..@j13162:
		cmp	byte [bp-5],10
		je	..@j13164
		jmp	..@j13165
..@j13164:
		cmp	word [bp-10],13
		jne	..@j13168
		jmp	..@j13167
..@j13168:
		jmp	..@j13167
		mov	ax,word [bp-8]
		inc	ax
		cmp	ax,word [bp+8]
		jb	..@j13169
		jmp	..@j13170
..@j13169:
		mov	bx,word [bp+10]
		mov	ax,word [bp-8]
		mov	si,ax
		shl	si,1
		mov	word [bx+si],13
		inc	word [bp-8]
		mov	bx,word [bp+10]
		mov	ax,word [bp-8]
		mov	si,ax
		shl	si,1
		mov	word [bx+si],10
		inc	word [bp-8]
		mov	word [bp-10],10
		jmp	..@j13177
..@j13170:
		mov	bx,word [bp+10]
		mov	ax,word [bp-8]
		mov	si,ax
		shl	si,1
		mov	word [bx+si],13
		inc	word [bp-8]
..@j13177:
		jmp	..@j13180
..@j13167:
		mov	bx,word [bp+10]
		mov	ax,word [bp-8]
		mov	si,ax
		shl	si,1
		mov	al,byte [bp-5]
		mov	ah,0
		mov	word [bx+si],ax
		inc	word [bp-8]
		mov	al,byte [bp-5]
		mov	ah,0
		mov	word [bp-10],ax
..@j13180:
		jmp	..@j13185
..@j13165:
		mov	bx,word [bp+10]
		mov	ax,word [bp-8]
		mov	si,ax
		shl	si,1
		mov	al,byte [bp-5]
		mov	ah,0
		mov	word [bx+si],ax
		inc	word [bp-8]
		mov	al,byte [bp-5]
		mov	ah,0
		mov	word [bp-10],ax
..@j13185:
		inc	word [bp-4]
		jmp	..@j13190
..@j13163:
		mov	al,byte [bp-5]
		mov	byte [bp-11],al
		mov	word [bp-14],0
		jmp	..@j13196
	ALIGN 2
..@j13195:
		mov	al,byte [bp-11]
		mov	ah,0
		shl	ax,1
		and	ax,254
		mov	byte [bp-11],al
		inc	word [bp-14]
..@j13196:
		mov	al,byte [bp-11]
		and	al,128
		test	al,al
		jne	..@j13195
		jmp	..@j13197
..@j13197:
		mov	dx,word [bp-4]
		mov	ax,word [bp-14]
		add	ax,dx
		mov	dx,0
		sub	ax,1
		sbb	dx,0
		cmp	ax,word [bp+4]
		ja	..@j13200
		jmp	..@j13201
..@j13200:
		mov	word [bp-14],1
..@j13201:
		mov	dx,word [bp-14]
		mov	ax,0
		sub	dx,1
		sbb	ax,0
		mov	word [bp-16],1
		cmp	dx,word [bp-16]
		jb	..@j13207
		dec	word [bp-16]
	ALIGN 2
..@j13208:
		inc	word [bp-16]
		mov	bx,word [bp+6]
		mov	cx,word [bp-4]
		mov	ax,word [bp-16]
		add	ax,cx
		mov	si,ax
		mov	al,byte [bx+si]
		and	al,128
		cmp	al,128
		jne	..@j13209
		jmp	..@j13211
..@j13211:
		mov	bx,word [bp+6]
		mov	cx,word [bp-4]
		mov	ax,word [bp-16]
		add	ax,cx
		mov	si,ax
		mov	al,byte [bx+si]
		mov	ah,0
		and	ax,64
		test	ax,ax
		jne	..@j13209
		jmp	..@j13210
..@j13209:
		mov	ax,word [bp-16]
		mov	word [bp-14],ax
		jmp	..@j13207
..@j13210:
		cmp	dx,word [bp-16]
		ja	..@j13208
..@j13207:
		mov	word [bp-18],-1
		mov	ax,word [bp-14]
		cmp	ax,1
		jb	..@j13217
		dec	ax
		je	..@j13218
		dec	ax
		je	..@j13219
		dec	ax
		je	..@j13220
		dec	ax
		je	..@j13221
		sub	ax,1
		jb	..@j13217
		sub	ax,2
		jbe	..@j13222
		jmp	..@j13217
..@j13218:
		mov	word [bp-18],63
		jmp	..@j13216
..@j13219:
		mov	bx,word [bp+6]
		mov	si,word [bp-4]
		mov	al,byte [bx+si]
		mov	ah,0
		and	ax,31
		mov	cl,6
		shl	ax,cl
		mov	word [bp-18],ax
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		inc	ax
		mov	si,ax
		mov	al,byte [bx+si]
		mov	ah,0
		and	ax,63
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	dx,word [bp-18]
		mov	bx,0
		or	dx,cx
		or	bx,ax
		mov	word [bp-18],dx
		cmp	word [bp-18],127
		jbe	..@j13229
		jmp	..@j13230
..@j13229:
		mov	word [bp-18],63
..@j13230:
		jmp	..@j13216
..@j13220:
		mov	bx,word [bp+6]
		mov	si,word [bp-4]
		mov	al,byte [bx+si]
		mov	ah,0
		and	ax,15
		mov	cl,12
		shl	ax,cl
		mov	word [bp-18],ax
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		inc	ax
		mov	si,ax
		mov	al,byte [bx+si]
		mov	ah,0
		and	ax,63
		mov	cl,6
		shl	ax,cl
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	dx,word [bp-18]
		mov	bx,0
		or	dx,cx
		or	bx,ax
		mov	word [bp-18],dx
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		add	ax,2
		mov	si,ax
		mov	al,byte [bx+si]
		mov	ah,0
		and	ax,63
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	dx,word [bp-18]
		mov	bx,0
		or	dx,cx
		or	bx,ax
		mov	word [bp-18],dx
		cmp	word [bp-18],2047
		jbe	..@j13239
		jmp	..@j13242
..@j13242:
		cmp	word [bp-18],-2
		jae	..@j13239
		jmp	..@j13241
..@j13241:
		cmp	word [bp-18],-10240
		jae	..@j13243
		jmp	..@j13240
..@j13243:
		cmp	word [bp-18],-8193
		jbe	..@j13239
		jmp	..@j13240
..@j13239:
		mov	word [bp-18],63
..@j13240:
		jmp	..@j13216
..@j13221:
		mov	bx,word [bp+6]
		mov	si,word [bp-4]
		mov	al,byte [bx+si]
		mov	ah,0
		and	ax,7
		mov	cl,18
		shl	ax,cl
		mov	word [bp-18],ax
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		inc	ax
		mov	si,ax
		mov	al,byte [bx+si]
		mov	ah,0
		and	ax,63
		mov	cl,12
		shl	ax,cl
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	dx,word [bp-18]
		mov	bx,0
		or	dx,cx
		or	bx,ax
		mov	word [bp-18],dx
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		add	ax,2
		mov	si,ax
		mov	al,byte [bx+si]
		mov	ah,0
		and	ax,63
		mov	cl,6
		shl	ax,cl
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	dx,word [bp-18]
		mov	bx,0
		or	dx,cx
		or	bx,ax
		mov	word [bp-18],dx
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		add	ax,3
		mov	si,ax
		mov	al,byte [bx+si]
		mov	ah,0
		and	ax,63
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	dx,word [bp-18]
		mov	bx,0
		or	dx,cx
		or	bx,ax
		mov	word [bp-18],dx
		mov	word [bp-18],63
		jmp	..@j13216
..@j13222:
		mov	word [bp-18],63
		jmp	..@j13216
..@j13217:
..@j13216:
		cmp	word [bp-14],0
		ja	..@j13258
		jmp	..@j13259
..@j13258:
		mov	ax,word [bp-18]
		mov	word [bp-10],ax
		mov	bx,word [bp+10]
		mov	ax,word [bp-8]
		mov	si,ax
		shl	si,1
		mov	ax,word [bp-18]
		mov	word [bx+si],ax
		inc	word [bp-8]
..@j13259:
		mov	dx,word [bp-4]
		mov	ax,word [bp-14]
		add	ax,dx
		mov	word [bp-4],ax
..@j13190:
..@j13158:
		mov	ax,word [bp-8]
		cmp	ax,word [bp+8]
		jb	..@j13266
		jmp	..@j13159
..@j13266:
		mov	ax,word [bp-4]
		cmp	ax,word [bp+4]
		jb	..@j13157
		jmp	..@j13159
..@j13159:
		mov	ax,word [bp-8]
		inc	ax
		mov	word [bp-2],ax
		jmp	..@j13269
..@j13156:
		jmp	..@j13271
	ALIGN 2
..@j13270:
		mov	bx,word [bp+6]
		mov	si,word [bp-4]
		mov	al,byte [bx+si]
		mov	byte [bp-5],al
		mov	al,byte [bp-5]
		and	al,128
		test	al,al
		je	..@j13275
		jmp	..@j13276
..@j13275:
		cmp	byte [bp-5],10
		je	..@j13277
		jmp	..@j13278
..@j13277:
		cmp	word [bp-10],13
		jne	..@j13281
		jmp	..@j13280
..@j13281:
		jmp	..@j13280
		add	word [bp-8],2
		mov	word [bp-10],10
		jmp	..@j13284
..@j13280:
		inc	word [bp-8]
		mov	al,byte [bp-5]
		mov	ah,0
		mov	word [bp-10],ax
..@j13284:
		jmp	..@j13287
..@j13278:
		inc	word [bp-8]
		mov	al,byte [bp-5]
		mov	ah,0
		mov	word [bp-10],ax
..@j13287:
		inc	word [bp-4]
		jmp	..@j13290
..@j13276:
		mov	al,byte [bp-5]
		mov	byte [bp-11],al
		mov	word [bp-14],0
		jmp	..@j13296
	ALIGN 2
..@j13295:
		mov	al,byte [bp-11]
		mov	ah,0
		shl	ax,1
		and	ax,254
		mov	byte [bp-11],al
		inc	word [bp-14]
..@j13296:
		mov	al,byte [bp-11]
		and	al,128
		test	al,al
		jne	..@j13295
		jmp	..@j13297
..@j13297:
		mov	dx,word [bp-4]
		mov	ax,word [bp-14]
		add	ax,dx
		mov	dx,0
		sub	ax,1
		sbb	dx,0
		cmp	ax,word [bp+4]
		ja	..@j13300
		jmp	..@j13301
..@j13300:
		mov	word [bp-14],1
..@j13301:
		mov	dx,word [bp-14]
		mov	ax,0
		sub	dx,1
		sbb	ax,0
		mov	word [bp-16],1
		cmp	dx,word [bp-16]
		jb	..@j13307
		dec	word [bp-16]
	ALIGN 2
..@j13308:
		inc	word [bp-16]
		mov	bx,word [bp+6]
		mov	cx,word [bp-4]
		mov	ax,word [bp-16]
		add	ax,cx
		mov	si,ax
		mov	al,byte [bx+si]
		and	al,128
		cmp	al,128
		jne	..@j13309
		jmp	..@j13311
..@j13311:
		mov	bx,word [bp+6]
		mov	cx,word [bp-4]
		mov	ax,word [bp-16]
		add	ax,cx
		mov	si,ax
		mov	al,byte [bx+si]
		mov	ah,0
		and	ax,64
		test	ax,ax
		jne	..@j13309
		jmp	..@j13310
..@j13309:
		mov	ax,word [bp-16]
		mov	word [bp-14],ax
		jmp	..@j13307
..@j13310:
		cmp	dx,word [bp-16]
		ja	..@j13308
..@j13307:
		mov	word [bp-18],-1
		mov	ax,word [bp-14]
		cmp	ax,1
		jb	..@j13317
		dec	ax
		je	..@j13318
		dec	ax
		je	..@j13319
		dec	ax
		je	..@j13320
		dec	ax
		je	..@j13321
		sub	ax,1
		jb	..@j13317
		sub	ax,2
		jbe	..@j13322
		jmp	..@j13317
..@j13318:
		mov	word [bp-18],63
		jmp	..@j13316
..@j13319:
		mov	bx,word [bp+6]
		mov	si,word [bp-4]
		mov	al,byte [bx+si]
		mov	ah,0
		and	ax,31
		mov	cl,6
		shl	ax,cl
		mov	word [bp-18],ax
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		inc	ax
		mov	si,ax
		mov	al,byte [bx+si]
		mov	ah,0
		and	ax,63
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	dx,word [bp-18]
		mov	bx,0
		or	dx,cx
		or	bx,ax
		mov	word [bp-18],dx
		cmp	word [bp-18],127
		jbe	..@j13329
		jmp	..@j13330
..@j13329:
		mov	word [bp-18],63
..@j13330:
		jmp	..@j13316
..@j13320:
		mov	bx,word [bp+6]
		mov	si,word [bp-4]
		mov	al,byte [bx+si]
		mov	ah,0
		and	ax,15
		mov	cl,12
		shl	ax,cl
		mov	word [bp-18],ax
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		inc	ax
		mov	si,ax
		mov	al,byte [bx+si]
		mov	ah,0
		and	ax,63
		mov	cl,6
		shl	ax,cl
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	dx,word [bp-18]
		mov	bx,0
		or	dx,cx
		or	bx,ax
		mov	word [bp-18],dx
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		add	ax,2
		mov	si,ax
		mov	al,byte [bx+si]
		mov	ah,0
		and	ax,63
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	dx,word [bp-18]
		mov	bx,0
		or	dx,cx
		or	bx,ax
		mov	word [bp-18],dx
		cmp	word [bp-18],2047
		jbe	..@j13339
		jmp	..@j13342
..@j13342:
		cmp	word [bp-18],-2
		jae	..@j13339
		jmp	..@j13341
..@j13341:
		cmp	word [bp-18],-10240
		jae	..@j13343
		jmp	..@j13340
..@j13343:
		cmp	word [bp-18],-8193
		jbe	..@j13339
		jmp	..@j13340
..@j13339:
		mov	word [bp-18],63
..@j13340:
		jmp	..@j13316
..@j13321:
		mov	bx,word [bp+6]
		mov	si,word [bp-4]
		mov	al,byte [bx+si]
		mov	ah,0
		and	ax,7
		mov	cl,18
		shl	ax,cl
		mov	word [bp-18],ax
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		inc	ax
		mov	si,ax
		mov	al,byte [bx+si]
		mov	ah,0
		and	ax,63
		mov	cl,12
		shl	ax,cl
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	dx,word [bp-18]
		mov	bx,0
		or	dx,cx
		or	bx,ax
		mov	word [bp-18],dx
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		add	ax,2
		mov	si,ax
		mov	al,byte [bx+si]
		mov	ah,0
		and	ax,63
		mov	cl,6
		shl	ax,cl
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	dx,word [bp-18]
		mov	bx,0
		or	dx,cx
		or	bx,ax
		mov	word [bp-18],dx
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		add	ax,3
		mov	si,ax
		mov	al,byte [bx+si]
		mov	ah,0
		and	ax,63
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	dx,word [bp-18]
		mov	bx,0
		or	dx,cx
		or	bx,ax
		mov	word [bp-18],dx
		mov	word [bp-18],63
		jmp	..@j13316
..@j13322:
		mov	word [bp-18],63
		jmp	..@j13316
..@j13317:
..@j13316:
		cmp	word [bp-14],0
		ja	..@j13358
		jmp	..@j13359
..@j13358:
		mov	ax,word [bp-18]
		mov	word [bp-10],ax
		inc	word [bp-8]
..@j13359:
		mov	dx,word [bp-4]
		mov	ax,word [bp-14]
		add	ax,dx
		mov	word [bp-4],ax
..@j13290:
..@j13271:
		mov	ax,word [bp-4]
		cmp	ax,word [bp+4]
		jb	..@j13270
		jmp	..@j13272
..@j13272:
		mov	ax,word [bp-8]
		inc	ax
		mov	word [bp-2],ax
..@j13269:
..@j13141:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
