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
	GLOBAL SYSUTILS_$$_STRALLOC$LONGWORD$$PCHAR
SYSUTILS_$$_STRALLOC$LONGWORD$$PCHAR:
		push	bp
		mov	bp,sp
		sub	sp,2
		add	word [bp+4],4
		adc	word [bp+6],0
		lea	ax,[bp-2]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_GETMEM$POINTER$WORD
		mov	bx,word [bp-2]
		mov	ax,word [bp+4]
		mov	word [bx],ax
		mov	ax,word [bp+6]
		mov	word [bx+2],ax
		add	word [bp-2],4
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_GETMEM$POINTER$WORD
