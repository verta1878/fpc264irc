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
	GLOBAL SYSUTILS_$$_FILEEXISTS$RAWBYTESTRING$$BOOLEAN
SYSUTILS_$$_FILEEXISTS$RAWBYTESTRING$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,6
		cmp	word [bp+4],0
		je	..@j15382
		jmp	..@j15383
..@j15382:
		mov	byte [bp-1],0
		jmp	..@j15386
..@j15383:
		push	word [bp+4]
		call	SYSUTILS_$$_FILEGETATTR$RAWBYTESTRING$$LONGINT
		mov	word [bp-6],ax
		mov	word [bp-4],dx
		mov	dx,word [bp-6]
		mov	ax,word [bp-4]
		cmp	ax,0
		jg	..@j15393
		jl	..@j15392
		cmp	dx,0
		jae	..@j15393
		jmp	..@j15392
..@j15393:
		mov	ax,word [bp-6]
		mov	dx,word [bp-4]
		and	ax,24
		mov	dx,0
		cmp	dx,0
		jne	..@j15392
		cmp	ax,0
		jne	..@j15392
		jmp	..@j15391
..@j15391:
		mov	byte [bp-1],1
		jmp	..@j15394
..@j15392:
		mov	byte [bp-1],0
..@j15394:
..@j15386:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSUTILS_$$_FILEGETATTR$RAWBYTESTRING$$LONGINT
