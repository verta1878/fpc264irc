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
	GLOBAL DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_SCANFIXEDINT$crc8B9E2020
DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_SCANFIXEDINT$crc8B9E2020:
		push	bp
		mov	bp,sp
		sub	sp,34
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
		jne	..@j3820
		mov	word [bp-2],0
		mov	bx,word [bp+6]
		mov	bx,word [bx+10]
		mov	ax,word [bx-12]
		mov	word [bp-6],ax
		mov	bx,word [bp+6]
		mov	bx,word [bx+8]
		mov	si,word [bp+6]
		mov	si,word [si-2]
		mov	al,byte [bx+si]
		mov	byte [bp-3],al
		jmp	..@j3829
	ALIGN 2
..@j3828:
		mov	bx,word [bp+6]
		inc	word [bx-2]
..@j3829:
		mov	bx,word [bp+6]
		mov	si,word [bp+6]
		mov	ax,word [bx-2]
		cmp	ax,word [si+6]
		jl	..@j3831
		jmp	..@j3830
..@j3831:
		mov	bx,word [bp+6]
		mov	bx,word [bx+8]
		mov	si,word [bp+6]
		mov	si,word [si-2]
		mov	al,byte [bx+si]
		cmp	al,byte [bp-3]
		je	..@j3828
		jmp	..@j3830
..@j3830:
		jmp	..@j3833
	ALIGN 2
..@j3832:
		mov	ax,10
		mul	word [bp-2]
		mov	bx,word [bp+6]
		mov	bx,word [bx+10]
		mov	bx,word [bx+8]
		mov	si,word [bp+6]
		mov	si,word [si+10]
		mov	si,word [si-12]
		mov	dl,byte [bx+si-1]
		mov	dh,0
		add	dx,ax
		sub	dx,48
		mov	word [bp-2],dx
		mov	bx,word [bp+6]
		mov	bx,word [bx+10]
		inc	word [bx-12]
		dec	word [bp+4]
..@j3833:
		cmp	word [bp+4],0
		jg	..@j3838
		jmp	..@j3834
..@j3838:
		mov	bx,word [bp+6]
		mov	bx,word [bx+10]
		mov	si,word [bp+6]
		mov	si,word [si+10]
		mov	ax,word [bx-12]
		cmp	ax,word [si-10]
		jle	..@j3837
		jmp	..@j3834
..@j3837:
		mov	bx,word [bp+6]
		mov	bx,word [bx+10]
		mov	bx,word [bx+8]
		mov	si,word [bp+6]
		mov	si,word [si+10]
		mov	si,word [si-12]
		mov	al,byte [bx+si-1]
		mov	ah,0
		sub	ax,48
		cmp	ax,10
		jb	..@j3839
..@j3839:
		jc	..@j3832
		jmp	..@j3834
..@j3834:
		mov	bx,word [bp+6]
		mov	bx,word [bx+10]
		mov	ax,word [bx-12]
		cmp	ax,word [bp-6]
		je	..@j3840
		jmp	..@j3841
..@j3840:
		lea	ax,[bp-22]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SPATTERNCHARMISMATCH+2]
		mov	ax,0
		mov	dl,byte [bp-3]
		mov	dh,0
		mov	word [bp-32],dx
		mov	word [bp-30],ax
		mov	word [bp-34],2
		mov	ax,word [bp-6]
		cwd
		mov	word [bp-26],ax
		mov	word [bp-24],dx
		mov	word [bp-28],0
		lea	ax,[bp-34]
		push	ax
		mov	ax,1
		push	ax
		call	SYSUTILS_$$_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
		push	word [bp-22]
		call	DATEUTILS_$$_RAISEEXCEPTION$ANSISTRING
..@j3841:
..@j3820:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-22]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j3821
		call	FPC_RERAISE
..@j3821:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	DATEUTILS_$$_RAISEEXCEPTION$ANSISTRING
EXTERN	SYSUTILS_$$_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
EXTERN	RESSTR_$SYSCONST_$$_SPATTERNCHARMISMATCH
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
