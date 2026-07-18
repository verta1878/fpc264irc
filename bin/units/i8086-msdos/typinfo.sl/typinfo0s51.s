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
	GLOBAL TYPINFO_$$_GETOBJECTPROP$TOBJECT$PPROPINFO$TCLASS$$TOBJECT
TYPINFO_$$_GETOBJECTPROP$TOBJECT$PPROPINFO$TCLASS$$TOBJECT:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+8]
		push	word [bp+6]
		call	TYPINFO_$$_GETORDPROP$TOBJECT$PPROPINFO$$INT64
		mov	ax,dx
		mov	word [bp-2],ax
		cmp	word [bp+4],0
		jne	..@j1241
		jmp	..@j1240
..@j1241:
		cmp	word [bp-2],0
		jne	..@j1239
		jmp	..@j1240
..@j1239:
		mov	bx,word [bp-2]
		mov	ax,word [bx]
		push	ax
		push	word [bp+4]
		call	SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN
		test	al,al
		je	..@j1242
		jmp	..@j1243
..@j1242:
		mov	word [bp-2],0
..@j1243:
..@j1240:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM$_$TOBJECT_$__$$_INHERITSFROM$TCLASS$$BOOLEAN
EXTERN	TYPINFO_$$_GETORDPROP$TOBJECT$PPROPINFO$$INT64
