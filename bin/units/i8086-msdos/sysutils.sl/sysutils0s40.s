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
	GLOBAL SYSUTILS_$$_CONCATPATHS$array_of_RAWBYTESTRING$$RAWBYTESTRING
SYSUTILS_$$_CONCATPATHS$array_of_RAWBYTESTRING$$RAWBYTESTRING:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	word [bp-20],0
		mov	word [bp-18],0
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
		jne	..@j1878
		mov	ax,word [bp+4]
		inc	ax
		cmp	ax,0
		jg	..@j1880
		jmp	..@j1881
..@j1880:
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+6]
		push	word [bx]
		call	fpc_ansistr_assign
		mov	ax,word [bp+4]
		inc	ax
		dec	ax
		mov	word [bp-22],ax
		mov	word [bp-2],1
		mov	ax,word [bp-22]
		cmp	ax,word [bp-2]
		jl	..@j1889
		dec	word [bp-2]
	ALIGN 2
..@j1890:
		inc	word [bp-2]
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-18]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx]
		call	SYSUTILS_$$_INCLUDETRAILINGPATHDELIMITER$RAWBYTESTRING$$RAWBYTESTRING
		push	word [bp-18]
		lea	ax,[bp-20]
		push	ax
		mov	bx,word [bp+6]
		mov	ax,word [bp-2]
		mov	si,ax
		shl	si,1
		push	word [bx+si]
		call	SYSUTILS_$$_EXCLUDELEADINGPATHDELIMITER$RAWBYTESTRING$$RAWBYTESTRING
		push	word [bp-20]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		mov	ax,word [bp-22]
		cmp	ax,word [bp-2]
		jg	..@j1890
..@j1889:
		jmp	..@j1907
..@j1881:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
..@j1907:
..@j1878:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-20]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-18]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j1879
		call	FPC_RERAISE
..@j1879:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_concat
EXTERN	SYSUTILS_$$_EXCLUDELEADINGPATHDELIMITER$RAWBYTESTRING$$RAWBYTESTRING
EXTERN	SYSUTILS_$$_INCLUDETRAILINGPATHDELIMITER$RAWBYTESTRING$$RAWBYTESTRING
EXTERN	fpc_ansistr_assign
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
