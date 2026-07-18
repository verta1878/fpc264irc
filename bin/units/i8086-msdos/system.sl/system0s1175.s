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
	GLOBAL SYSTEM_$$_RENAME$file$UNICODESTRING
SYSTEM_$$_RENAME$file$UNICODESTRING:
		push	bp
		mov	bp,sp
		sub	sp,528
		mov	word [bp-2],0
		mov	ax,1
		push	ax
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-8]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j24875
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j24879
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j24880
..@j24879:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j24880:
		cmp	word [bx],0
		jne	..@j24877
		jmp	..@j24878
..@j24877:
		jmp	..@j24875
..@j24878:
		mov	bx,word [bp+6]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		cmp	ax,0
		jne	..@j24881
		cmp	dx,-10320
		jne	..@j24881
		jmp	..@j24882
..@j24881:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j24885
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j24886
..@j24885:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j24886:
		mov	word [bx],102
		jmp	..@j24875
..@j24882:
		lea	ax,[bp-2]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_TOSINGLEBYTEFILESYSTEMENCODEDFILENAME$UNICODESTRING$$RAWBYTESTRING
		mov	bx,word [bp+6]
		lea	ax,[bx+56]
		push	ax
		mov	ax,word [bp-2]
		test	ax,ax
		jne	..@j24895
		mov	ax,word FPC_EMPTYCHAR
..@j24895:
		push	ax
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_DO_RENAME$PWIDECHAR$PCHAR$BOOLEAN$BOOLEAN
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j24902
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j24903
..@j24902:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j24903:
		cmp	word [bx],0
		je	..@j24900
		jmp	..@j24901
..@j24900:
		lea	ax,[bp-528]
		push	ax
		mov	ax,255
		push	ax
		push	word [bp-2]
		call	fpc_ansistr_to_widechararray
		mov	bx,word [bp+6]
		lea	di,[bx+56]
		push	ds
		pop	es
		lea	si,[bp-528]
		cld
		mov	cx,256
		rep
		movsw
..@j24901:
..@j24875:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-2]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j24876
		call	FPC_RERAISE
..@j24876:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_to_widechararray
EXTERN	SYSTEM_$$_DO_RENAME$PWIDECHAR$PCHAR$BOOLEAN$BOOLEAN
EXTERN	FPC_EMPTYCHAR
EXTERN	SYSTEM_$$_TOSINGLEBYTEFILESYSTEMENCODEDFILENAME$UNICODESTRING$$RAWBYTESTRING
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
