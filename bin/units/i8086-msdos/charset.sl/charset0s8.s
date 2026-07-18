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
	GLOBAL CHARSET_$$_LOADUNICODEMAPPING$SHORTSTRING$SHORTSTRING$WORD$$PUNICODEMAP
CHARSET_$$_LOADUNICODEMAPPING$SHORTSTRING$SHORTSTRING$WORD$$PUNICODEMAP:
		push	bp
		mov	bp,sp
		sub	sp,1646
		mov	word [bp-1372],-1
		mov	word [bp-1370],-1
		mov	word [bp-2],0
		mov	word [bp-8],256
		mov	word [bp-6],0
		lea	ax,[bp-4]
		push	ax
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		shl	ax,1
		rcl	dx,1
		shl	ax,1
		rcl	dx,1
		push	ax
		call	SYSTEM_$$_GETMEM$POINTER$WORD
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		call	CHARSET_$$_INITITEMS$PUNICODECHARMAPPING$LONGINT
		lea	ax,[bp-838]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		call	SYSTEM_$$_ASSIGN$TEXT$SHORTSTRING
		lea	ax,[bp-838]
		push	ax
		call	SYSTEM_$$_RESET$TEXT
		call	SYSTEM_$$_IORESULT$$WORD
		test	ax,ax
		jne	..@j285
		jmp	..@j286
..@j285:
		push	word [bp-4]
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		shl	ax,1
		rcl	dx,1
		shl	ax,1
		rcl	dx,1
		push	ax
		call	SYSTEM_$$_FREEMEM$POINTER$WORD
		jmp	..@j263
..@j286:
		jmp	..@j292
	ALIGN 2
..@j291:
		lea	ax,[bp-838]
		push	ax
		lea	ax,[bp-1094]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_read_text_shortstr
		call	FPC_IOCHECK
		lea	ax,[bp-838]
		push	ax
		call	fpc_readln_end
		call	FPC_IOCHECK
		cmp	byte [bp-1093],48
		je	..@j304
		jmp	..@j303
..@j304:
		cmp	byte [bp-1092],120
		je	..@j302
		jmp	..@j303
..@j302:
		mov	byte [bp-1365],3
		mov	word [bp-1354],3
		mov	word [bp-1352],0
		mov	word [bp-1350],9217
		jmp	..@j312
	ALIGN 2
..@j311:
		lea	ax,[bp-1350]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-1350]
		push	ax
		mov	al,byte [bp-1354]
		mov	byte [bp-1634],al
		mov	byte [bp-1633],0
		mov	si,word [bp-1634]
		mov	al,byte [bp+si-1094]
		mov	ah,0
		mov	cl,8
		shl	ax,cl
		mov	dx,0
		or	ax,1
		mov	word [bp-1632],ax
		lea	ax,[bp-1632]
		push	ax
		call	fpc_shortstr_concat
		add	word [bp-1354],1
		adc	word [bp-1352],0
..@j312:
		mov	al,byte [bp-1354]
		mov	byte [bp-1642],al
		mov	byte [bp-1641],0
		mov	si,word [bp-1642]
		mov	al,byte [bp+si-1094]
		mov	ah,0
		sub	ax,48
		cmp	ax,10
		jb	..@j322
		sub	ax,17
		cmp	ax,6
		jb	..@j322
		sub	ax,32
		cmp	ax,6
		jb	..@j322
..@j322:
		jc	..@j311
		jmp	..@j313
..@j313:
		lea	ax,[bp-1350]
		push	ax
		lea	ax,[bp-1364]
		push	ax
		call	fpc_val_longint_shortstr
		mov	word [bp-1358],ax
		mov	word [bp-1356],dx
		cmp	word [bp-1364],0
		jne	..@j329
		jmp	..@j330
..@j329:
		push	word [bp-4]
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		shl	ax,1
		rcl	dx,1
		shl	ax,1
		rcl	dx,1
		push	ax
		call	SYSTEM_$$_FREEMEM$POINTER$WORD
		lea	ax,[bp-838]
		push	ax
		call	SYSTEM_$$_CLOSE$TEXT
		call	FPC_IOCHECK
		jmp	..@j263
..@j330:
		jmp	..@j338
	ALIGN 2
..@j337:
		add	word [bp-1354],1
		adc	word [bp-1352],0
..@j338:
		mov	al,byte [bp-1354]
		mov	byte [bp-1640],al
		mov	byte [bp-1639],0
		mov	si,word [bp-1640]
		mov	al,byte [bp+si-1094]
		mov	ah,0
		cmp	ax,35
		je	..@j340
		cmp	ax,48
		je	..@j340
