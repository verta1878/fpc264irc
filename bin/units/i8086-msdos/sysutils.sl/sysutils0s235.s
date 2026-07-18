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
	GLOBAL SYSUTILS_$$_FLOATTODECIMAL$TFLOATREC$formal$TFLOATVALUE$SMALLINT$SMALLINT
SYSUTILS_$$_FLOATTODECIMAL$TFLOATREC$formal$TFLOATVALUE$SMALLINT$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,560
		mov	word [bp-544],0
		mov	ax,1
		push	ax
		lea	ax,[bp-284]
		push	ax
		lea	ax,[bp-278]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j8260
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		test	dx,dx
		jne	..@j8269
		test	ax,ax
		je	..@j8264
..@j8269:
		test	dx,dx
		jne	..@j8270
		cmp	ax,1
		je	..@j8267
..@j8270:
		test	dx,dx
		jne	..@j8271
		cmp	ax,2
		je	..@j8266
..@j8271:
		test	dx,dx
		jb	..@j8263
		test	dx,dx
		ja	..@j8272
		cmp	ax,3
		jb	..@j8263
..@j8272:
		test	dx,dx
		jb	..@j8265
		test	dx,dx
		ja	..@j8273
		cmp	ax,4
		jbe	..@j8265
..@j8273:
		test	dx,dx
		jne	..@j8274
		cmp	ax,5
		je	..@j8268
..@j8274:
		jmp	..@j8263
..@j8264:
		mov	bx,word [bp+12]
		push	word [bx+8]
		push	word [bx+6]
		push	word [bx+4]
		push	word [bx+2]
		push	word [bx]
		mov	ax,25
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,2
		push	ax
		lea	ax,[bp-255]
		push	ax
		mov	ax,254
		push	ax
		call	fpc_shortstr_float
		jmp	..@j8262
..@j8265:
		mov	bx,word [bp+12]
		wait fld	qword [bx]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		mov	ax,23
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,1
		push	ax
		lea	ax,[bp-255]
		push	ax
		mov	ax,254
		push	ax
		call	fpc_shortstr_float
		jmp	..@j8262
..@j8266:
		mov	bx,word [bp+12]
		wait fld	dword [bx]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		mov	ax,16
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,0
		push	ax
		lea	ax,[bp-255]
		push	ax
		mov	ax,254
		push	ax
		call	fpc_shortstr_float
		jmp	..@j8262
..@j8267:
		mov	bx,word [bp+12]
		push	word [bx+6]
		push	word [bx+4]
		push	word [bx+2]
		push	word [bx]
		mov	ax,25
		push	ax
		mov	ax,-1
		push	ax
		lea	ax,[bp-255]
		push	ax
		mov	ax,254
		push	ax
		call	fpc_shortstr_currency
		jmp	..@j8262
..@j8268:
		mov	bx,word [bp+12]
		push	word [bx+6]
		push	word [bx+4]
		push	word [bx+2]
		push	word [bx]
		mov	ax,23
		push	ax
		mov	ax,-1
		push	ax
		lea	ax,[bp-255]
		push	ax
		mov	ax,254
		push	ax
		call	fpc_shortstr_currency
		jmp	..@j8262
..@j8263:
..@j8262:
		mov	word [bp-264],1
		mov	al,byte [bp-255]
		mov	ah,0
		mov	word [bp-266],ax
		jmp	..@j8336
	ALIGN 2
..@j8335:
		inc	word [bp-264]
..@j8336:
		mov	al,byte [bp-264]
		mov	byte [bp-554],al
		mov	byte [bp-553],0
		mov	si,word [bp-554]
		cmp	byte [bp+si-255],32
		je	..@j8335
		jmp	..@j8337
..@j8337:
		mov	bx,word [bp+14]
		mov	al,byte [bp-264]
		mov	byte [bp-556],al
		mov	byte [bp-555],0
		mov	si,word [bp-556]
		cmp	byte [bp+si-255],45
		mov	al,0
		jne	..@j8340
		inc	ax
..@j8340:
		mov	byte [bx+2],al
		mov	bx,word [bp+14]
		cmp	byte [bx+2],0
		jne	..@j8341
		jmp	..@j8342
..@j8341:
		inc	word [bp-264]
		jmp	..@j8343
..@j8342:
		mov	al,byte [bp-264]
		mov	byte [bp-552],al
		mov	byte [bp-551],0
		mov	si,word [bp-552]
		cmp	byte [bp+si-255],43
		je	..@j8344
		jmp	..@j8345
..@j8344:
		inc	word [bp-264]
..@j8345:
..@j8343:
		mov	ax,word [bp-264]
		add	ax,2
		cmp	ax,word [bp-266]
		jle	..@j8346
		jmp	..@j8347
