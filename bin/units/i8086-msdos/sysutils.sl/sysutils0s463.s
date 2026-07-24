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
	GLOBAL SYSUTILS_$$_CALLTERMINATEPROCS$$BOOLEAN
SYSUTILS_$$_CALLTERMINATEPROCS$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	byte [bp-1],1
		mov	ax,word [TC_$SYSUTILS_$$_TPLIST]
		mov	word [bp-4],ax
		jmp	..@j15058
	ALIGN 2
..@j15057:
		mov	bx,word [bp-4]
		mov	ax,word [bx]
		call	ax
		mov	byte [bp-1],al
		mov	bx,word [bp-4]
		mov	ax,word [bx+2]
		mov	word [bp-4],ax
..@j15058:
		cmp	byte [bp-1],0
		jne	..@j15064
		jmp	..@j15059
..@j15064:
		cmp	word [bp-4],0
		jne	..@j15057
		jmp	..@j15059
..@j15059:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret
EXTERN	TC_$SYSUTILS_$$_TPLIST