..@j340:
		je	..@j339
		jmp	..@j337
..@j339:
		mov	al,byte [bp-1354]
		mov	byte [bp-1638],al
		mov	byte [bp-1637],0
		mov	si,word [bp-1638]
		cmp	byte [bp+si-1094],35
		je	..@j341
		jmp	..@j342
..@j341:
		mov	word [bp-1362],-1
		mov	word [bp-1360],0
		lea	ax,[bp-1350]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-1632]
		push	ax
		lea	ax,[bp-1094]
		push	ax
		push	word [bp-1354]
		mov	ax,0
		mov	dl,byte [bp-1094]
		mov	dh,0
		mov	bx,word [bp-1354]
		mov	cx,word [bp-1352]
		sub	dx,bx
		sbb	ax,cx
		add	dx,1
		adc	ax,0
		push	dx
		call	fpc_shortstr_copy
		lea	ax,[bp-1632]
		push	ax
		call	fpc_shortstr_to_shortstr
		lea	ax,[bp-1350]
		push	ax
		mov	ax,word _$CHARSET$_Ld1
		push	ax
		call	fpc_shortstr_compare_equal
		cmp	dx,0
		jne	..@j360
		cmp	ax,0
		jne	..@j360
		jmp	..@j359
..@j359:
		mov	byte [bp-1365],1
..@j360:
		jmp	..@j367
..@j342:
		add	word [bp-1354],2
		adc	word [bp-1352],0
		mov	word [bp-1350],9217
		jmp	..@j371
	ALIGN 2
..@j370:
		lea	ax,[bp-1350]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-1350]
		push	ax
		mov	al,byte [bp-1354]
		mov	byte [bp-1636],al
		mov	byte [bp-1635],0
		mov	si,word [bp-1636]
		mov	al,byte [bp+si-1094]
		mov	ah,0
		mov	cl,8
		shl	ax,cl
		mov	dx,0
		or	ax,1
		mov	word [bp-1632],ax
		lea	ax,[bp-1632]
		push	ax
		call	fpc_shortstr_concat
		add	word [bp-1354],1
		adc	word [bp-1352],0
..@j371:
		mov	al,byte [bp-1354]
		mov	byte [bp-1644],al
		mov	byte [bp-1643],0
		mov	si,word [bp-1644]
		mov	al,byte [bp+si-1094]
		mov	ah,0
		sub	ax,48
		cmp	ax,10
		jb	..@j381
		sub	ax,17
		cmp	ax,6
		jb	..@j381
		sub	ax,32
		cmp	ax,6
		jb	..@j381
..@j381:
		jc	..@j370
		jmp	..@j372
..@j372:
		lea	ax,[bp-1350]
		push	ax
		lea	ax,[bp-1364]
		push	ax
		call	fpc_val_longint_shortstr
		mov	word [bp-1362],ax
		mov	word [bp-1360],dx
		cmp	word [bp-1364],0
		jne	..@j388
		jmp	..@j389
..@j388:
		push	word [bp-4]
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		shl	ax,1
		rcl	dx,1
		shl	ax,1
		rcl	dx,1
		push	ax
		call	SYSTEM_$$_FREEMEM$POINTER$WORD
		lea	ax,[bp-838]
		push	ax
		call	SYSTEM_$$_CLOSE$TEXT
		call	FPC_IOCHECK
		jmp	..@j263
..@j389:
		mov	dx,word [bp-1358]
		mov	ax,word [bp-1356]
		cmp	ax,word [bp-6]
		jg	..@j396
		jl	..@j397
		cmp	dx,word [bp-8]
		ja	..@j396
		jmp	..@j397
		jmp	..@j397
..@j396:
		mov	ax,word [bp-8]
		mov	word [bp-1376],ax
		mov	ax,word [bp-6]
		mov	word [bp-1374],ax
		mov	ax,word [bp-1358]
		mov	dx,word [bp-1356]
		add	ax,8192
		adc	dx,0
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		lea	ax,[bp-4]
		push	ax
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		shl	ax,1
		rcl	dx,1
		shl	ax,1
		rcl	dx,1
		push	ax
		call	SYSTEM_$$_REALLOCMEM$POINTER$WORD$$POINTER
		mov	bx,word [bp-4]
		mov	ax,word [bp-1376]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		lea	ax,[bx+si]
		push	ax
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		mov	bx,word [bp-1376]
		mov	cx,word [bp-1374]
		sub	ax,bx
		sbb	dx,cx
		push	dx
		push	ax
		call	CHARSET_$$_INITITEMS$PUNICODECHARMAPPING$LONGINT