..@j8346:
		lea	ax,[bp-259]
		push	ax
		mov	ax,3
		push	ax
		lea	ax,[bp-542]
		push	ax
		lea	ax,[bp-255]
		push	ax
		push	word [bp-264]
		mov	ax,3
		push	ax
		call	fpc_shortstr_copy
		lea	ax,[bp-542]
		push	ax
		call	fpc_shortstr_to_shortstr
		lea	ax,[bp-544]
		push	ax
		lea	ax,[bp-259]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-544]
		mov	ax,word _$SYSUTILS$_Ld639
		push	ax
		call	fpc_ansistr_compare_equal
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,0
		jne	..@j8363
		cmp	cx,0
		jne	..@j8363
		jmp	..@j8362
..@j8362:
		mov	bx,word [bp+14]
		mov	byte [bx+3],0
		mov	bx,word [bp+14]
		mov	word [bx],32767
		jmp	..@j8260
..@j8363:
		lea	ax,[bp-544]
		push	ax
		lea	ax,[bp-259]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-544]
		mov	ax,word _$SYSUTILS$_Ld640
		push	ax
		call	fpc_ansistr_compare_equal
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,0
		jne	..@j8379
		cmp	cx,0
		jne	..@j8379
		jmp	..@j8378
..@j8378:
		mov	bx,word [bp+14]
		mov	byte [bx+3],0
		mov	bx,word [bp+14]
		mov	word [bx],-32768
		jmp	..@j8260
..@j8379:
..@j8347:
		mov	ax,word [bp-264]
		mov	word [bp-268],ax
		mov	bx,word [bp+14]
		mov	word [bx],0
		mov	byte [bp-272],1
		mov	byte [bp-271],0
		jmp	..@j8403
	ALIGN 2
..@j8402:
		mov	al,byte [bp-264]
		mov	byte [bp-546],al
		mov	byte [bp-545],0
		mov	si,word [bp-546]
		cmp	byte [bp+si-255],46
		je	..@j8405
		jmp	..@j8406
..@j8405:
		mov	byte [bp-272],0
		jmp	..@j8409
..@j8406:
		cmp	byte [bp-272],0
		jne	..@j8410
		jmp	..@j8411
..@j8410:
		mov	bx,word [bp+14]
		inc	word [bx]
		mov	bx,word [bp+14]
		mov	ax,word [bp-264]
		mov	dx,word [bp-268]
		mov	di,ax
		sub	di,dx
		mov	al,byte [bp-264]
		mov	byte [bp-560],al
		mov	byte [bp-559],0
		mov	si,word [bp-560]
		mov	al,byte [bp+si-255]
		mov	byte [bx+di+3],al
		mov	al,byte [bp-264]
		mov	byte [bp-548],al
		mov	byte [bp-547],0
		mov	si,word [bp-548]
		cmp	byte [bp+si-255],48
		jne	..@j8414
		jmp	..@j8415
..@j8414:
		mov	byte [bp-271],1
..@j8415:
		jmp	..@j8418
..@j8411:
		mov	bx,word [bp+14]
		mov	ax,word [bp-264]
		mov	dx,word [bp-268]
		sub	ax,dx
		mov	di,ax
		dec	di
		mov	al,byte [bp-264]
		mov	byte [bp-558],al
		mov	byte [bp-557],0
		mov	si,word [bp-558]
		mov	al,byte [bp+si-255]
		mov	byte [bx+di+3],al
..@j8418:
..@j8409:
		inc	word [bp-264]
..@j8403:
		mov	ax,word [bp-266]
		cmp	ax,word [bp-264]
		jge	..@j8421
		jmp	..@j8404
..@j8421:
		mov	al,byte [bp-264]
		mov	byte [bp-550],al
		mov	byte [bp-549],0
		mov	si,word [bp-550]
		cmp	byte [bp+si-255],69
		jne	..@j8402
		jmp	..@j8404
..@j8404:
		inc	word [bp-264]
		mov	ax,word [bp-264]
		cmp	ax,word [bp-266]
		jle	..@j8422
		jmp	..@j8423
..@j8422:
		mov	ax,2
		push	ax
		lea	ax,[bp-542]
		push	ax
		lea	ax,[bp-255]
		push	ax
		push	word [bp-264]
		mov	ax,word [bp-266]
		mov	dx,word [bp-264]
		sub	ax,dx
		inc	ax
		push	ax
		call	fpc_shortstr_copy
		lea	ax,[bp-542]
		push	ax
		lea	ax,[bp-262]
		push	ax
		call	fpc_val_sint_shortstr
		mov	word [bp-270],ax
		mov	bx,word [bp+14]
		mov	ax,word [bp-270]
		add	word [bx],ax
..@j8423:
		cmp	byte [bp-272],0
		jne	..@j8440
		jmp	..@j8441
..@j8440:
		mov	ax,word [bp-264]
		mov	dx,word [bp-268]
		sub	ax,dx
		dec	ax
		mov	word [bp-264],ax
		jmp	..@j8444
..@j8441:
		mov	ax,word [bp-264]
		mov	dx,word [bp-268]
		sub	ax,dx
		sub	ax,2
		mov	word [bp-264],ax
