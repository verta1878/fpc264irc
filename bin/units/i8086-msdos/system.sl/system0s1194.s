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
	GLOBAL SYSTEM_$$_DOSDIR$BYTE$RAWBYTESTRING
SYSTEM_$$_DOSDIR$BYTE$RAWBYTESTRING:
		push	bp
		mov	bp,sp
		sub	sp,36
		push	word [bp+4]
		call	fpc_ansistr_incr_ref
		mov	ax,1
		push	ax
		lea	ax,[bp-34]
		push	ax
		lea	ax,[bp-28]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j25203
		lea	ax,[bp+4]
		push	ax
		call	SYSTEM_$$_DODIRSEPARATORS$RAWBYTESTRING
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j25209
		mov	bx,word [bx-2]
..@j25209:
		mov	word [bp-22],bx
		cmp	word [bp-22],0
		jg	..@j25213
		jmp	..@j25211
..@j25213:
		mov	bx,word [bp+4]
		mov	si,word [bp-22]
		cmp	byte [bx+si-1],92
		je	..@j25212
		jmp	..@j25211
..@j25212:
		cmp	word [bp-22],1
		je	..@j25211
		jmp	..@j25214
..@j25214:
		cmp	word [bp-22],3
		je	..@j25215
		jmp	..@j25210
..@j25215:
		mov	bx,word [bp+4]
		cmp	byte [bx+1],58
		je	..@j25211
		jmp	..@j25210
..@j25210:
		lea	ax,[bp+4]
		push	ax
		call	fpc_ansistr_unique
		mov	bx,ax
		mov	si,word [bp-22]
		mov	byte [bx+si-1],0
..@j25211:
		mov	ax,word [bp+4]
		mov	word [bp-14],ax
		mov	ax,word [bp+4]
		mov	ax,ds
		mov	word [bp-6],ax
		cmp	byte [U_$SYSTEM_$$_LFNSUPPORT],0
		jne	..@j25224
		jmp	..@j25225
..@j25224:
		mov	al,byte [bp+6]
		mov	ah,0
		add	ax,28928
		mov	word [bp-20],ax
		jmp	..@j25228
..@j25225:
		mov	al,byte [bp+6]
		mov	ah,0
		mov	cl,8
		shl	ax,cl
		mov	word [bp-20],ax
..@j25228:
		lea	ax,[bp-20]
		push	ax
		call	FPC_MSDOS
		mov	ax,word [bp-2]
		and	ax,1
		test	ax,ax
		jne	..@j25233
		jmp	..@j25234
..@j25233:
		push	word [bp-20]
		call	SYSTEM_$$_GETINOUTRES$WORD
..@j25234:
..@j25203:
		call	FPC_POPADDRSTACK
		lea	ax,[bp+4]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j25204
		call	FPC_RERAISE
..@j25204:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_GETINOUTRES$WORD
EXTERN	FPC_MSDOS
EXTERN	U_$SYSTEM_$$_LFNSUPPORT
EXTERN	fpc_ansistr_unique
EXTERN	SYSTEM_$$_DODIRSEPARATORS$RAWBYTESTRING
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_ansistr_incr_ref
