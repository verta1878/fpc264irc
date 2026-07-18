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
	GLOBAL SYSTEM_$$_RENAME$file$RAWBYTESTRING
SYSTEM_$$_RENAME$file$RAWBYTESTRING:
		push	bp
		mov	bp,sp
		sub	sp,532
		mov	word [bp-2],0
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
		jne	..@j24918
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j24922
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j24923
..@j24922:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j24923:
		cmp	word [bx],0
		jne	..@j24920
		jmp	..@j24921
..@j24920:
		jmp	..@j24918
..@j24921:
		mov	bx,word [bp+6]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		cmp	ax,0
		jne	..@j24924
		cmp	dx,-10320
		jne	..@j24924
		jmp	..@j24925
..@j24924:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j24928
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j24929
..@j24928:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j24929:
		mov	word [bx],102
		jmp	..@j24918
..@j24925:
		mov	byte [bp-5],0
		mov	ax,word [bp+4]
		test	ax,ax
		jne	..@j24934
		mov	ax,word FPC_EMPTYCHAR
..@j24934:
		mov	word [bp-4],ax
		push	word [bp+4]
		call	SYSTEM_$$_STRINGCODEPAGE$RAWBYTESTRING$$WORD
		cmp	ax,word [U_$SYSTEM_$$_DEFAULTFILESYSTEMCODEPAGE]
		jne	..@j24935
		jmp	..@j24936
..@j24935:
		lea	ax,[bp-2]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_TOSINGLEBYTEFILESYSTEMENCODEDFILENAME$RAWBYTESTRING$$RAWBYTESTRING
		mov	ax,word [bp-2]
		test	ax,ax
		jne	..@j24945
		mov	ax,word FPC_EMPTYCHAR
..@j24945:
		mov	word [bp-4],ax
		mov	byte [bp-5],1
		jmp	..@j24948
..@j24936:
		lea	ax,[bp-2]
		push	ax
		push	word [bp+4]
		call	fpc_ansistr_assign
..@j24948:
		mov	bx,word [bp+6]
		lea	ax,[bx+56]
		push	ax
		push	word [bp-4]
		mov	ax,0
		push	ax
		mov	al,byte [bp-5]
		mov	ah,0
		push	ax
		call	SYSTEM_$$_DO_RENAME$PWIDECHAR$PCHAR$BOOLEAN$BOOLEAN
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j24963
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j24964
..@j24963:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j24964:
		cmp	word [bx],0
		je	..@j24961
		jmp	..@j24962
..@j24961:
		lea	ax,[bp-532]
		push	ax
		mov	ax,255
		push	ax
		push	word [bp-2]
		call	fpc_ansistr_to_widechararray
		mov	bx,word [bp+6]
		lea	di,[bx+56]
		push	ds
		pop	es
		lea	si,[bp-532]
		cld
		mov	cx,256
		rep
		movsw
..@j24962:
..@j24918:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-2]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j24919
		call	FPC_RERAISE
..@j24919:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_to_widechararray
EXTERN	SYSTEM_$$_DO_RENAME$PWIDECHAR$PCHAR$BOOLEAN$BOOLEAN
EXTERN	fpc_ansistr_assign
EXTERN	SYSTEM_$$_TOSINGLEBYTEFILESYSTEMENCODEDFILENAME$RAWBYTESTRING$$RAWBYTESTRING
EXTERN	U_$SYSTEM_$$_DEFAULTFILESYSTEMCODEPAGE
EXTERN	SYSTEM_$$_STRINGCODEPAGE$RAWBYTESTRING$$WORD
EXTERN	FPC_EMPTYCHAR
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
