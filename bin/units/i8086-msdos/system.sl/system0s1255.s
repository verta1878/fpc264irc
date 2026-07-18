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
	GLOBAL SYSTEM_$$_SYSTINYREALLOCMEM$POINTER$WORD$$POINTER
SYSTEM_$$_SYSTINYREALLOCMEM$POINTER$WORD$$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,24
		cmp	word [bp+4],0
		je	..@j26098
		jmp	..@j26099
..@j26098:
		mov	bx,word [bp+6]
		push	word [bx]
		call	SYSTEM_$$_SYSTINYFREEMEM$POINTER$$WORD
		mov	word [bp-2],0
		mov	bx,word [bp+6]
		mov	word [bx],0
		jmp	..@j26106
..@j26099:
		mov	bx,word [bp+6]
		cmp	word [bx],0
		je	..@j26107
		jmp	..@j26108
..@j26107:
		push	word [bp+4]
		call	SYSTEM_$$_ALLOCMEM$WORD$$POINTER
		mov	word [bp-2],ax
		mov	bx,word [bp+6]
		mov	ax,word [bp-2]
		mov	word [bx],ax
		jmp	..@j26115
..@j26108:
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		cmp	ax,word [TC_$SYSTEM_$$_HEAPORG]
		jb	..@j26116
		jmp	..@j26118
..@j26118:
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		cmp	ax,word [TC_$SYSTEM_$$_HEAPPTR]
		jae	..@j26116
		jmp	..@j26117
..@j26116:
		mov	ax,0
		push	ax
		mov	ax,204
		push	ax
		call	FPC_HANDLEERROR
..@j26117:
		mov	bx,word [bp+6]
		push	word [bx]
		call	SYSTEM_$$_FINDSIZE$POINTER$$WORD
		mov	word [bp-4],ax
		mov	ax,word [bp-4]
		add	ax,2
		mov	word [bp-22],ax
		mov	ax,word [bp-22]
		mov	dx,0
		add	ax,3
		adc	dx,0
		mov	word [bp-24],ax
		mov	ax,word [bp-24]
		and	ax,3
		mov	bx,0
		mov	dx,word [bp-24]
		mov	cx,0
		sub	dx,ax
		sbb	cx,bx
		mov	word [bp-6],dx
		mov	ax,word [bp+4]
		add	ax,2
		mov	word [bp-22],ax
		mov	ax,word [bp-22]
		mov	dx,0
		add	ax,3
		adc	dx,0
		mov	word [bp-24],ax
		mov	ax,word [bp-24]
		and	ax,3
		mov	bx,0
		mov	dx,word [bp-24]
		mov	cx,0
		sub	dx,ax
		sbb	cx,bx
		mov	word [bp-8],dx
		mov	ax,word [bp-6]
		cmp	ax,word [bp-8]
		je	..@j26143
		jmp	..@j26144
..@j26143:
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bp+4]
		mov	word [bx-2],ax
		mov	ax,word [bp+4]
		cmp	ax,word [bp-4]
		ja	..@j26147
		jmp	..@j26148
..@j26147:
		mov	bx,word [bp+6]
		mov	dx,word [bx]
		mov	ax,word [bp-4]
		add	ax,dx
		push	ax
		mov	ax,word [bp+4]
		mov	dx,0
		mov	cx,word [bp-4]
		mov	bx,0
		sub	ax,cx
		sbb	dx,bx
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
..@j26148:
		jmp	..@j26155
..@j26144:
		mov	ax,word [bp-6]
		cmp	ax,word [bp-8]
		ja	..@j26156
		jmp	..@j26157
..@j26156:
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bp+4]
		mov	word [bx-2],ax
		mov	ax,word [bp-8]
		mov	dx,0
		sub	ax,2
		sbb	dx,0
		mov	bx,word [bp+6]
		mov	dx,word [bx]
		add	dx,ax
		push	dx
		mov	ax,word [bp-6]
		mov	dx,0
		mov	cx,word [bp-8]
		mov	bx,0
		sub	ax,cx
		sbb	dx,bx
		push	ax
		call	SYSTEM_$$_INTERNALTINYFREEMEM$POINTER$WORD
		jmp	..@j26164
