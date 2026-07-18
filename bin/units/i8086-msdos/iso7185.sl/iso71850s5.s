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
	GLOBAL ISO7185_$$_EOF$TEXT$$BOOLEAN
ISO7185_$$_EOF$TEXT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		cmp	ax,0
		jne	..@j56
		cmp	dx,-10318
		jne	..@j56
		jmp	..@j55
..@j55:
		mov	byte [bp-1],1
		jmp	..@j59
..@j56:
		mov	al,byte [TC_$SYSTEM_$$_CTRLZMARKSEOF]
		mov	byte [bp-2],al
		mov	byte [TC_$SYSTEM_$$_CTRLZMARKSEOF],0
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM_$$_EOF$TEXT$$BOOLEAN
		mov	byte [bp-1],al
		mov	al,byte [bp-2]
		mov	byte [TC_$SYSTEM_$$_CTRLZMARKSEOF],al
..@j59:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_EOF$TEXT$$BOOLEAN
EXTERN	TC_$SYSTEM_$$_CTRLZMARKSEOF