..@j397:
		mov	byte [bp-1365],0
..@j367:
		mov	bx,word [bp-4]
		mov	ax,word [bp-1358]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	al,byte [bp-1365]
		mov	byte [bx+si+2],al
		mov	bx,word [bp-4]
		mov	ax,word [bp-1358]
		mov	si,ax
		mov	cl,2
		shl	si,cl
		mov	ax,word [bp-1362]
		mov	word [bx+si],ax
		mov	dx,word [bp-1358]
		mov	ax,word [bp-1356]
		cmp	ax,word [bp-1370]
		jg	..@j416
		jl	..@j417
		cmp	dx,word [bp-1372]
		ja	..@j416
		jmp	..@j417
		jmp	..@j417
..@j416:
		mov	ax,word [bp-1358]
		mov	word [bp-1372],ax
		mov	ax,word [bp-1356]
		mov	word [bp-1370],ax
..@j417:
..@j303:
..@j292:
		lea	ax,[bp-838]
		push	ax
		call	SYSTEM_$$_EOF$TEXT$$BOOLEAN
		mov	byte [bp-1646],al
		call	FPC_IOCHECK
		mov	al,byte [bp-1646]
		test	al,al
		jne	..@j293
		jmp	..@j291
..@j293:
		lea	ax,[bp-838]
		push	ax
		call	SYSTEM_$$_CLOSE$TEXT
		call	FPC_IOCHECK
		mov	ax,38
		push	ax
		call	fpc_getmem
		mov	word [bp-1368],ax
		mov	bx,word [bp-1368]
		mov	ax,word [bp-1372]
		mov	word [bx+25],ax
		mov	ax,word [bp-1370]
		mov	word [bx+27],ax
		mov	ax,word [bp-1368]
		push	ax
		mov	ax,20
		push	ax
		mov	ax,word [bp+8]
		push	ax
		call	fpc_shortstr_to_shortstr
		mov	bx,word [bp-1368]
		mov	ax,word [bp+4]
		mov	word [bx+21],ax
		mov	bx,word [bp-1368]
		mov	byte [bx+37],0
		mov	bx,word [bp-1368]
		mov	word [bx+35],0
		mov	bx,word [bp-1368]
		mov	ax,word [bp-4]
		mov	word [bx+23],ax
		mov	bx,word [bp-1368]
		push	word [bx+23]
		mov	bx,word [bp-1368]
		mov	ax,word [bx+25]
		mov	dx,word [bx+27]
		add	ax,1
		adc	dx,0
		push	dx
		push	ax
		mov	bx,word [bp-1368]
		lea	ax,[bx+31]
		push	ax
		call	CHARSET_$$_BUILDREVERSEMAP$PUNICODECHARMAPPING$LONGINT$LONGINT$$PREVERSECHARMAPPING
		mov	bx,word [bp-1368]
		mov	word [bx+29],ax
		mov	ax,word [bp-1368]
		mov	word [bp-2],ax
..@j263:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	CHARSET_$$_BUILDREVERSEMAP$PUNICODECHARMAPPING$LONGINT$LONGINT$$PREVERSECHARMAPPING
EXTERN	fpc_getmem
EXTERN	SYSTEM_$$_EOF$TEXT$$BOOLEAN
EXTERN	SYSTEM_$$_REALLOCMEM$POINTER$WORD$$POINTER
EXTERN	fpc_shortstr_compare_equal
EXTERN	_$CHARSET$_Ld1
EXTERN	fpc_shortstr_to_shortstr
EXTERN	fpc_shortstr_copy
EXTERN	SYSTEM_$$_CLOSE$TEXT
EXTERN	fpc_val_longint_shortstr
EXTERN	fpc_shortstr_concat
EXTERN	fpc_readln_end
EXTERN	FPC_IOCHECK
EXTERN	fpc_read_text_shortstr
EXTERN	SYSTEM_$$_FREEMEM$POINTER$WORD
EXTERN	SYSTEM_$$_IORESULT$$WORD
EXTERN	SYSTEM_$$_RESET$TEXT
EXTERN	SYSTEM_$$_ASSIGN$TEXT$SHORTSTRING
EXTERN	CHARSET_$$_INITITEMS$PUNICODECHARMAPPING$LONGINT
EXTERN	SYSTEM_$$_GETMEM$POINTER$WORD
