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
	GLOBAL STRUTILS_$$_ISWILD$ANSISTRING$ANSISTRING$BOOLEAN$$BOOLEAN
STRUTILS_$$_ISWILD$ANSISTRING$ANSISTRING$BOOLEAN$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,14
		push	word [bp+8]
		call	fpc_ansistr_incr_ref
		push	word [bp+6]
		call	fpc_ansistr_incr_ref
		mov	word [bp-14],0
		mov	word [bp-12],0
		mov	byte [bp-1],1
		push	word [bp+6]
		push	word [bp+8]
		call	fpc_ansistr_compare_equal
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,0
		jne	..@j3995
		cmp	cx,0
		jne	..@j3995
		jmp	..@j3994
..@j3994:
		jmp	..@j3990
..@j3995:
		mov	ax,word _$STRUTILS$_Ld20
		push	ax
		push	word [bp+6]
		call	SYSTEM_$$_POS$RAWBYTESTRING$RAWBYTESTRING$$SMALLINT
		mov	word [bp-4],ax
		jmp	..@j4007
	ALIGN 2
..@j4006:
		lea	ax,[bp+6]
		push	ax
		push	word [bp-4]
		mov	ax,1
		push	ax
		call	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
		mov	ax,word _$STRUTILS$_Ld20
		push	ax
		push	word [bp+6]
		call	SYSTEM_$$_POS$RAWBYTESTRING$RAWBYTESTRING$$SMALLINT
		mov	word [bp-4],ax
..@j4007:
		cmp	word [bp-4],0
		jg	..@j4006
		jmp	..@j4008
..@j4008:
		push	word [bp+6]
		mov	ax,word _$STRUTILS$_Ld21
		push	ax
		call	fpc_ansistr_compare_equal
		cwd
		mov	cx,ax
		mov	ax,dx
		cmp	ax,0
		jne	..@j4022
		cmp	cx,0
		jne	..@j4022
		jmp	..@j4021
..@j4021:
		jmp	..@j3990
..@j4022:
		mov	bx,word [bp+8]
		test	bx,bx
		je	..@j4029
		mov	bx,word [bx-2]
..@j4029:
		mov	word [bp-6],bx
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j4032
		mov	bx,word [bx-2]
..@j4032:
		mov	word [bp-8],bx
		cmp	word [bp-8],0
		je	..@j4033
		jmp	..@j4035
..@j4035:
		cmp	word [bp-6],0
		je	..@j4033
		jmp	..@j4034
..@j4033:
		mov	byte [bp-1],0
		jmp	..@j3990
..@j4034:
		cmp	byte [bp+4],0
		jne	..@j4038
		jmp	..@j4039
..@j4038:
		lea	ax,[bp+8]
		push	ax
		lea	ax,[bp-12]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-12]
		push	ax
		push	word [bp+8]
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+14]
		call	ax
		push	word [bp-12]
		call	fpc_ansistr_assign
		lea	ax,[bp+6]
		push	ax
		lea	ax,[bp-12]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-14]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-14]
		push	ax
		push	word [bp+6]
		call	fpc_ansistr_assign
		lea	ax,[bp-12]
		push	ax
		push	word [bp-14]
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+14]
		call	ax
		push	word [bp-12]
		call	fpc_ansistr_assign
..@j4039:
		mov	ax,1
		push	ax
		push	word [bp+8]
		push	word [bp+6]
		mov	ax,1
		push	ax
		mov	ax,1
		push	ax
		push	word [bp-6]
		push	word [bp-8]
		lea	ax,[bp-9]
		push	ax
		call	STRUTILS_$$_ISMATCH$crcE1A8BADC
		mov	byte [bp-1],al
..@j3990:
		lea	ax,[bp-14]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-12]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp+8]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp+6]
		push	ax
		call	fpc_ansistr_decr_ref
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	STRUTILS_$$_ISMATCH$crcE1A8BADC
EXTERN	fpc_ansistr_assign
EXTERN	U_$SYSTEM_$$_WIDESTRINGMANAGER
EXTERN	fpc_ansistr_decr_ref
EXTERN	_$STRUTILS$_Ld21
EXTERN	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
EXTERN	SYSTEM_$$_POS$RAWBYTESTRING$RAWBYTESTRING$$SMALLINT
EXTERN	_$STRUTILS$_Ld20
EXTERN	fpc_ansistr_compare_equal
EXTERN	fpc_ansistr_incr_ref
