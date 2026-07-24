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
	GLOBAL SYSUTILS_$$_STRTOINTDEF$ANSISTRING$LONGINT$$LONGINT
SYSUTILS_$$_STRTOINTDEF$ANSISTRING$LONGINT$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,6
		push	word [bp+8]
		lea	ax,[bp-6]
		push	ax
		call	fpc_val_longint_ansistr
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		cmp	word [bp-6],0
		jne	..@j3965
		jmp	..@j3966
..@j3965:
		mov	ax,word [bp+4]
		mov	word [bp-4],ax
		mov	ax,word [bp+6]
		mov	word [bp-2],ax
..@j3966:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	fpc_val_longint_ansistr
