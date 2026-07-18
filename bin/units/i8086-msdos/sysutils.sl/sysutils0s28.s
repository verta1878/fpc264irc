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
	GLOBAL SYSUTILS$_$EXPANDFILENAMECASE$crc10CB95C2_$$_TRYCASE$RAWBYTESTRING$RAWBYTESTRING
SYSUTILS$_$EXPANDFILENAMECASE$crc10CB95C2_$$_TRYCASE$RAWBYTESTRING$RAWBYTESTRING:
		push	bp
		mov	bp,sp
		sub	sp,66
		lea	ax,[bp-24]
		push	ax
		mov	ax,word INIT_$SYSUTILS_$$_TRAWBYTESEARCHREC
		push	ax
		call	fpc_initialize
		mov	word [bp-32],0
		mov	word [bp-34],0
		mov	word [bp-36],0
		mov	word [bp-60],0
		mov	word [bp-58],0
		mov	word [bp-56],0
		mov	word [bp-54],0
		mov	word [bp-52],0
		mov	ax,1
		push	ax
		lea	ax,[bp-48]
		push	ax
		lea	ax,[bp-42]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j1305
		mov	word [bp-30],1
		jmp	..@j1310
	ALIGN 2
..@j1309:
		inc	word [bp-30]
..@j1310:
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j1313
		mov	bx,word [bx-2]
..@j1313:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	dx,word [bp-30]
		mov	bx,0
		cmp	ax,bx
		jg	..@j1312
		jl	..@j1311
		cmp	cx,dx
		jae	..@j1312
		jmp	..@j1311
..@j1312:
		mov	bx,word [bp+4]
		mov	si,word [bp-30]
		lea	bx,[bx+si-1]
		mov	al,byte [bx]
		mov	ah,0
		mov	si,ax
		mov	cl,4
		shr	si,cl
		shl	si,1
		mov	cx,ax
		and	cl,15
		test	ax,ax
		jbe	..@j1318
		test	al,0
		jmp	..@j1319
..@j1318:
		mov	ax,1
		shl	ax,cl
		test	word [TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS+si],ax
..@j1319:
		mov	al,0
		je	..@j1320
		inc	ax
..@j1320:
		test	al,al
		je	..@j1309
		jmp	..@j1311
..@j1311:
		lea	ax,[bp-32]
		push	ax
		push	word [bp+4]
		mov	ax,1
		push	ax
		mov	ax,word [bp-30]
		dec	ax
		push	ax
		call	fpc_ansistr_copy
		jmp	..@j1330
	ALIGN 2
..@j1329:
		inc	word [bp-30]
..@j1330:
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j1333
		mov	bx,word [bx-2]
..@j1333:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	bx,word [bp-30]
		mov	dx,0
		cmp	ax,dx
		jg	..@j1332
		jl	..@j1331
		cmp	cx,bx
		jae	..@j1332
		jmp	..@j1331
..@j1332:
		mov	bx,word [bp+4]
		mov	si,word [bp-30]
		lea	bx,[bx+si-1]
		mov	al,byte [bx]
		mov	ah,0
		mov	si,ax
		mov	cl,4
		shr	si,cl
		shl	si,1
		mov	cx,ax
		and	cl,15
		test	ax,ax
		jbe	..@j1338
		test	al,0
		jmp	..@j1339
..@j1338:
		mov	ax,1
		shl	ax,cl
		test	word [TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS+si],ax
..@j1339:
		mov	al,0
		je	..@j1340
		inc	ax
..@j1340:
		test	al,al
		jne	..@j1329
		jmp	..@j1331
..@j1331:
		lea	ax,[bp-34]
		push	ax
		push	word [bp+4]
		push	word [bp-30]
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j1349
		mov	bx,word [bx-2]
