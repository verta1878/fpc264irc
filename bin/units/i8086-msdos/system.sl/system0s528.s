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
	GLOBAL SYSTEM_$$_WIDESTRINGTOUCS4STRING$WIDESTRING$$UCS4STRING
SYSTEM_$$_WIDESTRINGTOUCS4STRING$WIDESTRING$$UCS4STRING:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [bp+4]
		test	ax,ax
		jne	..@j13565
		mov	ax,word FPC_EMPTYCHAR
..@j13565:
		push	ax
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j13568
		mov	bx,word [bx-2]
..@j13568:
		push	bx
		mov	ax,word [bp+6]
		mov	word [bp-2],ax
		push	word [bp-2]
		mov	ax,word RTTI_$SYSTEM_$$_UCS4STRING
		push	ax
		call	fpc_dynarray_clear
		push	word [bp-2]
		call	SYSTEM_$$_UCS4ENCODE$PWIDECHAR$SMALLINT$UCS4STRING
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_UCS4ENCODE$PWIDECHAR$SMALLINT$UCS4STRING
EXTERN	fpc_dynarray_clear
EXTERN	RTTI_$SYSTEM_$$_UCS4STRING
EXTERN	FPC_EMPTYCHAR
