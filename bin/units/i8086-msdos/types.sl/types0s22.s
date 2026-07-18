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
	GLOBAL TYPES$_$TPOINT_$__$$_POINTINCIRCLE$TPOINT$TPOINT$SMALLINT$$BOOLEAN
TYPES$_$TPOINT_$__$$_POINTINCIRCLE$TPOINT$TPOINT$SMALLINT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,6
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		call	TYPES$_$TPOINT_$__$$_DISTANCE$TPOINT$$EXTENDED
		mov	ax,word [bp+4]
		cwd
		mov	word [bp-6],ax
		mov	word [bp-4],dx
		wait fild	dword [bp-6]
		wait fcompp
		fstsw	[bp-4]
		mov	ah,byte [bp-3]
		sahf
		mov	al,0
		jb	..@j147
		inc	ax
..@j147:
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	TYPES$_$TPOINT_$__$$_DISTANCE$TPOINT$$EXTENDED
