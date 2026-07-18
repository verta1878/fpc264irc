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
	GLOBAL SYSUTILS_$$_VENDORNAME$$ANSISTRING
SYSUTILS_$$_VENDORNAME$$ANSISTRING:
		push	bp
		mov	bp,sp
		cmp	word [U_$SYSUTILS_$$_ONGETVENDORNAME],0
		jne	..@j13278
		jmp	..@j13279
..@j13278:
		mov	ax,word [bp+4]
		push	ax
		mov	ax,word [U_$SYSUTILS_$$_ONGETVENDORNAME]
		call	ax
		jmp	..@j13282
..@j13279:
		mov	ax,word [bp+4]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
..@j13282:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_ansistr_assign
EXTERN	U_$SYSUTILS_$$_ONGETVENDORNAME
