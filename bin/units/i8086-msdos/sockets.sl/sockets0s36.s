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
	GLOBAL SOCKETS_$$_INET_NTOA$TINADDR$$ANSISTRING
SOCKETS_$$_INET_NTOA$TINADDR$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,278
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	word [bp-6],ax
		mov	ax,word [bx+2]
		mov	word [bp-4],ax
		mov	word [bp-22],0
		mov	ax,1
		push	ax
		lea	ax,[bp-18]
		push	ax
		lea	ax,[bp-12]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j344
		push	word [bp-4]
		push	word [bp-6]
		call	_inet_ntoa
		add	sp,4
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		je	..@j350
		jmp	..@j351
..@j350:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word _$SOCKETS$_Ld1
		push	ax
		call	fpc_ansistr_assign
		jmp	..@j356
..@j351:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-22]
		push	ax
		lea	ax,[bp-278]
		push	ax
		push	word [bp-2]
		call	SYSTEM_$$_STRPAS$PCHAR$$SHORTSTRING
		lea	ax,[bp-278]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-22]
		call	fpc_ansistr_assign
..@j356:
..@j344:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-22]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j345
		call	FPC_RERAISE
..@j345:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_shortstr_to_ansistr
EXTERN	SYSTEM_$$_STRPAS$PCHAR$$SHORTSTRING
EXTERN	fpc_ansistr_assign
EXTERN	_$SOCKETS$_Ld1
EXTERN	_inet_ntoa
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