..@j26157:
		mov	ax,word [TC_$SYSTEM_$$_FREELIST]
		mov	word [bp-10],ax
		mov	word [bp-12],0
		mov	word [bp-14],0
		jmp	..@j26172
	ALIGN 2
..@j26171:
		mov	ax,word [bp-12]
		mov	word [bp-14],ax
		mov	ax,word [bp-10]
		mov	word [bp-12],ax
		mov	bx,word [bp-10]
		mov	ax,word [bx]
		mov	word [bp-10],ax
..@j26172:
		mov	ax,word [bp-10]
		cmp	ax,word [TC_$SYSTEM_$$_HEAPPTR]
		jne	..@j26180
		jmp	..@j26173
..@j26180:
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		cmp	ax,word [bp-10]
		ja	..@j26171
		jmp	..@j26173
..@j26173:
		mov	ax,word [bp-6]
		mov	dx,0
		sub	ax,2
		sbb	dx,0
		mov	bx,word [bp+6]
		mov	dx,word [bx]
		add	dx,ax
		cmp	dx,word [bp-10]
		je	..@j26181
		jmp	..@j26182
..@j26181:
		mov	ax,word [bp-10]
		cmp	ax,word [TC_$SYSTEM_$$_HEAPPTR]
		je	..@j26183
		jmp	..@j26184
..@j26183:
		mov	ax,word [TC_$SYSTEM_$$_HEAPEND]
		mov	dx,word [TC_$SYSTEM_$$_HEAPPTR]
		sub	ax,dx
		mov	word [bp-16],ax
		jmp	..@j26187
..@j26184:
		mov	bx,word [bp-10]
		mov	ax,word [bx+2]
		mov	word [bp-22],ax
		mov	ax,word [bp-22]
		mov	word [bp-16],ax
..@j26187:
		jmp	..@j26194
..@j26182:
		mov	word [bp-16],0
..@j26194:
		mov	dx,word [bp-6]
		mov	ax,word [bp-16]
		add	ax,dx
		cmp	ax,word [bp-8]
		jae	..@j26197
		jmp	..@j26198
..@j26197:
		mov	ax,word [bp-10]
		cmp	ax,word [TC_$SYSTEM_$$_HEAPPTR]
		je	..@j26199
		jmp	..@j26200
..@j26199:
		mov	ax,word [bp-8]
		mov	dx,0
		mov	bx,word [bp-6]
		mov	cx,0
		sub	ax,bx
		sbb	dx,cx
		mov	dx,word [TC_$SYSTEM_$$_HEAPPTR]
		add	dx,ax
		mov	word [TC_$SYSTEM_$$_HEAPPTR],dx
		cmp	word [bp-12],0
		jne	..@j26203
		jmp	..@j26204
..@j26203:
		mov	bx,word [bp-12]
		mov	ax,word [TC_$SYSTEM_$$_HEAPPTR]
		mov	word [bx],ax
		jmp	..@j26207
..@j26204:
		mov	ax,word [TC_$SYSTEM_$$_HEAPPTR]
		mov	word [TC_$SYSTEM_$$_FREELIST],ax
..@j26207:
		jmp	..@j26210
..@j26200:
		mov	ax,word [bp-8]
		mov	dx,0
		mov	cx,word [bp-6]
		mov	bx,0
		sub	ax,cx
		sbb	dx,bx
		mov	cx,word [bp-16]
		mov	bx,0
		cmp	dx,bx
		jne	..@j26212
		cmp	ax,cx
		jne	..@j26212
		jmp	..@j26211
..@j26211:
		cmp	word [bp-12],0
		jne	..@j26213
		jmp	..@j26214
..@j26213:
		mov	si,word [bp-12]
		mov	bx,word [bp-10]
		mov	ax,word [bx]
		mov	word [si],ax
		jmp	..@j26217
..@j26214:
		mov	bx,word [bp-10]
		mov	ax,word [bx]
		mov	word [TC_$SYSTEM_$$_FREELIST],ax
..@j26217:
		jmp	..@j26220