..@j1349:
		mov	ax,bx
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	dx,word [bp-30]
		dec	dx
		mov	bx,0
		sub	cx,dx
		sbb	ax,bx
		push	cx
		call	fpc_ansistr_copy
		cmp	word [bp+6],0
		je	..@j1350
		jmp	..@j1352
..@j1352:
		mov	bx,word [bp+6]
		mov	si,word [bp+6]
		test	si,si
		je	..@j1355
		mov	si,word [si-2]
..@j1355:
		lea	bx,[bx+si-1]
		mov	al,byte [bx]
		mov	ah,0
		mov	si,ax
		mov	cl,4
		shr	si,cl
		shl	si,1
		mov	cx,ax
		and	cl,15
		test	ax,ax
		jbe	..@j1358
		test	al,0
		jmp	..@j1359
..@j1358:
		mov	ax,1
		shl	ax,cl
		test	word [TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS+si],ax
..@j1359:
		mov	al,0
		je	..@j1360
		inc	ax
..@j1360:
		test	al,al
		jne	..@j1350
		jmp	..@j1351
..@j1350:
		lea	ax,[bp-36]
		push	ax
		push	word [bp+6]
		call	fpc_ansistr_assign
		jmp	..@j1365
..@j1351:
		lea	ax,[bp-36]
		push	ax
		push	word [bp+6]
		lea	ax,[bp-52]
		push	ax
		mov	ax,word _$SYSUTILS$_Ld620
		push	ax
		call	SYSTEM_$$_TOSINGLEBYTEFILESYSTEMENCODEDFILENAME$RAWBYTESTRING$$RAWBYTESTRING
		push	word [bp-52]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
..@j1365:
		lea	ax,[bp-52]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-52]
		push	ax
		push	word [bp-36]
		lea	ax,[bp-54]
		push	ax
		lea	ax,[bp-56]
		push	ax
		mov	ax,word U_$SYSTEM_$$_ALLFILESMASK
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-56]
		call	SYSTEM_$$_TOSINGLEBYTEFILESYSTEMENCODEDFILENAME$RAWBYTESTRING$$RAWBYTESTRING
		push	word [bp-54]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		push	word [bp-52]
		mov	ax,0
		push	ax
		mov	ax,511
		push	ax
		lea	ax,[bp-24]
		push	ax
		mov	ax,word INIT_$SYSUTILS_$$_TRAWBYTESEARCHREC
		push	ax
		call	fpc_finalize
		lea	ax,[bp-24]
		push	ax
		call	SYSUTILS_$$_FINDFIRST$RAWBYTESTRING$LONGINT$TRAWBYTESEARCHREC$$LONGINT
		mov	word [bp-28],ax
		mov	word [bp-26],dx
		jmp	..@j1405
	ALIGN 2
..@j1404:
		lea	ax,[bp-58]
		push	ax
		push	word [bp-32]
		call	SYSTEM_$$_UPCASE$ANSISTRING$$ANSISTRING
		push	word [bp-58]
		lea	ax,[bp-60]
		push	ax
		push	word [bp-8]
		call	SYSTEM_$$_UPCASE$ANSISTRING$$ANSISTRING
		push	word [bp-60]
		call	fpc_ansistr_compare_equal
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,0
		jne	..@j1408
		cmp	cx,0
		jne	..@j1408
		jmp	..@j1407
..@j1407:
		mov	bx,word [bp-32]
		test	bx,bx
		je	..@j1423
		mov	bx,word [bx-2]
..@j1423:
		mov	si,word [bp+4]
		test	si,si
		je	..@j1424
		mov	si,word [si-2]
..@j1424:
		cmp	bx,si
		je	..@j1421
		jmp	..@j1422
..@j1421:
		mov	bx,word [bp+8]
		inc	byte [bx-25]
		mov	bx,word [bp+8]
		cmp	byte [bx-25],1
		je	..@j1425
		jmp	..@j1426
..@j1425:
		mov	bx,word [bp+8]
		lea	ax,[bx-28]
		push	ax
		push	word [bp-36]
		push	word [bp-8]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
