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
	GLOBAL SYSTEM_$$_PARAMCOUNT$$LONGINT
SYSTEM_$$_PARAMCOUNT$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,260
		mov	ax,-1
		push	ax
		lea	ax,[bp-260]
		push	ax
		mov	ax,255
		push	ax
		call	SYSTEM_$$_GETARG$SMALLINT$OPENSTRING$$SMALLINT
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-4],cx
		mov	word [bp-2],ax
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret
EXTERN	SYSTEM_$$_GETARG$SMALLINT$OPENSTRING$$SMALLINT
