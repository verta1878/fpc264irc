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
	GLOBAL SYSUTILS_$$_FLOATTOTEXTFMT$PCHAR$EXTENDED$PCHAR$TFORMATSETTINGS$$SMALLINT
SYSUTILS_$$_FLOATTOTEXTFMT$PCHAR$EXTENDED$PCHAR$TFORMATSETTINGS$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,192
		mov	ax,word [bp+4]
		lea	di,[bp-176]
		push	ss
		pop	es
		mov	si,ax
		cld
		mov	cx,50
		rep
		movsw
		lea	ax,[bp-176]
		push	ax
		mov	ax,word INIT_$SYSUTILS_$$_TFORMATSETTINGS
		push	ax
		call	fpc_addref
		mov	ax,1
		push	ax
		lea	ax,[bp-188]
		push	ax
		lea	ax,[bp-182]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j7579
		wait fldz
		wait fld	tword [bp+8]
		wait fcompp
		fstsw	[bp-192]
		mov	ah,byte [bp-191]
		sahf
		jp	..@j7583
		ja	..@j7581
..@j7583:
		jmp	..@j7582
..@j7581:
		push	bp
		mov	ax,1
		push	ax
		call	SYSUTILS$_$FLOATTOTEXTFMT$crc533E3309_$$_GETSECTIONRANGE$SMALLINT
		jmp	..@j7588
..@j7582:
		wait fldz
		wait fld	tword [bp+8]
		wait fcompp
		fstsw	[bp-192]
		mov	ah,byte [bp-191]
		sahf
		jp	..@j7591
		jb	..@j7589
..@j7591:
		jmp	..@j7590
..@j7589:
		push	bp
		mov	ax,2
		push	ax
		call	SYSUTILS$_$FLOATTOTEXTFMT$crc533E3309_$$_GETSECTIONRANGE$SMALLINT
		jmp	..@j7596
..@j7590:
		push	bp
		mov	ax,3
		push	ax
		call	SYSUTILS$_$FLOATTOTEXTFMT$crc533E3309_$$_GETSECTIONRANGE$SMALLINT
..@j7596:
..@j7588:
		cmp	word [bp-54],0
		je	..@j7601
		jmp	..@j7602
..@j7601:
		push	word [bp+18]
		push	word [bp+16]
		push	word [bp+14]
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,15
		push	ax
		mov	ax,4
		push	ax
		lea	ax,[bp-176]
		push	ax
		call	SYSUTILS_$$_FLOATTOTEXT$crc274C3314
		mov	word [bp-2],ax
		jmp	..@j7617
..@j7602:
		push	bp
		call	SYSUTILS$_$FLOATTOTEXTFMT$crc533E3309_$$_GETFORMATOPTIONS
		cmp	word [bp-58],0
		je	..@j7622
		jmp	..@j7621
..@j7622:
		wait fld	tword [bp+8]
		wait fabs
		wait fld	tword [_$SYSUTILS$_Ld638]
		wait fcompp
		fstsw	[bp-192]
		mov	ah,byte [bp-191]
		sahf
		jp	..@j7623
		jbe	..@j7620
..@j7623:
		jmp	..@j7621
..@j7620:
		push	word [bp+18]
		push	word [bp+16]
		push	word [bp+14]
		push	word [bp+12]
		push	word [bp+10]
		push	word [bp+8]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,15
		push	ax
		mov	ax,4
		push	ax
		lea	ax,[bp-176]
		push	ax
		call	SYSUTILS_$$_FLOATTOTEXT$crc274C3314
		mov	word [bp-2],ax
		jmp	..@j7638
..@j7621:
		push	bp
		call	SYSUTILS$_$FLOATTOTEXTFMT$crc533E3309_$$_FLOATTOSTR
		push	bp
		call	SYSUTILS$_$FLOATTOTEXTFMT$crc533E3309_$$_PUTRESULT$$LONGINT
		mov	word [bp-2],ax
..@j7638:
..@j7617:
..@j7579:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-176]
		push	ax
		mov	ax,word INIT_$SYSUTILS_$$_TFORMATSETTINGS
		push	ax
		call	fpc_finalize
		pop	ax
		test	ax,ax
		je	..@j7580
		call	FPC_RERAISE
..@j7580:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	16
EXTERN	FPC_RERAISE
EXTERN	fpc_finalize
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSUTILS$_$FLOATTOTEXTFMT$crc533E3309_$$_PUTRESULT$$LONGINT
EXTERN	SYSUTILS$_$FLOATTOTEXTFMT$crc533E3309_$$_FLOATTOSTR
EXTERN	_$SYSUTILS$_Ld638
EXTERN	SYSUTILS$_$FLOATTOTEXTFMT$crc533E3309_$$_GETFORMATOPTIONS
EXTERN	SYSUTILS_$$_FLOATTOTEXT$crc274C3314
EXTERN	SYSUTILS$_$FLOATTOTEXTFMT$crc533E3309_$$_GETSECTIONRANGE$SMALLINT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_addref
EXTERN	INIT_$SYSUTILS_$$_TFORMATSETTINGS
