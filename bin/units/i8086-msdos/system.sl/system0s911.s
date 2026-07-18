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
	GLOBAL SYSTEM_$$_TRY_FINISH_WAITFIXEDLIST$PFREELISTS$$BOOLEAN
SYSTEM_$$_TRY_FINISH_WAITFIXEDLIST$PFREELISTS$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		cmp	word [bx+82],0
		je	..@j19360
		jmp	..@j19361
..@j19360:
		mov	byte [bp-1],0
		jmp	..@j19358
..@j19361:
		mov	ax,word U_$SYSTEM_$$_HEAP_LOCK
		push	ax
		call	SYSTEM_$$_ENTERCRITICALSECTION$TRTLCRITICALSECTION
		push	word [bp+4]
		call	SYSTEM_$$_FINISH_WAITFIXEDLIST$PFREELISTS
		mov	ax,word U_$SYSTEM_$$_HEAP_LOCK
		push	ax
		call	SYSTEM_$$_LEAVECRITICALSECTION$TRTLCRITICALSECTION
		mov	byte [bp-1],1
..@j19358:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_LEAVECRITICALSECTION$TRTLCRITICALSECTION
EXTERN	SYSTEM_$$_FINISH_WAITFIXEDLIST$PFREELISTS
EXTERN	SYSTEM_$$_ENTERCRITICALSECTION$TRTLCRITICALSECTION
EXTERN	U_$SYSTEM_$$_HEAP_LOCK
