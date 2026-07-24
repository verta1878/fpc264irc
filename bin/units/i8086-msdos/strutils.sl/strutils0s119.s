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
	GLOBAL STRUTILS_$$_PADCENTER$ANSISTRING$SMALLINT$$ANSISTRING
STRUTILS_$$_PADCENTER$ANSISTRING$SMALLINT$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	word [bp-2],0
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j3341
		mov	bx,word [bx-2]
..@j3341:
		cmp	bx,word [bp+4]
		jl	..@j3339
		jmp	..@j3340
..@j3339:
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-2]
		push	ax
		mov	ax,32
		push	ax
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j3352
		mov	bx,word [bx-2]
..@j3352:
		test	bx,bx
		jns	..@j3353
		inc	bx
..@j3353:
		sar	bx,1
		mov	ax,word [bp+4]
		test	ax,ax
		jns	..@j3354
		inc	ax
..@j3354:
		sar	ax,1
		sub	ax,bx
		push	ax
		call	SYSTEM_$$_STRINGOFCHAR$CHAR$SMALLINT$$ANSISTRING
		push	word [bp-2]
		push	word [bp+6]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+8]
		push	word [bx]
		lea	ax,[bp-2]
		push	ax
		mov	ax,32
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j3371
		mov	bx,word [bx-2]
..@j3371:
		mov	ax,word [bp+4]
		sub	ax,bx
		push	ax
		call	SYSTEM_$$_STRINGOFCHAR$CHAR$SMALLINT$$ANSISTRING
		push	word [bp-2]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		jmp	..@j3374
..@j3340:
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+6]
		call	fpc_ansistr_assign
..@j3374:
		lea	ax,[bp-2]
		push	ax
		call	fpc_ansistr_decr_ref
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_ansistr_decr_ref
EXTERN	fpc_ansistr_assign
EXTERN	fpc_ansistr_concat
EXTERN	SYSTEM_$$_STRINGOFCHAR$CHAR$SMALLINT$$ANSISTRING
