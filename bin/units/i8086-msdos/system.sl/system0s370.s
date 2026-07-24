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
	GLOBAL fpc_ansistr_compare
fpc_ansistr_compare:
	GLOBAL FPC_ANSISTR_COMPARE
FPC_ANSISTR_COMPARE:
		push	bp
		mov	bp,sp
		sub	sp,30
		mov	word [bp-12],0
		mov	word [bp-14],0
		mov	ax,1
		push	ax
		lea	ax,[bp-26]
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j9339
		mov	ax,word [bp+6]
		cmp	ax,word [bp+4]
		je	..@j9341
		jmp	..@j9342
..@j9341:
		mov	word [bp-2],0
		jmp	..@j9339
..@j9342:
		cmp	word [bp+6],0
		je	..@j9345
		jmp	..@j9346
..@j9345:
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j9349
		mov	bx,word [bx-2]
..@j9349:
		neg	bx
		mov	word [bp-2],bx
		jmp	..@j9339
..@j9346:
		cmp	word [bp+4],0
		je	..@j9350
		jmp	..@j9351
..@j9350:
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j9354
		mov	bx,word [bx-2]
..@j9354:
		mov	word [bp-2],bx
		jmp	..@j9339
..@j9351:
		push	word [bp+6]
		call	SYSTEM_$$_STRINGCODEPAGE$RAWBYTESTRING$$WORD
		mov	word [bp-30],ax
		mov	dx,word [bp-30]
		mov	ax,word [bp-30]
		sub	ax,1
		jbe	..@j9366
		jmp	..@j9365
..@j9366:
		mov	dx,word [U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE]
		jmp	..@j9364
..@j9365:
..@j9364:
		mov	word [bp-8],dx
		push	word [bp+4]
		call	SYSTEM_$$_STRINGCODEPAGE$RAWBYTESTRING$$WORD
		mov	word [bp-30],ax
		mov	dx,word [bp-30]
		mov	ax,word [bp-30]
		sub	ax,1
		jbe	..@j9380
		jmp	..@j9379
..@j9380:
		mov	dx,word [U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE]
		jmp	..@j9378
..@j9379:
..@j9378:
		mov	word [bp-10],dx
		mov	ax,word [bp-8]
		cmp	ax,word [bp-10]
		je	..@j9383
		jmp	..@j9384
..@j9383:
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j9387
		mov	bx,word [bx-2]
..@j9387:
		mov	word [bp-4],bx
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j9390
		mov	bx,word [bx-2]
..@j9390:
		mov	word [bp-6],bx
		mov	ax,word [bp-4]
		cmp	ax,word [bp-6]
		jg	..@j9391
		jmp	..@j9392
..@j9391:
		mov	ax,word [bp-6]
		mov	word [bp-4],ax
..@j9392:
		cmp	word [bp-4],0
		jg	..@j9395
		jmp	..@j9396
..@j9395:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		push	word [bp-4]
		call	SYSTEM_$$_COMPAREBYTE$formal$formal$SMALLINT$$SMALLINT
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		je	..@j9405
		jmp	..@j9406
..@j9405:
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j9409
		mov	bx,word [bx-2]
..@j9409:
		mov	si,word [bp+4]
		test	si,si
		je	..@j9410
		mov	si,word [si-2]
..@j9410:
		sub	bx,si
		mov	word [bp-2],bx
..@j9406:
		jmp	..@j9411
..@j9396:
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j9414
		mov	bx,word [bx-2]
..@j9414:
		mov	si,word [bp+4]
		test	si,si
		je	..@j9415
		mov	si,word [si-2]
..@j9415:
		sub	bx,si
		mov	word [bp-2],bx
..@j9411:
		jmp	..@j9416
..@j9384:
		lea	ax,[bp-12]
		push	ax
		push	word [bp+6]
		call	fpc_ansistr_assign
		lea	ax,[bp-14]
		push	ax
		push	word [bp+4]
		call	fpc_ansistr_assign
		lea	ax,[bp-12]
		push	ax
		mov	ax,-535
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
		lea	ax,[bp-14]
		push	ax
		mov	ax,-535
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
		push	word [bp-12]
		push	word [bp-14]
		call	fpc_ansistr_compare
		mov	word [bp-2],ax
..@j9416:
..@j9339:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-12]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-14]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j9340
		call	FPC_RERAISE
..@j9340:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
EXTERN	fpc_ansistr_assign
EXTERN	SYSTEM_$$_COMPAREBYTE$formal$formal$SMALLINT$$SMALLINT
EXTERN	U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE
EXTERN	SYSTEM_$$_STRINGCODEPAGE$RAWBYTESTRING$$WORD
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
