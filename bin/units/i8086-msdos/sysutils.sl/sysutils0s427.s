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
	GLOBAL SYSUTILS_$$_SUPPORTS$TCLASS$SHORTSTRING$$BOOLEAN
SYSUTILS_$$_SUPPORTS$TCLASS$SHORTSTRING$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [bp+6],0
		jne	..@j13720
		jmp	..@j13719
..@j13720:
		push	word [bp+6]
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_GETINTERFACEENTRYBYSTR$SHORTSTRING$$PINTERFACEENTRY
		test	ax,ax
		jne	..@j13718
		jmp	..@j13719
..@j13718:
		mov	byte [bp-1],1
		jmp	..@j13725
..@j13719:
		mov	byte [bp-1],0
..@j13725:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM$_$TOBJECT_$__$$_GETINTERFACEENTRYBYSTR$SHORTSTRING$$PINTERFACEENTRY
