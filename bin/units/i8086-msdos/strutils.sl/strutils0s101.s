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
	GLOBAL STRUTILS_$$_NPOS$ANSISTRING$ANSISTRING$SMALLINT$$SMALLINT
STRUTILS_$$_NPOS$ANSISTRING$ANSISTRING$SMALLINT$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,8
		push	word [bp+6]
		call	fpc_ansistr_incr_ref
		mov	word [bp-2],0
		cmp	word [bp+4],1
		jl	..@j2890
		jmp	..@j2891
..@j2890:
		jmp	..@j2886
..@j2891:
		mov	word [bp-8],0
		mov	word [bp-4],1
	ALIGN 2
..@j2896:
		push	word [bp+8]
		push	word [bp+6]
		call	SYSTEM_$$_POS$RAWBYTESTRING$RAWBYTESTRING$$SMALLINT
		mov	word [bp-6],ax
		mov	ax,word [bp-6]
		add	word [bp-8],ax
		cmp	word [bp-6],0
		jg	..@j2905
		jmp	..@j2906
..@j2905:
		lea	ax,[bp+6]
		push	ax
		mov	ax,1
		push	ax
		push	word [bp-6]
		call	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
..@j2906:
		inc	word [bp-4]
		mov	ax,word [bp-4]
		cmp	ax,word [bp+4]
		jg	..@j2898
		jmp	..@j2913
..@j2913:
		cmp	word [bp-6],0
		je	..@j2898
		jmp	..@j2896
..@j2898:
		cmp	word [bp-6],0
		jg	..@j2914
		jmp	..@j2915
..@j2914:
		mov	ax,word [bp-8]
		mov	word [bp-2],ax
..@j2915:
..@j2886:
		lea	ax,[bp+6]
		push	ax
		call	fpc_ansistr_decr_ref
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_ansistr_decr_ref
EXTERN	SYSTEM_$$_DELETE$RAWBYTESTRING$SMALLINT$SMALLINT
EXTERN	SYSTEM_$$_POS$RAWBYTESTRING$RAWBYTESTRING$$SMALLINT
EXTERN	fpc_ansistr_incr_ref
