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
	GLOBAL SYSUTILS$_$TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$__$$_CREATE$$TMULTIREADEXCLUSIVEWRITESYNCHRONIZER
SYSUTILS$_$TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$__$$_CREATE$$TMULTIREADEXCLUSIVEWRITESYNCHRONIZER:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+4],1
		je	..@j13004
		jmp	..@j13005
..@j13004:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+6],ax
..@j13005:
		cmp	word [bp+6],0
		je	..@j13010
		jmp	..@j13011
..@j13010:
		jmp	..@j13002
..@j13011:
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
		jne	..@j13014
		mov	bx,word [bp+6]
		lea	ax,[bx+10]
		push	ax
		call	SYSTEM_$$_INITCRITICALSECTION$TRTLCRITICALSECTION
		call	SYSTEM_$$_RTLEVENTCREATE$$PRTLEVENT
		mov	bx,word [bp+6]
		mov	word [bx+11],ax
		mov	bx,word [bp+6]
		push	word [bx+11]
		call	SYSTEM_$$_RTLEVENTRESETEVENT$PRTLEVENT
		mov	bx,word [bp+6]
		lea	ax,[bx+13]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	FPC_INTERLOCKEDEXCHANGE
		mov	bx,word [bp+6]
		mov	word [bx+17],0
		mov	word [bx+19],0
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_BASICEVENTCREATE$POINTER$BOOLEAN$BOOLEAN$ANSISTRING$$POINTER
		mov	bx,word [bp+6]
		mov	word [bx+8],ax
		cmp	word [bp+6],0
		jne	..@j13044
		jmp	..@j13043
..@j13044:
		cmp	word [bp+4],0
		jne	..@j13042
		jmp	..@j13043
..@j13042:
		push	word [bp+6]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j13043:
..@j13014:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j13016
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
		jne	..@j13047
		cmp	word [bp+4],0
		jne	..@j13048
		jmp	..@j13049
..@j13048:
		push	word [bp+6]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j13049:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j13047:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j13054
		call	FPC_RAISE_NESTED
..@j13054:
		call	FPC_DONEEXCEPTION
		jmp	..@j13016
..@j13016:
..@j13002:
		mov	ax,word [bp+6]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_BASICEVENTCREATE$POINTER$BOOLEAN$BOOLEAN$ANSISTRING$$POINTER
EXTERN	FPC_INTERLOCKEDEXCHANGE
EXTERN	SYSTEM_$$_RTLEVENTRESETEVENT$PRTLEVENT
EXTERN	SYSTEM_$$_RTLEVENTCREATE$$PRTLEVENT
EXTERN	SYSTEM_$$_INITCRITICALSECTION$TRTLCRITICALSECTION
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
