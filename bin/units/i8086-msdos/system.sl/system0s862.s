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
	GLOBAL fpc_setjmp
fpc_setjmp:
	GLOBAL FPC_SETJMP
FPC_SETJMP:
		mov	si,sp
		mov	di,word [ss:si+2]
		mov	ax,ds
		mov	es,ax
		mov	word [es:di],bp
		mov	ax,word [ss:si]
		mov	word [es:di+4],ax
		lea	ax,[si+4]
		mov	word [es:di+2],ax
		xor	ax,ax
		ret	2
