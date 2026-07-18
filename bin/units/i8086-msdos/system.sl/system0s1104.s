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
	GLOBAL fpc_read_text_ansistr
fpc_read_text_ansistr:
	GLOBAL FPC_READ_TEXT_ANSISTR
FPC_READ_TEXT_ANSISTR:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	bx,word [bp+6]
		mov	word [bx],0
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
		jne	..@j23246
		mov	word [bp-2],0
	ALIGN 2
..@j23250:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word [bp-2]
		add	ax,255
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+6]
		mov	dx,word [bx]
		mov	ax,word [bp-2]
		add	ax,dx
		push	ax
		mov	ax,0
		push	ax
		mov	ax,255
		push	ax
		call	SYSTEM_$$_READPCHARLEN$TEXT$PCHAR$LONGINT$$LONGINT
		mov	word [bp-4],ax
		mov	ax,word [bp-4]
		add	word [bp-2],ax
		cmp	word [bp-4],255
		jl	..@j23252
		jmp	..@j23250
..@j23252:
		mov	ax,word [bp+6]
		push	ax
		push	word [bp-2]
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx+828]
		mov	ax,0
		push	ax
		call	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
		mov	bx,word [bp+8]
		mov	ax,word [bx+828]
		cmp	ax,word [bp+4]
		jne	..@j23279
		jmp	..@j23280
..@j23279:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-20]
		push	ax
		mov	bx,word [bp+6]
		push	word [bx]
		push	word [bp+4]
		call	FPC_ANSISTR_TO_ANSISTR
		push	word [bp-20]
		call	fpc_ansistr_assign
..@j23280:
..@j23246:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-20]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j23247
		call	FPC_RERAISE
..@j23247:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_assign
EXTERN	FPC_ANSISTR_TO_ANSISTR
EXTERN	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
EXTERN	SYSTEM_$$_READPCHARLEN$TEXT$PCHAR$LONGINT$$LONGINT
EXTERN	fpc_ansistr_setlength
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
