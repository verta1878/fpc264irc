BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TSTREAM_$__$$_READRESHEADER
CLASSES$_$TSTREAM_$__$$_READRESHEADER:
		push	bp
		mov	bp,sp
		sub	sp,34
		mov	ax,1
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-10]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j1267
		push	word [bp+4]
		call	CLASSES$_$TSTREAM_$__$$_READBYTE$$BYTE
		cmp	al,255
		jne	..@j1271
		jmp	..@j1272
..@j1271:
..@j1275:
		mov	ax,word VMT_$CLASSES_$$_EINVALIDIMAGE
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SINVALIDIMAGE+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j1275
		push	ax
		push	bp
		call	fpc_raiseexception
..@j1272:
		push	word [bp+4]
		call	CLASSES$_$TSTREAM_$__$$_READWORD$$WORD
		mov	word [bp-20],ax
		mov	ax,word [bp-20]
		mov	word [bp-2],ax
		cmp	word [bp-2],10
		jne	..@j1296
		jmp	..@j1297
..@j1296:
..@j1298:
		mov	ax,word VMT_$CLASSES_$$_EINVALIDIMAGE
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SINVALIDIMAGE+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j1298
		push	ax
		push	bp
		call	fpc_raiseexception
..@j1297:
		jmp	..@j1312
	ALIGN 2
..@j1311:
..@j1312:
		push	word [bp+4]
		call	CLASSES$_$TSTREAM_$__$$_READBYTE$$BYTE
		test	al,al
		jne	..@j1311
		jmp	..@j1313
..@j1313:
		push	word [bp+4]
		call	CLASSES$_$TSTREAM_$__$$_READWORD$$WORD
		mov	word [bp-20],ax
		mov	ax,word [bp-20]
		mov	word [bp-4],ax
		cmp	word [bp-4],4144
		jne	..@j1324
		jmp	..@j1325
..@j1324:
..@j1326:
		mov	ax,word VMT_$CLASSES_$$_EINVALIDIMAGE
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SINVALIDIMAGE+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j1326
		push	ax
		push	bp
		call	fpc_raiseexception
..@j1325:
		push	word [bp+4]
		call	CLASSES$_$TSTREAM_$__$$_READDWORD$$LONGWORD
..@j1267:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j1269
		mov	ax,word VMT_$CLASSES_$$_EINVALIDIMAGE
		push	ax
		call	fpc_catches
		test	ax,ax
		je	..@j1341
		mov	word [bp-20],ax
		mov	ax,1
		push	ax
		lea	ax,[bp-32]
		push	ax
		lea	ax,[bp-26]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j1342
		call	fpc_popaddrstack
		call	fpc_reraise
..@j1342:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j1344
		call	FPC_RAISE_NESTED
..@j1344:
		call	FPC_DONEEXCEPTION
		jmp	..@j1269
..@j1341:
		mov	ax,1
		push	ax
		lea	ax,[bp-30]
		push	ax
		lea	ax,[bp-24]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j1345
..@j1346:
		mov	ax,word VMT_$CLASSES_$$_EINVALIDIMAGE
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SINVALIDIMAGE+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j1346
		push	ax
		push	bp
		call	fpc_raiseexception
..@j1345:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j1359
		call	FPC_RAISE_NESTED
..@j1359:
		call	FPC_DONEEXCEPTION
		jmp	..@j1269
..@j1269:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	fpc_catches
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TSTREAM_$__$$_READDWORD$$LONGWORD
EXTERN	CLASSES$_$TSTREAM_$__$$_READWORD$$WORD
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SINVALIDIMAGE
EXTERN	VMT_$CLASSES_$$_EINVALIDIMAGE
EXTERN	CLASSES$_$TSTREAM_$__$$_READBYTE$$BYTE
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
