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
	GLOBAL fpc_val_enum_ansistr
fpc_val_enum_ansistr:
	GLOBAL FPC_VAL_ENUM_ANSISTR
FPC_VAL_ENUM_ANSISTR:
		push	bp
		mov	bp,sp
		sub	sp,260
		push	word [bp+8]
		lea	ax,[bp-260]
		push	ax
		mov	ax,255
		push	ax
		push	word [bp+6]
		call	fpc_ansistr_to_shortstr
		lea	ax,[bp-260]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	FPC_VAL_ENUM_SHORTSTR
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_VAL_ENUM_SHORTSTR
EXTERN	fpc_ansistr_to_shortstr
