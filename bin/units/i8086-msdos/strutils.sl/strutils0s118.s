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
	GLOBAL STRUTILS_$$_NUMB2USA$ANSISTRING$$ANSISTRING
STRUTILS_$$_NUMB2USA$ANSISTRING$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j3317
		mov	bx,word [bx-2]
..@j3317:
		mov	word [bp-2],bx
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		call	fpc_ansistr_assign
		mov	word [bp-4],0
		jmp	..@j3325
	ALIGN 2
..@j3324:
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j3330
		mov	bx,word [bx-2]
..@j3330:
		mov	dx,word [bp-2]
		mov	ax,bx
		sub	ax,dx
		inc	ax
		mov	dx,word [bp-4]
		sub	ax,dx
		cwd
		mov	cx,3
		idiv	cx
		test	dx,dx
		je	..@j3329
		jmp	..@j3328
..@j3329:
		cmp	word [bp-2],1
		jne	..@j3327
		jmp	..@j3328
..@j3327:
		mov	ax,word _$STRUTILS$_Ld5
		push	ax
		mov	ax,word [bp+6]
		push	ax
		push	word [bp-2]
		call	SYSTEM_$$_INSERT$RAWBYTESTRING$RAWBYTESTRING$SMALLINT
		inc	word [bp-4]
..@j3328:
		dec	word [bp-2]
..@j3325:
		cmp	word [bp-2],0
		jg	..@j3324
		jmp	..@j3326
..@j3326:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_INSERT$RAWBYTESTRING$RAWBYTESTRING$SMALLINT
EXTERN	_$STRUTILS$_Ld5
EXTERN	fpc_ansistr_assign
