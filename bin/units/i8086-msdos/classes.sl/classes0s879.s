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
	GLOBAL CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEVARIANT$VARIANT
CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEVARIANT$VARIANT:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	word [bp-16],0
		mov	ax,1
		push	ax
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-6]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j21594
		mov	ax,word [bp+4]
		and	ax,4095
		test	ax,ax
		je	..@j21598
		dec	ax
		je	..@j21599
		sub	ax,1
		jb	..@j21597
		sub	ax,1
		jbe	..@j21600
		dec	ax
		je	..@j21604
		dec	ax
		je	..@j21605
		dec	ax
		je	..@j21603
		dec	ax
		je	..@j21606
		dec	ax
		je	..@j21607
		sub	ax,3
		je	..@j21602
		sub	ax,5
		je	..@j21600
		sub	ax,4
		je	..@j21600
		dec	ax
		je	..@j21601
		sub	ax,235
		je	..@j21607
		jmp	..@j21597
..@j21598:
		push	word [bp+20]
		mov	ax,0
		push	ax
		mov	ax,13
		push	ax
		call	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEVALUE$TVALUETYPE
		jmp	..@j21596
..@j21599:
		push	word [bp+20]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEVALUE$TVALUETYPE
		jmp	..@j21596
..@j21600:
		push	word [bp+20]
		sub	sp,16
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,8
		rep
		movsw
		call	SYSTEM_$$_assign$VARIANT$$INT64
		push	ax
		push	bx
		push	cx
		push	dx
		mov	bx,word [bp+20]
		mov	bx,word [bx]
		mov	ax,word [bx+80]
		call	ax
		jmp	..@j21596
..@j21601:
		push	word [bp+20]
		sub	sp,16
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,8
		rep
		movsw
		call	SYSTEM_$$_assign$VARIANT$$QWORD
		push	ax
		push	bx
		push	cx
		push	dx
		mov	bx,word [bp+20]
		mov	bx,word [bx]
		mov	ax,word [bx+82]
		call	ax
		jmp	..@j21596
..@j21602:
		push	word [bp+20]
		sub	sp,16
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,8
		rep
		movsw
		call	SYSTEM_$$_assign$VARIANT$$BOOLEAN
		push	ax
		mov	bx,word [bp+20]
		mov	bx,word [bx]
		mov	ax,word [bx+68]
		call	ax
		jmp	..@j21596
..@j21603:
		push	word [bp+20]
		sub	sp,16
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,8
		rep
		movsw
		call	SYSTEM_$$_assign$VARIANT$$CURRENCY
		sub	sp,8
		mov	bx,sp
		wait fistp	qword [bx]
		DB	09bh
		mov	bx,word [bp+20]
		mov	bx,word [bx]
		mov	ax,word [bx+76]
		call	ax
		jmp	..@j21596
..@j21604:
		push	word [bp+20]
		sub	sp,16
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,8
		rep
		movsw
		call	SYSTEM_$$_assign$VARIANT$$SINGLE
		sub	sp,4
		mov	bx,sp
		wait fstp	dword [bx]
		DB	09bh
		mov	bx,word [bp+20]
		mov	bx,word [bx]
		mov	ax,word [bx+72]
		call	ax
		jmp	..@j21596
..@j21605:
		push	word [bp+20]
		sub	sp,16
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,8
		rep
		movsw
		call	SYSTEM_$$_assign$VARIANT$$EXTENDED
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		mov	bx,word [bp+20]
		mov	bx,word [bx]
		mov	ax,word [bx+70]
		call	ax
		jmp	..@j21596
..@j21606:
		push	word [bp+20]
		sub	sp,16
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,8
		rep
		movsw
		call	SYSTEM_$$_assign$VARIANT$$TDATETIME
		sub	sp,8
		mov	bx,sp
		wait fstp	qword [bx]
		DB	09bh
		mov	bx,word [bp+20]
		mov	bx,word [bx]
		mov	ax,word [bx+74]
		call	ax
		jmp	..@j21596
..@j21607:
		push	word [bp+20]
		lea	ax,[bp-16]
		push	ax
		sub	sp,16
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,8
		rep
		movsw
		call	SYSTEM_$$_assign$VARIANT$$WIDESTRING
		push	word [bp-16]
		mov	bx,word [bp+20]
		mov	bx,word [bx]
		mov	ax,word [bx+92]
		call	ax
		jmp	..@j21596
..@j21597:
..@j21666:
		mov	ax,word VMT_$CLASSES_$$_EWRITEERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SUNSUPPORTEDPROPERTYVARIANTTYPE+2]
		mov	ax,word [bp+4]
		mov	dx,0
		mov	word [bp-20],ax
		mov	word [bp-18],dx
		mov	word [bp-22],0
		lea	ax,[bp-22]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j21666
		push	ax
		push	bp
		call	fpc_raiseexception
..@j21596:
..@j21594:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-16]
		push	ax
		call	fpc_unicodestr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j21595
		call	FPC_RERAISE
..@j21595:
		mov	sp,bp
		pop	bp
		ret	18
EXTERN	FPC_RERAISE
EXTERN	fpc_unicodestr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SUNSUPPORTEDPROPERTYVARIANTTYPE
EXTERN	VMT_$CLASSES_$$_EWRITEERROR
EXTERN	SYSTEM_$$_assign$VARIANT$$WIDESTRING
EXTERN	SYSTEM_$$_assign$VARIANT$$TDATETIME
EXTERN	SYSTEM_$$_assign$VARIANT$$EXTENDED
EXTERN	SYSTEM_$$_assign$VARIANT$$SINGLE
EXTERN	SYSTEM_$$_assign$VARIANT$$CURRENCY
EXTERN	SYSTEM_$$_assign$VARIANT$$BOOLEAN
EXTERN	SYSTEM_$$_assign$VARIANT$$QWORD
EXTERN	SYSTEM_$$_assign$VARIANT$$INT64
EXTERN	CLASSES$_$TBINARYOBJECTWRITER_$__$$_WRITEVALUE$TVALUETYPE
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
