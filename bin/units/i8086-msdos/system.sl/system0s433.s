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
	GLOBAL fpc_unicodestr_to_shortstr
fpc_unicodestr_to_shortstr:
	GLOBAL FPC_UNICODESTR_TO_SHORTSTR
FPC_UNICODESTR_TO_SHORTSTR:
		push	bp
		mov	bp,sp
		sub	sp,18
		mov	word [bp-4],0
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
		jne	..@j10898
		mov	bx,word [bp+8]
		mov	byte [bx],0
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j10904
		mov	bx,word [bx-2]
..@j10904:
		mov	word [bp-2],bx
		cmp	word [bp-2],0
		jg	..@j10905
		jmp	..@j10906
..@j10905:
		mov	ax,word [bp-2]
		cmp	ax,word [bp+6]
		jg	..@j10907
		jmp	..@j10908
..@j10907:
		mov	ax,word [bp+6]
		mov	word [bp-2],ax
..@j10908:
		mov	ax,word [bp+4]
		test	ax,ax
		jne	..@j10913
		mov	ax,word FPC_EMPTYCHAR
..@j10913:
		push	ax
		lea	ax,[bp-4]
		push	ax
		push	word [U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE]
		push	word [bp-2]
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+38]
		call	ax
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+6]
		push	word [bp-4]
		call	fpc_ansistr_to_shortstr
..@j10906:
..@j10898:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-4]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j10899
		call	FPC_RERAISE
..@j10899:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_to_shortstr
EXTERN	U_$SYSTEM_$$_WIDESTRINGMANAGER
EXTERN	U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE
EXTERN	FPC_EMPTYCHAR
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
