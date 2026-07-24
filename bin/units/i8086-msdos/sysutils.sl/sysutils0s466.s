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
	GLOBAL SYSUTILS_$$_CREATEGUID$TGUID$$SMALLINT
SYSUTILS_$$_CREATEGUID$TGUID$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [TC_$SYSUTILS_$$_ONCREATEGUID],0
		jne	..@j15090
		jmp	..@j15091
..@j15090:
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word [TC_$SYSUTILS_$$_ONCREATEGUID]
		call	ax
		mov	word [bp-2],ax
		jmp	..@j15096
..@j15091:
		mov	ax,word [bp+4]
		push	ax
		mov	ax,16
		push	ax
		call	SYSUTILS_$$_GETRANDOMBYTES$formal$SMALLINT
		mov	bx,word [bp+4]
		mov	al,byte [bx+8]
		mov	ah,0
		and	ax,63
		add	ax,64
		mov	bx,word [bp+4]
		mov	byte [bx+8],al
		mov	bx,word [bp+4]
		mov	ax,word [bx+6]
		and	ax,4095
		add	ax,16384
		mov	bx,word [bp+4]
		mov	word [bx+6],ax
		mov	word [bp-2],0
..@j15096:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSUTILS_$$_GETRANDOMBYTES$formal$SMALLINT
EXTERN	TC_$SYSUTILS_$$_ONCREATEGUID
