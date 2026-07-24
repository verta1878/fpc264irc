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
	GLOBAL SYSUTILS_$$_INTERNALFINDNEXT$TABSTRACTSEARCHREC$RAWBYTESTRING$$LONGINT
SYSUTILS_$$_INTERNALFINDNEXT$TABSTRACTSEARCHREC$RAWBYTESTRING$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,22
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
		jne	..@j15533
		mov	bx,word [bp+6]
		mov	ax,word [bx+22]
		mov	word [bp-6],ax
		cmp	word [bp-6],0
		jne	..@j15537
		jmp	..@j15538
..@j15537:
		mov	ax,word [bp-6]
		push	ax
		call	DOS_$$_FINDNEXT$SEARCHREC
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j15543
		push	word [U_$DOS_$$_DOSERROR+2]
		push	word [U_$DOS_$$_DOSERROR]
		call	ax
		mov	bx,ax
		jmp	..@j15544
..@j15543:
		mov	bx,word U_$DOS_$$_DOSERROR+2
..@j15544:
		mov	ax,word [bx]
		neg	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		cmp	ax,0
		jne	..@j15546
		cmp	dx,0
		jne	..@j15546
		jmp	..@j15545
..@j15545:
		mov	bx,word [bp+6]
		mov	si,word [bp-6]
		mov	ax,word [si+22]
		mov	word [bx],ax
		mov	ax,word [si+24]
		mov	word [bx+2],ax
		mov	bx,word [bp-6]
		mov	dx,word [bx+26]
		mov	di,word [bx+28]
		mov	ax,dx
		mov	si,di
		mov	cl,15
		sar	si,cl
		mov	ax,si
		mov	bx,word [bp+6]
		mov	word [bx+4],dx
		mov	word [bx+6],di
		mov	word [bx+8],ax
		mov	word [bx+10],si
		mov	bx,word [bp-6]
		mov	ax,0
		mov	dl,byte [bx+21]
		mov	dh,0
		mov	bx,word [bp+6]
		mov	word [bx+12],dx
		mov	word [bx+14],ax
		mov	bx,word [bp+6]
		mov	word [bx+18],0
		mov	word [bx+20],0
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-22]
		push	ax
		mov	bx,word [bp-6]
		lea	ax,[bx+30]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-22]
		call	fpc_ansistr_assign
..@j15546:
..@j15538:
..@j15533:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-22]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j15534
		call	FPC_RERAISE
..@j15534:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_assign
EXTERN	fpc_shortstr_to_ansistr
EXTERN	U_$DOS_$$_DOSERROR
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	DOS_$$_FINDNEXT$SEARCHREC
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
