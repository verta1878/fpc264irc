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
	GLOBAL ISO7185_$$_EOLN$TEXT$$BOOLEAN
ISO7185_$$_EOLN$TEXT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	al,byte [TC_$SYSTEM_$$_CTRLZMARKSEOF]
		mov	byte [bp-2],al
		mov	byte [TC_$SYSTEM_$$_CTRLZMARKSEOF],1
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM_$$_EOLN$TEXT$$BOOLEAN
		mov	byte [bp-1],al
		mov	al,byte [bp-2]
		mov	byte [TC_$SYSTEM_$$_CTRLZMARKSEOF],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_EOLN$TEXT$$BOOLEAN
EXTERN	TC_$SYSTEM_$$_CTRLZMARKSEOF
