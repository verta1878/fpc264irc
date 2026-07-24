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
	GLOBAL DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_MATCHCHAR$CHAR
DATEUTILS$_$SCANDATETIME$crcF9EFF852_INTSCANDATE$PCHAR$SMALLINT$SMALLINT_$$_MATCHCHAR$CHAR:
		push	bp
		mov	bp,sp
		sub	sp,40
		mov	word [bp-16],0
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
		jne	..@j3805
		mov	bx,word [bp+6]
		mov	bx,word [bx+10]
		mov	si,word [bp+6]
		mov	si,word [si+10]
		mov	ax,word [bx-12]
		cmp	ax,word [si-10]
		jg	..@j3807
		jmp	..@j3809
..@j3809:
		mov	bx,word [bp+6]
		mov	bx,word [bx+10]
		mov	bx,word [bx+8]
		mov	si,word [bp+6]
		mov	si,word [si+10]
		mov	si,word [si-12]
		mov	al,byte [bx+si-1]
		cmp	al,byte [bp+4]
		jne	..@j3807
		jmp	..@j3808
..@j3807:
		lea	ax,[bp-16]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SNOCHARMATCH+2]
		mov	bx,word [bp+6]
		mov	bx,word [bx+10]
		mov	bx,word [bx+8]
		mov	si,word [bp+6]
		mov	si,word [si+10]
		mov	si,word [si-12]
		mov	ax,0
		mov	dl,byte [bx+si-1]
		mov	dh,0
		mov	word [bp-38],dx
		mov	word [bp-36],ax
		mov	word [bp-40],2
		mov	ax,0
		mov	dl,byte [bp+4]
		mov	dh,0
		mov	word [bp-32],dx
		mov	word [bp-30],ax
		mov	word [bp-34],2
		mov	bx,word [bp+6]
		mov	si,word [bp+6]
		mov	dx,word [bx-2]
		mov	ax,word [si+4]
		add	ax,dx
		inc	ax
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-26],cx
		mov	word [bp-24],ax
		mov	word [bp-28],0
		mov	bx,word [bp+6]
		mov	bx,word [bx+10]
		mov	ax,word [bx-12]
		cwd
		mov	word [bp-20],ax
		mov	word [bp-18],dx
		mov	word [bp-22],0
		lea	ax,[bp-40]
		push	ax
		mov	ax,3
		push	ax
		call	SYSUTILS_$$_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
		push	word [bp-16]
		call	DATEUTILS_$$_RAISEEXCEPTION$ANSISTRING
..@j3808:
		mov	bx,word [bp+6]
		inc	word [bx-2]
		mov	bx,word [bp+6]
		mov	bx,word [bx+10]
		inc	word [bx-12]
..@j3805:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-16]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j3806
		call	FPC_RERAISE
..@j3806:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	DATEUTILS_$$_RAISEEXCEPTION$ANSISTRING
EXTERN	SYSUTILS_$$_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
EXTERN	RESSTR_$SYSCONST_$$_SNOCHARMATCH
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
