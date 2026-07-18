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
	GLOBAL CLASSES$_$TBINARYOBJECTREADER_$__$$_CREATE$TSTREAM$SMALLINT$$TBINARYOBJECTREADER
CLASSES$_$TBINARYOBJECTREADER_$__$$_CREATE$TSTREAM$SMALLINT$$TBINARYOBJECTREADER:
		push	bp
		mov	bp,sp
		sub	sp,28
		cmp	word [bp+8],1
		je	..@j17634
		jmp	..@j17635
..@j17634:
		push	word [bp+10]
		mov	bx,word [bp+10]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+10],ax
..@j17635:
		cmp	word [bp+10],0
		je	..@j17640
		jmp	..@j17641
..@j17640:
		jmp	..@j17632
..@j17641:
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
		jne	..@j17644
		push	word [bp+10]
		mov	ax,0
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		cmp	word [bp+6],0
		je	..@j17653
		jmp	..@j17654
..@j17653:
..@j17655:
		mov	ax,word VMT_$CLASSES_$$_EREADERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SEMPTYSTREAMILLEGALREADER+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j17655
		push	ax
		push	bp
		call	fpc_raiseexception
..@j17654:
		mov	bx,word [bp+10]
		mov	ax,word [bp+6]
		mov	word [bx+2],ax
		mov	bx,word [bp+10]
		mov	ax,word [bp+4]
		mov	word [bx+6],ax
		mov	bx,word [bp+10]
		lea	ax,[bx+4]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_GETMEM$POINTER$WORD
		cmp	word [bp+10],0
		jne	..@j17678
		jmp	..@j17677
..@j17678:
		cmp	word [bp+8],0
		jne	..@j17676
		jmp	..@j17677
..@j17676:
		push	word [bp+10]
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j17677:
..@j17644:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j17646
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
		jne	..@j17681
		cmp	word [bp+8],0
		jne	..@j17682
		jmp	..@j17683
..@j17682:
		push	word [bp+10]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+10]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j17683:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j17681:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j17688
		call	FPC_RAISE_NESTED
..@j17688:
		call	FPC_DONEEXCEPTION
		jmp	..@j17646
..@j17646:
..@j17632:
		mov	ax,word [bp+10]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_GETMEM$POINTER$WORD
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SEMPTYSTREAMILLEGALREADER
EXTERN	VMT_$CLASSES_$$_EREADERROR
EXTERN	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
