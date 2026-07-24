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
	GLOBAL SYSUTILS$_$TSIMPLERWSYNC_$__$$_CREATE$$TSIMPLERWSYNC
SYSUTILS$_$TSIMPLERWSYNC_$__$$_CREATE$$TSIMPLERWSYNC:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+4],1
		je	..@j12941
		jmp	..@j12942
..@j12941:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+6],ax
..@j12942:
		cmp	word [bp+6],0
		je	..@j12947
		jmp	..@j12948
..@j12947:
		jmp	..@j12939
..@j12948:
		mov	ax,1
		push	ax
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-6]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j12951
		mov	bx,word [bp+6]
		lea	ax,[bx+8]
		push	ax
		call	SYSTEM_$$_INITCRITICALSECTION$TRTLCRITICALSECTION
		cmp	word [bp+6],0
		jne	..@j12960
		jmp	..@j12959
..@j12960:
		cmp	word [bp+4],0
		jne	..@j12958
		jmp	..@j12959
..@j12958:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j12959:
..@j12951:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j12953
		mov	ax,1
		push	ax
		lea	ax,[bp-26]
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j12963
		cmp	word [bp+4],0
		jne	..@j12964
		jmp	..@j12965
..@j12964:
		push	word [bp+6]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j12965:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j12963:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j12970
		call	FPC_RAISE_NESTED
..@j12970:
		call	FPC_DONEEXCEPTION
		jmp	..@j12953
..@j12953:
..@j12939:
		mov	ax,word [bp+6]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_INITCRITICALSECTION$TRTLCRITICALSECTION
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
