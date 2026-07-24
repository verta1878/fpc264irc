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
	GLOBAL STRUTILS_$$_SEARCHBUF$crcF3608A10
STRUTILS_$$_SEARCHBUF$crcF3608A10:
		push	bp
		mov	bp,sp
		sub	sp,4
		push	word [bp+6]
		call	fpc_ansistr_incr_ref
		mov	dx,word [bp+10]
		mov	ax,word [bp+8]
		add	ax,dx
		mov	word [bp+10],ax
		cmp	word [bp+6],0
		je	..@j1962
		jmp	..@j1965
..@j1965:
		mov	ax,word [bp+10]
		cmp	ax,word [bp+12]
		jg	..@j1962
		jmp	..@j1964
..@j1964:
		cmp	word [bp+10],0
		jl	..@j1962
		jmp	..@j1963
..@j1962:
		mov	word [bp-2],0
		jmp	..@j1968
..@j1963:
		test	byte [bp+4],2
		jne	..@j1969
		jmp	..@j1970
..@j1969:
		mov	ax,word STRUTILS_$$_EQUALWITHCASE$CHAR$CHAR$$BOOLEAN
		mov	word [bp-4],ax
		jmp	..@j1973
..@j1970:
		mov	ax,word STRUTILS_$$_EQUALWITHOUTCASE$CHAR$CHAR$$BOOLEAN
		mov	word [bp-4],ax
..@j1973:
		test	byte [bp+4],1
		jne	..@j1976
		jmp	..@j1977
..@j1976:
		push	word [bp+14]
		mov	dx,word [bp+14]
		mov	ax,word [bp+10]
		add	ax,dx
		push	ax
		mov	ax,word [bp+12]
		dec	ax
		mov	dx,word [bp+14]
		add	dx,ax
		push	dx
		push	word [bp+6]
		push	word [bp-4]
		test	byte [bp+4],4
		mov	al,0
		je	..@j1992
		inc	ax
..@j1992:
		push	ax
		call	STRUTILS_$$_SEARCHDOWN$PCHAR$PCHAR$PCHAR$ANSISTRING$TEQUALFUNCTION$BOOLEAN$$PCHAR
		mov	word [bp-2],ax
		jmp	..@j1993
..@j1977:
		push	word [bp+14]
		mov	dx,word [bp+14]
		mov	ax,word [bp+10]
		add	ax,dx
		push	ax
		mov	ax,word [bp+12]
		dec	ax
		mov	dx,word [bp+14]
		add	dx,ax
		push	dx
		push	word [bp+6]
		push	word [bp-4]
		test	byte [bp+4],4
		mov	al,0
		je	..@j2008
		inc	ax
..@j2008:
		push	ax
		call	STRUTILS_$$_SEARCHUP$PCHAR$PCHAR$PCHAR$ANSISTRING$TEQUALFUNCTION$BOOLEAN$$PCHAR
		mov	word [bp-2],ax
..@j1993:
..@j1968:
		lea	ax,[bp+6]
		push	ax
		call	fpc_ansistr_decr_ref
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	12
EXTERN	fpc_ansistr_decr_ref
EXTERN	STRUTILS_$$_SEARCHUP$PCHAR$PCHAR$PCHAR$ANSISTRING$TEQUALFUNCTION$BOOLEAN$$PCHAR
EXTERN	STRUTILS_$$_SEARCHDOWN$PCHAR$PCHAR$PCHAR$ANSISTRING$TEQUALFUNCTION$BOOLEAN$$PCHAR
EXTERN	STRUTILS_$$_EQUALWITHOUTCASE$CHAR$CHAR$$BOOLEAN
EXTERN	STRUTILS_$$_EQUALWITHCASE$CHAR$CHAR$$BOOLEAN
EXTERN	fpc_ansistr_incr_ref
