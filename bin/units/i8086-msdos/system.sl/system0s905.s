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
	GLOBAL SYSTEM_$$_WAITFREE_FIXED$PMEMCHUNK_FIXED$POSCHUNK
SYSTEM_$$_WAITFREE_FIXED$PMEMCHUNK_FIXED$POSCHUNK:
		push	bp
		mov	bp,sp
		mov	ax,word U_$SYSTEM_$$_HEAP_LOCK
		push	ax
		call	SYSTEM_$$_ENTERCRITICALSECTION$TRTLCRITICALSECTION
		mov	bx,word [bp+4]
		mov	bx,word [bx+10]
		mov	si,word [bp+6]
		mov	ax,word [bx+82]
		mov	word [si+2],ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+10]
		mov	ax,word [bp+6]
		mov	word [bx+82],ax
		mov	ax,word U_$SYSTEM_$$_HEAP_LOCK
		push	ax
		call	SYSTEM_$$_LEAVECRITICALSECTION$TRTLCRITICALSECTION
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_LEAVECRITICALSECTION$TRTLCRITICALSECTION
EXTERN	SYSTEM_$$_ENTERCRITICALSECTION$TRTLCRITICALSECTION
EXTERN	U_$SYSTEM_$$_HEAP_LOCK
