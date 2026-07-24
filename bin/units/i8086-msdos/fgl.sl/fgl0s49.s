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
	GLOBAL FGL$_$TFPSMAP_$__$$_PUTKEYDATA$POINTER$POINTER
FGL$_$TFPSMAP_$__$$_PUTKEYDATA$POINTER$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,2
		push	word [bp+8]
		push	word [bp+6]
		call	FGL$_$TFPSMAP_$__$$_INDEXOF$POINTER$$SMALLINT
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		jge	..@j1219
		jmp	..@j1220
..@j1219:
		push	word [bp+8]
		push	word [bp-2]
		push	word [bp+4]
		call	FGL$_$TFPSMAP_$__$$_PUTDATA$SMALLINT$POINTER
		jmp	..@j1227
..@j1220:
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		call	FGL$_$TFPSMAP_$__$$_ADD$POINTER$POINTER$$SMALLINT
..@j1227:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FGL$_$TFPSMAP_$__$$_ADD$POINTER$POINTER$$SMALLINT
EXTERN	FGL$_$TFPSMAP_$__$$_PUTDATA$SMALLINT$POINTER
EXTERN	FGL$_$TFPSMAP_$__$$_INDEXOF$POINTER$$SMALLINT
