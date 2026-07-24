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
	GLOBAL DATEUTILS_$$_INTERNALNTHDAYOFWEEK$WORD$$WORD
DATEUTILS_$$_INTERNALNTHDAYOFWEEK$WORD$$WORD:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,0
		push	ax
		mov	ax,7
		push	ax
		mov	ax,word [bp+4]
		mov	dx,0
		sub	ax,1
		sbb	dx,0
		push	dx
		push	ax
		call	fpc_div_longint
		add	ax,1
		adc	dx,0
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_div_longint
