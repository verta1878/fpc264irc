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
	GLOBAL SYSUTILS$_$TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$__$$_ENDWRITE
SYSUTILS$_$TMULTIREADEXCLUSIVEWRITESYNCHRONIZER_$__$$_ENDWRITE:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+4]
		lea	ax,[bx+17]
		push	ax
		call	SYSTEM_$$_INTERLOCKEDDECREMENT$LONGINT$$LONGINT
		cmp	dx,0
		jne	..@j13096
		cmp	ax,0
		jne	..@j13096
		jmp	..@j13095
..@j13095:
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	SYSTEM_$$_BASICEVENTSETEVENT$POINTER
..@j13096:
		mov	bx,word [bp+4]
		lea	ax,[bx+10]
		push	ax
		call	SYSTEM_$$_LEAVECRITICALSECTION$TRTLCRITICALSECTION
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_LEAVECRITICALSECTION$TRTLCRITICALSECTION
EXTERN	SYSTEM_$$_BASICEVENTSETEVENT$POINTER
EXTERN	SYSTEM_$$_INTERLOCKEDDECREMENT$LONGINT$$LONGINT
