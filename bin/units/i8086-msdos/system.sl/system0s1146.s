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
	GLOBAL SYSTEM_$$_INITFILE$file
SYSTEM_$$_INITFILE$file:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+4]
		push	ax
		mov	ax,568
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
		mov	bx,word [bp+4]
		mov	word [bx],-1
		mov	bx,word [bp+4]
		mov	word [bx+2],-10320
		mov	word [bx+4],0
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
