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
	GLOBAL SYSUTILS_$$_DISPOSESTR$PANSISTRING
SYSUTILS_$$_DISPOSESTR$PANSISTRING:
		push	bp
		mov	bp,sp
		cmp	word [bp+4],0
		jne	..@j2733
		jmp	..@j2734
..@j2733:
		mov	ax,word [bp+4]
		push	ax
		call	fpc_ansistr_decr_ref
		push	word [bp+4]
		call	fpc_freemem
		mov	word [bp+4],0
..@j2734:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_freemem
EXTERN	fpc_ansistr_decr_ref