..@j1426:
		jmp	..@j1435
..@j1422:
		mov	ax,word [bp-12]
		mov	dx,word [bp-10]
		and	ax,16
		mov	dx,0
		cmp	dx,0
		jne	..@j1437
		cmp	ax,16
		jne	..@j1437
		jmp	..@j1436
..@j1436:
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-56]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-56]
		push	ax
		mov	ax,word [bp-36]
		mov	word [bp-66],ax
		mov	ax,word [bp-8]
		mov	word [bp-64],ax
		lea	ax,[bp-54]
		push	ax
		mov	ax,word _$SYSUTILS$_Ld620
		push	ax
		call	SYSTEM_$$_TOSINGLEBYTEFILESYSTEMENCODEDFILENAME$RAWBYTESTRING$$RAWBYTESTRING
		mov	ax,word [bp-54]
		mov	word [bp-62],ax
		lea	ax,[bp-66]
		push	ax
		mov	ax,2
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
		push	word [bp-56]
		push	word [bp-34]
		call	SYSUTILS$_$EXPANDFILENAMECASE$crc10CB95C2_$$_TRYCASE$RAWBYTESTRING$RAWBYTESTRING
..@j1437:
..@j1435:
..@j1408:
		mov	bx,word [bp+8]
		cmp	byte [bx-25],2
		jb	..@j1456
		jmp	..@j1457
..@j1456:
		lea	ax,[bp-24]
		push	ax
		call	SYSUTILS_$$_FINDNEXT$TRAWBYTESEARCHREC$$LONGINT
		mov	word [bp-28],ax
		mov	word [bp-26],dx
..@j1457:
..@j1405:
		mov	ax,word [bp-28]
		mov	dx,word [bp-26]
		cmp	dx,0
		jne	..@j1406
		cmp	ax,0
		jne	..@j1406
		jmp	..@j1462
..@j1462:
		mov	bx,word [bp+8]
		cmp	byte [bx-25],2
		jb	..@j1404
		jmp	..@j1406
..@j1406:
		lea	ax,[bp-24]
		push	ax
		call	SYSUTILS_$$_FINDCLOSE$TRAWBYTESEARCHREC
..@j1305:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-60]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-58]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-56]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-54]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-52]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-24]
		push	ax
		mov	ax,word INIT_$SYSUTILS_$$_TRAWBYTESEARCHREC
		push	ax
		call	fpc_finalize
		lea	ax,[bp-32]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-34]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-36]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j1306
		call	FPC_RERAISE
..@j1306:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSUTILS_$$_FINDCLOSE$TRAWBYTESEARCHREC
EXTERN	SYSUTILS_$$_FINDNEXT$TRAWBYTESEARCHREC$$LONGINT
EXTERN	fpc_ansistr_concat_multi
EXTERN	fpc_ansistr_compare_equal
EXTERN	SYSTEM_$$_UPCASE$ANSISTRING$$ANSISTRING
EXTERN	SYSUTILS_$$_FINDFIRST$RAWBYTESTRING$LONGINT$TRAWBYTESEARCHREC$$LONGINT
EXTERN	fpc_finalize
EXTERN	fpc_shortstr_to_ansistr
EXTERN	U_$SYSTEM_$$_ALLFILESMASK
EXTERN	fpc_ansistr_decr_ref
EXTERN	fpc_ansistr_concat
EXTERN	SYSTEM_$$_TOSINGLEBYTEFILESYSTEMENCODEDFILENAME$RAWBYTESTRING$$RAWBYTESTRING
EXTERN	_$SYSUTILS$_Ld620
EXTERN	fpc_ansistr_assign
EXTERN	fpc_ansistr_copy
EXTERN	TC_$SYSTEM_$$_ALLOWDIRECTORYSEPARATORS
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_initialize
EXTERN	INIT_$SYSUTILS_$$_TRAWBYTESEARCHREC
