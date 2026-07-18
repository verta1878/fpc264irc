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
	GLOBAL SYSUTILS_$$_STRFMT$PCHAR$PCHAR$array_of_const$TFORMATSETTINGS$$PCHAR
SYSUTILS_$$_STRFMT$PCHAR$PCHAR$array_of_const$TFORMATSETTINGS$$PCHAR:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [bp+12]
		mov	word [bp-4],ax
		mov	ax,word [bp+12]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,32767
		push	ax
		mov	ax,word [bp+10]
		push	ax
		push	word [bp+10]
		call	FPC_PCHAR_LENGTH
		cwd
		mov	cx,ax
		mov	ax,dx
		push	ax
		push	cx
		mov	ax,word [bp+8]
		push	ax
		push	word [bp+6]
		mov	ax,word [bp+4]
		push	ax
		call	SYSUTILS_$$_FORMATBUF$crc0DCC39D0
		mov	si,ax
		mov	bx,word [bp-4]
		mov	byte [bx+si],0
		mov	ax,word [bp+12]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	SYSUTILS_$$_FORMATBUF$crc0DCC39D0
EXTERN	FPC_PCHAR_LENGTH
