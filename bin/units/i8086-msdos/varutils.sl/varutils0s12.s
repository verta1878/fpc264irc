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
	GLOBAL VARUTILS_$$_VARIANTTOSHORTINT$TVARDATA$$SHORTINT
VARUTILS_$$_VARIANTTOSHORTINT$TVARDATA$$SHORTINT:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		and	ax,-4096
		test	ax,ax
		je	..@j300
		sub	ax,16384
		je	..@j301
		jmp	..@j299
..@j300:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		test	ax,ax
		je	..@j304
		sub	ax,2
		je	..@j305
		dec	ax
		je	..@j307
		dec	ax
		je	..@j308
		dec	ax
		je	..@j309
		dec	ax
		je	..@j311
		dec	ax
		je	..@j310
		dec	ax
		je	..@j319
		sub	ax,3
		je	..@j312
		dec	ax
		je	..@j313
		sub	ax,4
		je	..@j306
		dec	ax
		je	..@j314
		dec	ax
		je	..@j315
		dec	ax
		je	..@j316
		dec	ax
		je	..@j317
		dec	ax
		je	..@j318
		sub	ax,235
		je	..@j320
		sub	ax,2
		je	..@j321
		jmp	..@j303
..@j304:
		mov	byte [bp-1],0
		jmp	..@j302
..@j305:
		mov	bx,word [bp+4]
		mov	al,byte [bx+8]
		mov	byte [bp-1],al
		jmp	..@j302
..@j306:
		mov	bx,word [bp+4]
		mov	al,byte [bx+8]
		mov	byte [bp-1],al
		jmp	..@j302
..@j307:
		mov	bx,word [bp+4]
		mov	al,byte [bx+8]
		mov	byte [bp-1],al
		jmp	..@j302
..@j308:
		mov	bx,word [bp+4]
		wait fld	dword [bx+8]
		wait fistp	qword [bp-10]
		DB	09bh
		mov	al,byte [bp-10]
		mov	byte [bp-1],al
		jmp	..@j302
..@j309:
		mov	bx,word [bp+4]
		wait fld	qword [bx+8]
		wait fistp	qword [bp-10]
		DB	09bh
		mov	al,byte [bp-10]
		mov	byte [bp-1],al
		jmp	..@j302
..@j310:
		mov	bx,word [bp+4]
		wait fld	qword [bx+8]
		wait fistp	qword [bp-10]
		DB	09bh
		mov	al,byte [bp-10]
		mov	byte [bp-1],al
		jmp	..@j302
..@j311:
		mov	bx,word [bp+4]
		wait fild	qword [_$VARUTILS$_Ld1]
		wait fild	qword [bx+8]
		wait fdivrp	st1,st0
		wait fistp	qword [bp-10]
		DB	09bh
		mov	al,byte [bp-10]
		mov	byte [bp-1],al
		jmp	..@j302
..@j312:
		mov	bx,word [bp+4]
		mov	al,byte [bx+8]
		mov	byte [bp-1],al
		jmp	..@j302
..@j313:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		push	ax
		call	VARUTILS_$$_VARIANTTOSHORTINT$TVARDATA$$SHORTINT
		mov	byte [bp-1],al
		jmp	..@j302
..@j314:
		mov	bx,word [bp+4]
		mov	al,byte [bx+8]
		mov	byte [bp-1],al
		jmp	..@j302
..@j315:
		mov	bx,word [bp+4]
		mov	al,byte [bx+8]
		mov	byte [bp-1],al
		jmp	..@j302
..@j316:
		mov	bx,word [bp+4]
		mov	al,byte [bx+8]
		mov	byte [bp-1],al
		jmp	..@j302
..@j317:
		mov	bx,word [bp+4]
		mov	al,byte [bx+8]
		mov	byte [bp-1],al
		jmp	..@j302
..@j318:
		mov	bx,word [bp+4]
		mov	al,byte [bx+8]
		mov	byte [bp-1],al
		jmp	..@j302
..@j319:
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	VARUTILS_$$_WSTRTOSHORTINT$POINTER$$SHORTINT
		mov	byte [bp-1],al
		jmp	..@j302
..@j320:
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	VARUTILS_$$_LSTRTOSHORTINT$POINTER$$SHORTINT
		mov	byte [bp-1],al
		jmp	..@j302