..@j26212:
		mov	ax,word [bp-8]
		mov	dx,0
		mov	cx,word [bp-6]
		mov	bx,0
		sub	ax,cx
		sbb	dx,bx
		mov	dx,word [bp-10]
		add	dx,ax
		mov	word [bp-20],dx
		mov	si,word [bp-20]
		mov	bx,word [bp-10]
		mov	ax,word [bx]
		mov	word [si],ax
		mov	ax,word [bp-8]
		mov	dx,0
		mov	cx,word [bp-6]
		mov	bx,0
		sub	ax,cx
		sbb	dx,bx
		mov	cx,word [bp-16]
		mov	bx,0
		sub	cx,ax
		sbb	bx,dx
		mov	word [bp-22],cx
		mov	ax,word [bp-22]
		mov	bx,word [bp-20]
		mov	word [bx+2],ax
		cmp	word [bp-12],0
		jne	..@j26231
		jmp	..@j26232
..@j26231:
		mov	bx,word [bp-12]
		mov	ax,word [bp-20]
		mov	word [bx],ax
		jmp	..@j26235
..@j26232:
		mov	ax,word [bp-20]
		mov	word [TC_$SYSTEM_$$_FREELIST],ax
..@j26235:
..@j26220:
..@j26210:
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bp+4]
		mov	word [bx-2],ax
		mov	bx,word [bp+6]
		mov	dx,word [bx]
		mov	ax,word [bp-4]
		add	ax,dx
		push	ax
		mov	ax,word [bp+4]
		mov	dx,0
		mov	bx,word [bp-4]
		mov	cx,0
		sub	ax,bx
		sbb	dx,cx
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
		jmp	..@j26246
..@j26198:
		cmp	word [bp-12],0
		jne	..@j26249
		jmp	..@j26248
..@j26249:
		mov	bx,word [bp-12]
		mov	ax,word [bx+2]
		mov	word [bp-22],ax
		mov	dx,word [bp-22]
		mov	ax,word [bp-12]
		add	ax,dx
		mov	bx,word [bp+6]
		mov	dx,word [bx]
		sub	dx,2
		cmp	ax,dx
		je	..@j26247
		jmp	..@j26248
..@j26247:
		mov	bx,word [bp-12]
		mov	ax,word [bx+2]
		mov	word [bp-22],ax
		mov	ax,word [bp-22]
		mov	word [bp-18],ax
		jmp	..@j26260
..@j26248:
		mov	word [bp-18],0
..@j26260:
		mov	ax,word [bp-18]
		cmp	ax,word [bp-8]
		jb	..@j26266
		jmp	..@j26264
..@j26266:
		mov	dx,word [bp-18]
		mov	ax,word [bp-6]
		add	ax,dx
		mov	dx,word [bp-16]
		add	dx,ax
		cmp	dx,word [bp-8]
		jae	..@j26265
		jmp	..@j26264
..@j26265:
		cmp	word [bp-16],0
		ja	..@j26263
		jmp	..@j26264
..@j26263:
		mov	dx,word [bp-18]
		mov	ax,word [bp-6]
		add	ax,dx
		mov	dx,word [bp-16]
		add	dx,ax
		cmp	dx,word [bp-8]
		je	..@j26267
		jmp	..@j26268
..@j26267:
		mov	ax,word [bp-10]
		cmp	ax,word [TC_$SYSTEM_$$_HEAPPTR]
		je	..@j26269
		jmp	..@j26270
..@j26269:
		mov	ax,word [TC_$SYSTEM_$$_HEAPEND]
		mov	word [TC_$SYSTEM_$$_HEAPPTR],ax
		cmp	word [bp-14],0
		jne	..@j26273
		jmp	..@j26274
..@j26273:
		mov	bx,word [bp-14]
		mov	ax,word [TC_$SYSTEM_$$_HEAPPTR]
		mov	word [bx],ax
		jmp	..@j26277
..@j26274:
		mov	ax,word [TC_$SYSTEM_$$_HEAPPTR]
		mov	word [TC_$SYSTEM_$$_FREELIST],ax
..@j26277:
		jmp	..@j26280
..@j26270:
		cmp	word [bp-14],0
		jne	..@j26281
		jmp	..@j26282
