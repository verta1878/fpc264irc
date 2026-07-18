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
	GLOBAL SYSUTILS_$$_SPLITDATETIMESTR$ANSISTRING$TFORMATSETTINGS$ANSISTRING$ANSISTRING$$SMALLINT
SYSUTILS_$$_SPLITDATETIMESTR$ANSISTRING$TFORMATSETTINGS$ANSISTRING$ANSISTRING$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,30
		push	word [bp+10]
		call	fpc_ansistr_incr_ref
		mov	bx,word [bp+6]
		mov	word [bx],0
		mov	bx,word [bp+4]
		mov	word [bx],0
		mov	word [bp-30],0
		mov	word [bp-28],0
		mov	ax,1
		push	ax
		lea	ax,[bp-24]
		push	ax
		lea	ax,[bp-18]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j10879
		mov	word [bp-2],0
		mov	ax,word [bp+6]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		mov	ax,word [bp+4]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		lea	ax,[bp+10]
		push	ax
		lea	ax,[bp-28]
		push	ax
		push	word [bp+10]
		call	SYSUTILS_$$_TRIM$ANSISTRING$$ANSISTRING
		push	word [bp-28]
		call	fpc_ansistr_assign
		mov	bx,word [bp+10]
		test	bx,bx
		je	..@j10901
		mov	bx,word [bx-2]
..@j10901:
		test	bx,bx
		je	..@j10899
		jmp	..@j10900
..@j10899:
		jmp	..@j10879
..@j10900:
		mov	bx,word [bp+8]
		cmp	byte [bx+5],32
		je	..@j10905
		jmp	..@j10903
..@j10905:
		mov	bx,word [bp+8]
		cmp	byte [bx+6],32
		je	..@j10904
		jmp	..@j10903
..@j10904:
		mov	ax,32
		push	ax
		push	word [bp+10]
		call	SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
		cmp	ax,0
		jg	..@j10902
		jmp	..@j10903
..@j10902:
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+10]
		call	fpc_ansistr_assign
		mov	word [bp-2],1
		jmp	..@j10879
..@j10903:
		mov	word [bp-4],1
		mov	bx,word [bp+8]
		cmp	byte [bx+5],32
		jne	..@j10918
		jmp	..@j10919
..@j10918:
		jmp	..@j10921
	ALIGN 2
..@j10920:
		inc	word [bp-4]
..@j10921:
		mov	bx,word [bp+10]
		test	bx,bx
		je	..@j10924
		mov	bx,word [bx-2]
..@j10924:
		cmp	bx,word [bp-4]
		jg	..@j10923
		jmp	..@j10922
..@j10923:
		mov	bx,word [bp+10]
		mov	ax,word [bp-4]
		mov	si,ax
		inc	si
		mov	al,byte [bx+si-1]
		mov	ah,0
		sub	ax,9
		cmp	ax,2
		jb	..@j10925
		cmp	ax,4
		stc
		je	..@j10925
		cmp	ax,23
		stc
		je	..@j10925
		clc
..@j10925:
		jnc	..@j10920
		jmp	..@j10922
..@j10922:
		jmp	..@j10926
..@j10919:
		mov	bx,word [bp+8]
		mov	al,byte [bx+6]
		mov	ah,0
		push	ax
		push	word [bp+10]
		call	SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
		mov	word [bp-4],ax
		cmp	word [bp-4],0
		jne	..@j10933
		jmp	..@j10934
..@j10933:
	ALIGN 2
..@j10935:
		dec	word [bp-4]
		cmp	word [bp-4],0
		je	..@j10937
		jmp	..@j10938
..@j10938:
		mov	bx,word [bp+10]
		mov	si,word [bp-4]
		mov	al,byte [bx+si-1]
		mov	ah,0
		sub	ax,9
		cmp	ax,2
		jb	..@j10939
		cmp	ax,4
		stc
		je	..@j10939
		cmp	ax,23
		stc
		je	..@j10939
		clc
..@j10939:
		jc	..@j10937
		jmp	..@j10935
..@j10937:
..@j10934:
..@j10926:
		cmp	word [bp-4],0
		je	..@j10940
		jmp	..@j10941
..@j10940:
		mov	bx,word [bp+10]
		test	bx,bx
		je	..@j10944
		mov	bx,word [bx-2]
..@j10944:
		mov	word [bp-4],bx
..@j10941:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-28]
		push	ax
		push	word [bp+10]
		mov	ax,1
		push	ax
		push	word [bp-4]
		call	fpc_ansistr_copy
		push	word [bp-28]
		call	fpc_ansistr_assign
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-28]
		push	ax
		lea	ax,[bp-30]
		push	ax
		push	word [bp+10]
		mov	ax,word [bp-4]
		inc	ax
		push	ax
		mov	ax,32767
		push	ax
		call	fpc_ansistr_copy
		push	word [bp-30]
		call	SYSUTILS_$$_TRIM$ANSISTRING$$ANSISTRING
		push	word [bp-28]
		call	fpc_ansistr_assign
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j10975
		mov	bx,word [bx-2]
..@j10975:
		test	bx,bx
		jne	..@j10973
		jmp	..@j10974
..@j10973:
		mov	word [bp-2],2
		jmp	..@j10978
..@j10974:
		mov	word [bp-2],1
		mov	bx,word [bp+8]
		mov	si,word [bp+8]
		mov	al,byte [bx+5]
		cmp	al,byte [si+6]
		jne	..@j10984
		jmp	..@j10983
..@j10984:
		mov	bx,word [bp+8]
		mov	al,byte [bx+6]
		mov	ah,0
		push	ax
		mov	bx,word [bp+6]
		push	word [bx]
		call	SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
		cmp	ax,0
		jg	..@j10981
		jmp	..@j10983
..@j10983:
		mov	bx,word [bp+8]
		mov	si,word [bp+8]
		mov	al,byte [bx+5]
		cmp	al,byte [si+6]
		je	..@j10989
		jmp	..@j10982
..@j10989:
		mov	bx,word [bp+6]
		push	word [bx]
		lea	ax,[bp-12]
		push	ax
		mov	ax,word [bp+8]
		push	ax
		call	SYSUTILS_$$_TRYSTRTODATE$ANSISTRING$TDATETIME$TFORMATSETTINGS$$BOOLEAN
		test	al,al
		je	..@j10981
		jmp	..@j10982
..@j10981:
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+6]
		push	word [bx]
		call	fpc_ansistr_assign
		mov	ax,word [bp+6]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
..@j10982:
..@j10978:
..@j10879:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-30]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-28]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp+10]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j10880
		call	FPC_RERAISE
..@j10880:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSUTILS_$$_TRYSTRTODATE$ANSISTRING$TDATETIME$TFORMATSETTINGS$$BOOLEAN
EXTERN	fpc_ansistr_copy
EXTERN	SYSTEM_$$_POS$CHAR$RAWBYTESTRING$$SMALLINT
EXTERN	SYSUTILS_$$_TRIM$ANSISTRING$$ANSISTRING
EXTERN	fpc_ansistr_assign
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	fpc_ansistr_incr_ref
