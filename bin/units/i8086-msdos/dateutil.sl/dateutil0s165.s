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
	GLOBAL DATEUTILS_$$_INVALIDDATETIMEERROR$WORD$WORD$WORD$WORD$WORD$WORD$WORD$TDATETIME
DATEUTILS_$$_INVALIDDATETIMEERROR$WORD$WORD$WORD$WORD$WORD$WORD$WORD$TDATETIME:
		push	bp
		mov	bp,sp
		sub	sp,42
		mov	word [bp-16],0
		mov	word [bp-42],0
		mov	word [bp-40],0
		mov	word [bp-32],0
		mov	ax,1
		push	ax
		lea	ax,[bp-28]
		push	ax
		lea	ax,[bp-22]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j2688
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,4
		rep
		movsw
		lea	ax,[bp-2]
		push	ax
		lea	ax,[bp-4]
		push	ax
		lea	ax,[bp-6]
		push	ax
		lea	ax,[bp-8]
		push	ax
		lea	ax,[bp-10]
		push	ax
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-14]
		push	ax
		call	DATEUTILS_$$_DECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD
		lea	ax,[bp-16]
		push	ax
		push	bp
		lea	ax,[bp-32]
		push	ax
		push	word [bp+24]
		push	word [bp-2]
		mov	ax,word _$DATEUTILS$_Ld19
		push	ax
		call	DATEUTILS$_$INVALIDDATETIMEERROR$crc763061CC_$$_DOFIELD$WORD$WORD$ANSISTRING$$ANSISTRING
		push	word [bp-32]
		call	fpc_ansistr_assign
		lea	ax,[bp-16]
		push	ax
		mov	ax,word [bp-16]
		mov	word [bp-38],ax
		lea	ax,[bp-40]
		push	ax
		mov	al,byte [TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS+5]
		mov	ah,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_char_to_ansistr
		mov	ax,word [bp-40]
		mov	word [bp-36],ax
		push	bp
		lea	ax,[bp-42]
		push	ax
		push	word [bp+22]
		push	word [bp-4]
		mov	ax,word _$DATEUTILS$_Ld20
		push	ax
		call	DATEUTILS$_$INVALIDDATETIMEERROR$crc763061CC_$$_DOFIELD$WORD$WORD$ANSISTRING$$ANSISTRING
		mov	ax,word [bp-42]
		mov	word [bp-34],ax
		lea	ax,[bp-38]
		push	ax
		mov	ax,2
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
		lea	ax,[bp-16]
		push	ax
		mov	ax,word [bp-16]
		mov	word [bp-38],ax
		lea	ax,[bp-42]
		push	ax
		mov	al,byte [TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS+5]
		mov	ah,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_char_to_ansistr
		mov	ax,word [bp-42]
		mov	word [bp-36],ax
		push	bp
		lea	ax,[bp-40]
		push	ax
		push	word [bp+20]
		push	word [bp-6]
		mov	ax,word _$DATEUTILS$_Ld20
		push	ax
		call	DATEUTILS$_$INVALIDDATETIMEERROR$crc763061CC_$$_DOFIELD$WORD$WORD$ANSISTRING$$ANSISTRING
		mov	ax,word [bp-40]
		mov	word [bp-34],ax
		lea	ax,[bp-38]
		push	ax
		mov	ax,2
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
		lea	ax,[bp-16]
		push	ax
		mov	ax,word [bp-16]
		mov	word [bp-38],ax
		mov	ax,word _$DATEUTILS$_Ld21
		mov	word [bp-36],ax
		push	bp
		lea	ax,[bp-42]
		push	ax
		push	word [bp+18]
		push	word [bp-8]
		mov	ax,word _$DATEUTILS$_Ld20
		push	ax
		call	DATEUTILS$_$INVALIDDATETIMEERROR$crc763061CC_$$_DOFIELD$WORD$WORD$ANSISTRING$$ANSISTRING
		mov	ax,word [bp-42]
		mov	word [bp-34],ax
		lea	ax,[bp-38]
		push	ax
		mov	ax,2
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
		lea	ax,[bp-16]
		push	ax
		mov	ax,word [bp-16]
		mov	word [bp-38],ax
		lea	ax,[bp-42]
		push	ax
		mov	al,byte [TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS+6]
		mov	ah,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_char_to_ansistr
		mov	ax,word [bp-42]
		mov	word [bp-36],ax
		push	bp
		lea	ax,[bp-40]
		push	ax
		push	word [bp+16]
		push	word [bp-10]
		mov	ax,word _$DATEUTILS$_Ld20
		push	ax
		call	DATEUTILS$_$INVALIDDATETIMEERROR$crc763061CC_$$_DOFIELD$WORD$WORD$ANSISTRING$$ANSISTRING
		mov	ax,word [bp-40]
		mov	word [bp-34],ax
		lea	ax,[bp-38]
		push	ax
		mov	ax,2
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
		lea	ax,[bp-16]
		push	ax
		mov	ax,word [bp-16]
		mov	word [bp-38],ax
		lea	ax,[bp-42]
		push	ax
		mov	al,byte [TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS+6]
		mov	ah,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_char_to_ansistr
		mov	ax,word [bp-42]
		mov	word [bp-36],ax
		push	bp
		lea	ax,[bp-40]
		push	ax
		push	word [bp+14]
		push	word [bp-12]
		mov	ax,word _$DATEUTILS$_Ld20
		push	ax
		call	DATEUTILS$_$INVALIDDATETIMEERROR$crc763061CC_$$_DOFIELD$WORD$WORD$ANSISTRING$$ANSISTRING
		mov	ax,word [bp-40]
		mov	word [bp-34],ax
		lea	ax,[bp-38]
		push	ax
		mov	ax,2
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
		lea	ax,[bp-16]
		push	ax
		mov	ax,word [bp-16]
		mov	word [bp-38],ax
		lea	ax,[bp-42]
		push	ax
		mov	al,byte [TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS+3]
		mov	ah,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_char_to_ansistr
		mov	ax,word [bp-42]
		mov	word [bp-36],ax
		push	bp
		lea	ax,[bp-40]
		push	ax
		push	word [bp+12]
		push	word [bp-14]
		mov	ax,word _$DATEUTILS$_Ld22
		push	ax
		call	DATEUTILS$_$INVALIDDATETIMEERROR$crc763061CC_$$_DOFIELD$WORD$WORD$ANSISTRING$$ANSISTRING
		mov	ax,word [bp-40]
		mov	word [bp-34],ax
		lea	ax,[bp-38]
		push	ax
		mov	ax,2
		push	ax
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat_multi
..@j2858:
		mov	ax,word VMT_$SYSUTILS_$$_ECONVERTERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SERRINVALIDTIMESTAMP+2]
		mov	dx,word [bp-16]
		mov	ax,0
		mov	word [bp-36],dx
		mov	word [bp-34],ax
		mov	word [bp-38],11
		lea	ax,[bp-38]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j2858
		push	ax
		push	bp
		call	fpc_raiseexception
..@j2688:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-42]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-40]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-32]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-16]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j2689
		call	FPC_RERAISE
..@j2689:
		mov	sp,bp
		pop	bp
		ret	22
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	RESSTR_$SYSCONST_$$_SERRINVALIDTIMESTAMP
EXTERN	VMT_$SYSUTILS_$$_ECONVERTERROR
EXTERN	_$DATEUTILS$_Ld22
EXTERN	_$DATEUTILS$_Ld21
EXTERN	fpc_ansistr_concat_multi
EXTERN	_$DATEUTILS$_Ld20
EXTERN	fpc_char_to_ansistr
EXTERN	TC_$SYSUTILS_$$_DEFAULTFORMATSETTINGS
EXTERN	fpc_ansistr_assign
EXTERN	DATEUTILS$_$INVALIDDATETIMEERROR$crc763061CC_$$_DOFIELD$WORD$WORD$ANSISTRING$$ANSISTRING
EXTERN	_$DATEUTILS$_Ld19
EXTERN	DATEUTILS_$$_DECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
