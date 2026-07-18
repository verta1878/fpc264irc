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
	GLOBAL OBJECTS$_$TSTRLISTMAKER_$__$$_DONE
OBJECTS$_$TSTRLISTMAKER_$__$$_DONE:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+6]
		push	word [bx+20]
		mov	bx,word [bp+6]
		mov	ax,word [bx+16]
		mov	dx,word [bx+18]
		mov	cx,3
..@j3094:
		shl	ax,1
		rcl	dx,1
		loop	..@j3094
		push	ax
		call	SYSTEM_$$_FREEMEM$POINTER$WORD
		mov	bx,word [bp+6]
		push	word [bx+10]
		mov	bx,word [bp+6]
		push	word [bx+6]
		call	SYSTEM_$$_FREEMEM$POINTER$WORD
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_help_destructor
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_help_destructor
EXTERN	SYSTEM_$$_FREEMEM$POINTER$WORD