..@j8444:
		mov	word [bp-266],19
		mov	ax,word [bp-264]
		cmp	ax,word [bp-266]
		jl	..@j8449
		jmp	..@j8450
..@j8449:
		mov	bx,word [bp+14]
		mov	si,word [bp-264]
		lea	ax,[bx+si+3]
		push	ax
		mov	ax,word [bp-266]
		mov	dx,word [bp-264]
		sub	ax,dx
		push	ax
		mov	ax,48
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$CHAR
..@j8450:
		mov	bx,word [bp+14]
		mov	dx,word [bx]
		mov	ax,word [bp+4]
		add	ax,dx
		cmp	ax,word [bp+6]
		jl	..@j8457
		jmp	..@j8458
..@j8457:
		mov	bx,word [bp+14]
		mov	dx,word [bx]
		mov	ax,word [bp+4]
		add	ax,dx
		mov	word [bp-264],ax
		jmp	..@j8461
..@j8458:
		mov	ax,word [bp+6]
		mov	word [bp-264],ax
..@j8461:
		mov	ax,word [bp-264]
		cmp	ax,word [bp-266]
		jge	..@j8464
		jmp	..@j8465
..@j8464:
		mov	ax,word [bp-266]
		dec	ax
		mov	word [bp-264],ax
..@j8465:
		cmp	word [bp-264],0
		je	..@j8468
		jmp	..@j8469
..@j8468:
		mov	bx,word [bp+14]
		cmp	byte [bx+3],53
		jae	..@j8470
		jmp	..@j8471
..@j8470:
		mov	bx,word [bp+14]
		mov	byte [bx+3],49
		mov	bx,word [bp+14]
		mov	byte [bx+4],0
		mov	bx,word [bp+14]
		inc	word [bx]
		jmp	..@j8476
..@j8471:
		mov	bx,word [bp+14]
		mov	byte [bx+3],0
..@j8476:
		jmp	..@j8479
..@j8469:
		cmp	word [bp-264],0
		jg	..@j8480
		jmp	..@j8481
..@j8480:
		mov	bx,word [bp+14]
		mov	si,word [bp-264]
		cmp	byte [bx+si+3],53
		jae	..@j8482
		jmp	..@j8483
..@j8482:
	ALIGN 2
..@j8484:
		mov	bx,word [bp+14]
		mov	si,word [bp-264]
		mov	byte [bx+si+3],0
		dec	word [bp-264]
		mov	bx,word [bp+14]
		mov	si,word [bp-264]
		inc	byte [bx+si+3]
		cmp	word [bp-264],0
		je	..@j8486
		jmp	..@j8489
..@j8489:
		mov	bx,word [bp+14]
		mov	si,word [bp-264]
		cmp	byte [bx+si+3],58
		jb	..@j8486
		jmp	..@j8484
..@j8486:
		mov	bx,word [bp+14]
		cmp	byte [bx+3],58
		je	..@j8490
		jmp	..@j8491
..@j8490:
		mov	bx,word [bp+14]
		mov	byte [bx+3],49
		mov	bx,word [bp+14]
		inc	word [bx]
..@j8491:
		jmp	..@j8494
..@j8483:
		mov	bx,word [bp+14]
		mov	si,word [bp-264]
		mov	byte [bx+si+3],48
		jmp	..@j8498
	ALIGN 2
..@j8497:
		mov	bx,word [bp+14]
		mov	si,word [bp-264]
		mov	byte [bx+si+3],0
		dec	word [bp-264]
..@j8498:
		cmp	word [bp-264],-1
		jg	..@j8502
		jmp	..@j8499
..@j8502:
		mov	bx,word [bp+14]
		mov	si,word [bp-264]
		cmp	byte [bx+si+3],48
		je	..@j8497
		jmp	..@j8499
..@j8499:
..@j8494:
		jmp	..@j8503
..@j8481:
		mov	bx,word [bp+14]
		mov	byte [bx+3],0
..@j8503:
..@j8479:
		mov	bx,word [bp+14]
		cmp	byte [bx+3],0
		je	..@j8508
		jmp	..@j8507
..@j8508:
		cmp	byte [bp-271],0
		je	..@j8506
		jmp	..@j8507
..@j8506:
		mov	bx,word [bp+14]
		mov	word [bx],0
		mov	bx,word [bp+14]
		mov	byte [bx+2],0
..@j8507:
..@j8260:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-544]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j8261
		call	FPC_RERAISE
..@j8261:
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$CHAR
EXTERN	fpc_val_sint_shortstr
EXTERN	_$SYSUTILS$_Ld640
EXTERN	fpc_ansistr_compare_equal
EXTERN	_$SYSUTILS$_Ld639
EXTERN	fpc_shortstr_to_ansistr
EXTERN	fpc_shortstr_to_shortstr
EXTERN	fpc_shortstr_copy
EXTERN	fpc_shortstr_currency
EXTERN	fpc_shortstr_float
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
