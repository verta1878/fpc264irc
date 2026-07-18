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
	GLOBAL CLASSES$_$TREADER_$__$$_READSTRING$$ANSISTRING
CLASSES$_$TREADER_$__$$_READSTRING$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,24
		mov	word [bp-24],0
		mov	word [bp-22],0
		mov	word [bp-20],0
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
		jne	..@j20635
		mov	bx,word [bp+6]
		push	word [bx+9]
		mov	bx,word [bp+6]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+52]
		call	ax
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-4]
		cmp	ax,6
		je	..@j20643
		cmp	ax,12
		je	..@j20643
		cmp	ax,20
		je	..@j20643
..@j20643:
		je	..@j20641
		jmp	..@j20642
..@j20641:
		mov	bx,word [bp+6]
		push	word [bx+9]
		mov	ax,word [bp+4]
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		mov	bx,word [bp+6]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+88]
		call	ax
		cmp	word [bp-4],20
		je	..@j20650
		jmp	..@j20651
..@j20650:
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-20]
		push	ax
		lea	ax,[bp-22]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx]
		call	SYSTEM_$$_UTF8DECODE$RAWBYTESTRING$$UNICODESTRING
		push	word [bp-22]
		mov	ax,0
		push	ax
		call	fpc_unicodestr_to_ansistr
		push	word [bp-20]
		call	fpc_ansistr_assign
..@j20651:
		jmp	..@j20666
..@j20642:
		mov	ax,word [bp-4]
		cmp	ax,18
		je	..@j20669
..@j20669:
		je	..@j20667
		jmp	..@j20668
..@j20667:
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-20]
		push	ax
		mov	bx,word [bp+6]
		push	word [bx+9]
		lea	ax,[bp-24]
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+90]
		call	ax
		push	word [bp-24]
		mov	ax,0
		push	ax
		call	fpc_unicodestr_to_ansistr
		push	word [bp-20]
		call	fpc_ansistr_assign
		jmp	..@j20684
..@j20668:
		mov	ax,word [bp-4]
		cmp	ax,21
		je	..@j20687
..@j20687:
		je	..@j20685
		jmp	..@j20686
..@j20685:
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-20]
		push	ax
		mov	bx,word [bp+6]
		push	word [bx+9]
		lea	ax,[bp-22]
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx+9]
		mov	bx,word [bx]
		mov	ax,word [bx+92]
		call	ax
		push	word [bp-22]
		mov	ax,0
		push	ax
		call	fpc_unicodestr_to_ansistr
		push	word [bp-20]
		call	fpc_ansistr_assign
		jmp	..@j20702
..@j20686:
..@j20703:
		mov	ax,word VMT_$CLASSES_$$_EREADERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SINVALIDPROPERTYVALUE+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j20703
		push	ax
		push	bp
		call	fpc_raiseexception
..@j20702:
..@j20684:
..@j20666:
..@j20635:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-24]
		push	ax
		call	fpc_unicodestr_decr_ref
		lea	ax,[bp-22]
		push	ax
		call	fpc_unicodestr_decr_ref
		lea	ax,[bp-20]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j20636
		call	FPC_RERAISE
..@j20636:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	fpc_unicodestr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SINVALIDPROPERTYVALUE
EXTERN	VMT_$CLASSES_$$_EREADERROR
EXTERN	fpc_ansistr_assign
EXTERN	fpc_unicodestr_to_ansistr
EXTERN	SYSTEM_$$_UTF8DECODE$RAWBYTESTRING$$UNICODESTRING
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