..@j26281:
		mov	si,word [bp-14]
		mov	bx,word [bp-10]
		mov	ax,word [bx]
		mov	word [si],ax
		jmp	..@j26285
..@j26282:
		mov	bx,word [bp-10]
		mov	ax,word [bx]
		mov	word [TC_$SYSTEM_$$_FREELIST],ax
..@j26285:
..@j26280:
..@j26268:
		mov	ax,word [bp-12]
		add	ax,2
		mov	word [bp-2],ax
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		push	ax
		mov	ax,word [bp-2]
		push	ax
		push	word [bp-4]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	bx,word [bp-12]
		mov	ax,word [bp+4]
		mov	word [bx],ax
		mov	dx,word [bp-18]
		mov	ax,word [bp-6]
		add	ax,dx
		mov	dx,word [bp-16]
		add	dx,ax
		cmp	dx,word [bp-8]
		ja	..@j26298
		jmp	..@j26299
..@j26298:
		mov	dx,word [bp-12]
		mov	ax,word [bp-8]
		add	ax,dx
		mov	word [bp-20],ax
		mov	si,word [bp-20]
		mov	bx,word [bp-10]
		mov	ax,word [bx]
		mov	word [si],ax
		mov	ax,word [bp-8]
		mov	dx,0
		mov	cx,word [bp-6]
		mov	bx,0
		sub	ax,cx
		sbb	dx,bx
		mov	bx,word [bp-18]
		mov	cx,word [bp-16]
		add	cx,bx
		mov	bx,0
		sub	cx,ax
		sbb	bx,dx
		mov	word [bp-22],cx
		mov	ax,word [bp-22]
		mov	bx,word [bp-20]
		mov	word [bx+2],ax
		cmp	word [bp-14],0
		jne	..@j26310
		jmp	..@j26311
..@j26310:
		mov	bx,word [bp-14]
		mov	ax,word [bp-20]
		mov	word [bx],ax
		jmp	..@j26314
..@j26311:
		mov	ax,word [bp-20]
		mov	word [TC_$SYSTEM_$$_FREELIST],ax
..@j26314:
..@j26299:
		mov	dx,word [bp-2]
		mov	ax,word [bp-4]
		add	ax,dx
		push	ax
		mov	ax,word [bp+4]
		mov	dx,0
		mov	cx,word [bp-4]
		mov	bx,0
		sub	ax,cx
		sbb	dx,bx
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
		mov	bx,word [bp+6]
		mov	ax,word [bp-2]
		mov	word [bx],ax
		jmp	..@j26325
..@j26264:
		push	word [bp+4]
		call	SYSTEM_$$_ALLOCMEM$WORD$$POINTER
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		jne	..@j26330
		jmp	..@j26331
..@j26330:
		mov	ax,word [bp-4]
		cmp	ax,word [bp+4]
		ja	..@j26332
		jmp	..@j26333
..@j26332:
		mov	ax,word [bp+4]
		mov	word [bp-4],ax
..@j26333:
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		push	ax
		mov	ax,word [bp-2]
		push	ax
		push	word [bp-4]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j26331:
		mov	bx,word [bp+6]
		push	word [bx]
		call	SYSTEM_$$_SYSTINYFREEMEM$POINTER$$WORD
		mov	bx,word [bp+6]
		mov	ax,word [bp-2]
		mov	word [bx],ax
..@j26325:
..@j26246:
..@j26164:
..@j26155:
..@j26115:
..@j26106:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	TC_$SYSTEM_$$_HEAPEND
EXTERN	TC_$SYSTEM_$$_FREELIST
EXTERN	SYSTEM_$$_INTERNALTINYFREEMEM$POINTER$WORD
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
EXTERN	SYSTEM_$$_FINDSIZE$POINTER$$WORD
EXTERN	FPC_HANDLEERROR
EXTERN	TC_$SYSTEM_$$_HEAPPTR
EXTERN	TC_$SYSTEM_$$_HEAPORG
EXTERN	SYSTEM_$$_ALLOCMEM$WORD$$POINTER
EXTERN	SYSTEM_$$_SYSTINYFREEMEM$POINTER$$WORD
