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
	GLOBAL fpc_ansistr_to_widechararray
fpc_ansistr_to_widechararray:
		push	bp
		mov	bp,sp
		sub	sp,20
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
		jne	..@j11643
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j11647
		mov	bx,word [bx-2]
..@j11647:
		mov	word [bp-2],bx
		cmp	word [bp-2],0
		jg	..@j11648
		jmp	..@j11649
..@j11648:
		mov	ax,word [bp+4]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_STRINGCODEPAGE$RAWBYTESTRING$$WORD
		mov	word [bp-20],ax
		mov	ax,word [bp-20]
		mov	dx,word [bp-20]
		sub	dx,1
		jbe	..@j11663
		jmp	..@j11662
..@j11663:
		mov	ax,word [U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE]
		jmp	..@j11661
..@j11662:
..@j11661:
		push	ax
		lea	ax,[bp-4]
		push	ax
		push	word [bp-2]
		mov	ax,word [U_$SYSTEM_$$_WIDESTRINGMANAGER+2]
		call	ax
..@j11649:
		mov	bx,word [bp-4]
		test	bx,bx
		je	..@j11672
		mov	bx,word [bx-2]
..@j11672:
		mov	word [bp-2],bx
		mov	ax,word [bp+6]
		inc	ax
		cmp	ax,word [bp-2]
		jl	..@j11673
		jmp	..@j11674
..@j11673:
		mov	ax,word [bp+6]
		inc	ax
		mov	word [bp-2],ax
..@j11674:
		mov	ax,word [bp-4]
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [bp-2]
		shl	ax,1
		push	ax
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	bx,word [bp+8]
		mov	ax,word [bp-2]
		mov	si,ax
		shl	si,1
		lea	ax,[bx+si]
		push	ax
		mov	ax,word [bp+6]
		inc	ax
		mov	dx,word [bp-2]
		sub	ax,dx
		shl	ax,1
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
..@j11643:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-4]
		push	ax
		call	fpc_unicodestr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j11644
		call	FPC_RERAISE
..@j11644:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	fpc_unicodestr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	U_$SYSTEM_$$_WIDESTRINGMANAGER
EXTERN	U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE
EXTERN	SYSTEM_$$_STRINGCODEPAGE$RAWBYTESTRING$$WORD
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
