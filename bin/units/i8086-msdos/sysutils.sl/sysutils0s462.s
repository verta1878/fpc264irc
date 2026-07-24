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
	GLOBAL SYSUTILS_$$_ADDTERMINATEPROC$TTERMINATEPROC
SYSUTILS_$$_ADDTERMINATEPROC$TTERMINATEPROC:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,4
		push	ax
		call	fpc_getmem
		mov	word [bp-2],ax
		mov	bx,word [bp-2]
		mov	ax,word [TC_$SYSUTILS_$$_TPLIST]
		mov	word [bx+2],ax
		mov	ax,word [bp+4]
		mov	word [bx],ax
		mov	ax,word [bp-2]
		mov	word [TC_$SYSUTILS_$$_TPLIST],ax
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	TC_$SYSUTILS_$$_TPLIST
EXTERN	fpc_getmem
