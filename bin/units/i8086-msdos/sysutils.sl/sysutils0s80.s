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
	GLOBAL SYSUTILS_$$_NEWSTR$ANSISTRING$$PANSISTRING
SYSUTILS_$$_NEWSTR$ANSISTRING$$PANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [bp+4],0
		je	..@j2712
		jmp	..@j2713
..@j2712:
		mov	word [bp-2],0
		jmp	..@j2716
..@j2713:
		mov	ax,2
		push	ax
		call	fpc_getmem
		mov	bx,ax
		mov	word [bx],0
		mov	word [bp-2],bx
		cmp	word [bp-2],0
		jne	..@j2725
		jmp	..@j2726
..@j2725:
		mov	ax,word [bp-2]
		push	ax
		push	word [bp+4]
		call	fpc_ansistr_assign
..@j2726:
..@j2716:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_ansistr_assign
EXTERN	fpc_getmem
