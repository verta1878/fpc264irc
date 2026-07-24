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
	GLOBAL DOORKIT86_$$_INTTOSTR$LONGINT$$SHORTSTRING
DOORKIT86_$$_INTTOSTR$LONGINT$$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,256
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,-1
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_shortstr_longint
		mov	ax,word [bp+8]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-256]
		push	ax
		call	fpc_shortstr_to_shortstr
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_shortstr_to_shortstr
EXTERN	fpc_shortstr_longint