..@j321:
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	VARUTILS_$$_USTRTOSHORTINT$POINTER$$SHORTINT
		mov	byte [bp-1],al
		jmp	..@j302
..@j303:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,16
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j302:
		jmp	..@j298
..@j301:
		mov	bx,word [bp+4]
		cmp	word [bx+8],0
		jne	..@j372
		jmp	..@j373
..@j372:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		and	ax,4095
		cmp	ax,2
		jb	..@j375
		sub	ax,2
		je	..@j376
		dec	ax
		je	..@j378
		dec	ax
		je	..@j379
		dec	ax
		je	..@j380
		dec	ax
		je	..@j382
		dec	ax
		je	..@j381
		dec	ax
		je	..@j390
		sub	ax,3
		je	..@j383
		dec	ax
		je	..@j384
		sub	ax,4
		je	..@j377
		dec	ax
		je	..@j385
		dec	ax
		je	..@j386
		dec	ax
		je	..@j387
		dec	ax
		je	..@j388
		dec	ax
		je	..@j389
		sub	ax,235
		je	..@j391
		sub	ax,2
		je	..@j392
		jmp	..@j375
..@j376:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	al,byte [bx]
		mov	byte [bp-1],al
		jmp	..@j374
..@j377:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	al,byte [bx]
		mov	byte [bp-1],al
		jmp	..@j374
..@j378:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	al,byte [bx]
		mov	byte [bp-1],al
		jmp	..@j374
..@j379:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fld	dword [bx]
		wait fistp	qword [bp-10]
		DB	09bh
		mov	al,byte [bp-10]
		mov	byte [bp-1],al
		jmp	..@j374
..@j380:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fld	qword [bx]
		wait fistp	qword [bp-10]
		DB	09bh
		mov	al,byte [bp-10]
		mov	byte [bp-1],al
		jmp	..@j374
..@j381:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fld	qword [bx]
		wait fistp	qword [bp-10]
		DB	09bh
		mov	al,byte [bp-10]
		mov	byte [bp-1],al
		jmp	..@j374
..@j382:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fild	qword [_$VARUTILS$_Ld1]
		wait fild	qword [bx]
		wait fdivrp	st1,st0
		wait fistp	qword [bp-10]
		DB	09bh
		mov	al,byte [bp-10]
		mov	byte [bp-1],al
		jmp	..@j374
..@j383:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	al,byte [bx]
		mov	byte [bp-1],al
		jmp	..@j374
..@j384:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		push	ax
		call	VARUTILS_$$_VARIANTTOSHORTINT$TVARDATA$$SHORTINT
		mov	byte [bp-1],al
		jmp	..@j374
..@j385:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	al,byte [bx]
		mov	byte [bp-1],al
		jmp	..@j374
..@j386:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	al,byte [bx]
		mov	byte [bp-1],al
		jmp	..@j374
..@j387:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	al,byte [bx]
		mov	byte [bp-1],al
		jmp	..@j374
..@j388:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	al,byte [bx]
		mov	byte [bp-1],al
		jmp	..@j374
..@j389:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	al,byte [bx]
		mov	byte [bp-1],al
		jmp	..@j374
..@j390:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx]
		call	VARUTILS_$$_WSTRTOSHORTINT$POINTER$$SHORTINT
		mov	byte [bp-1],al
		jmp	..@j374
..@j391:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx]
		call	VARUTILS_$$_LSTRTOSHORTINT$POINTER$$SHORTINT
		mov	byte [bp-1],al
		jmp	..@j374
..@j392:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx]
		call	VARUTILS_$$_USTRTOSHORTINT$POINTER$$SHORTINT
		mov	byte [bp-1],al
		jmp	..@j374
..@j375:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,16
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j374:
		jmp	..@j441
..@j373:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,16
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j441:
		jmp	..@j298
..@j299:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,16
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j298:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
EXTERN	VARUTILS_$$_USTRTOSHORTINT$POINTER$$SHORTINT
EXTERN	VARUTILS_$$_LSTRTOSHORTINT$POINTER$$SHORTINT
EXTERN	VARUTILS_$$_WSTRTOSHORTINT$POINTER$$SHORTINT
EXTERN	_$VARUTILS$_Ld1
