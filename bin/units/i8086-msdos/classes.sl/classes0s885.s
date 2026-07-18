BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TWRITER_$__$$_CREATE$TSTREAM$SMALLINT$$TWRITER
CLASSES$_$TWRITER_$__$$_CREATE$TSTREAM$SMALLINT$$TWRITER:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+8],1
		je	..@j21789
		jmp	..@j21790
..@j21789:
		push	word [bp+10]
		mov	bx,word [bp+10]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+10],ax
..@j21790:
		cmp	word [bp+10],0
		je	..@j21795
		jmp	..@j21796
..@j21795:
		jmp	..@j21787
..@j21796:
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
		jne	..@j21799
		push	word [bp+10]
		mov	ax,0
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		cmp	word [bp+6],0
		je	..@j21808
		jmp	..@j21809
..@j21808:
..@j21810:
		mov	ax,word VMT_$CLASSES_$$_EWRITEERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SEMPTYSTREAMILLEGALWRITER+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j21810
		push	ax
		push	bp
		call	fpc_raiseexception
..@j21809:
		push	word [bp+10]
		push	word [bp+6]
		push	word [bp+4]
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+56]
		call	ax
		mov	bx,word [bp+10]
		mov	word [bx+9],ax
		mov	bx,word [bp+10]
		mov	byte [bx+11],1
		cmp	word [bp+10],0
		jne	..@j21835
		jmp	..@j21834
..@j21835:
		cmp	word [bp+8],0
		jne	..@j21833
		jmp	..@j21834
..@j21833:
		push	word [bp+10]
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j21834:
..@j21799:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j21801
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
		jne	..@j21838
		cmp	word [bp+8],0
		jne	..@j21839
		jmp	..@j21840
..@j21839:
		push	word [bp+10]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j21840:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j21838:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j21845
		call	FPC_RAISE_NESTED
..@j21845:
		call	FPC_DONEEXCEPTION
		jmp	..@j21801
..@j21801:
..@j21787:
		mov	ax,word [bp+10]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SEMPTYSTREAMILLEGALWRITER
EXTERN	VMT_$CLASSES_$$_EWRITEERROR
EXTERN	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
