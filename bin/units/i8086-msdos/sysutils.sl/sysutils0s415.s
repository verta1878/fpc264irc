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
	GLOBAL SYSUTILS_$$_GETTEMPFILENAME$PCHAR$PCHAR$LONGWORD$PCHAR$$LONGWORD
SYSUTILS_$$_GETTEMPFILENAME$PCHAR$PCHAR$LONGWORD$PCHAR$$LONGWORD:
		push	bp
		mov	bp,sp
		sub	sp,32
		mov	word [bp-6],0
		mov	word [bp-8],0
		mov	word [bp-26],0
		mov	ax,1
		push	ax
		lea	ax,[bp-22]
		push	ax
		lea	ax,[bp-16]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j13511
		lea	ax,[bp-6]
		push	ax
		push	word [bp+10]
		call	SYSUTILS_$$_STRPAS$PCHAR$$ANSISTRING
		mov	ax,word [bp+6]
		mov	dx,word [bp+8]
		cmp	dx,0
		jne	..@j13517
		cmp	ax,0
		jne	..@j13517
		jmp	..@j13518
..@j13517:
		lea	ax,[bp-6]
		push	ax
		push	word [bp-6]
		lea	ax,[bp-26]
		push	ax
		mov	ax,word _$SYSUTILS$_Ld679
		push	ax
		mov	dx,word [bp+6]
		mov	ax,word [bp+8]
		mov	word [bp-30],dx
		mov	word [bp-28],ax
		mov	word [bp-32],0
		lea	ax,[bp-32]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS_$$_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
		push	word [bp-26]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
..@j13518:
		lea	ax,[bp-8]
		push	ax
		lea	ax,[bp-26]
		push	ax
		push	word [bp+12]
		call	SYSUTILS_$$_STRPAS$PCHAR$$ANSISTRING
		push	word [bp-26]
		push	word [bp-6]
		call	SYSUTILS_$$_GETTEMPFILENAME$ANSISTRING$ANSISTRING$$ANSISTRING
		mov	bx,word [bp-8]
		test	bx,bx
		je	..@j13547
		mov	bx,word [bx-2]
..@j13547:
		mov	word [bp-10],bx
		cmp	word [bp-10],0
		jg	..@j13548
		jmp	..@j13549
..@j13548:
		mov	ax,word [bp-8]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word [bp-10]
		inc	ax
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
..@j13549:
		mov	dx,word [bp+6]
		mov	ax,word [bp+8]
		cmp	ax,0
		jne	..@j13556
		cmp	dx,0
		jne	..@j13556
		jmp	..@j13557
..@j13556:
		mov	ax,word [bp+6]
		mov	word [bp-4],ax
		mov	ax,word [bp+8]
		mov	word [bp-2],ax
		jmp	..@j13560
..@j13557:
		mov	word [bp-4],1
		mov	word [bp-2],0
..@j13560:
..@j13511:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-26]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-6]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-8]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j13512
		call	FPC_RERAISE
..@j13512:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	SYSUTILS_$$_GETTEMPFILENAME$ANSISTRING$ANSISTRING$$ANSISTRING
EXTERN	fpc_ansistr_concat
EXTERN	SYSUTILS_$$_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
EXTERN	_$SYSUTILS$_Ld679
EXTERN	SYSUTILS_$$_STRPAS$PCHAR$$ANSISTRING
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
