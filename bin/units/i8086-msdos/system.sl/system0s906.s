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
	GLOBAL SYSTEM_$$_WAITFREE_VAR$PMEMCHUNK_VAR
SYSTEM_$$_WAITFREE_VAR$PMEMCHUNK_VAR:
		push	bp
		mov	bp,sp
		mov	ax,word U_$SYSTEM_$$_HEAP_LOCK
		push	ax
		call	SYSTEM_$$_ENTERCRITICALSECTION$TRTLCRITICALSECTION
		mov	bx,word [bp+4]
		mov	bx,word [bx+2]
		mov	si,word [bp+4]
		mov	ax,word [bx+84]
		mov	word [si+6],ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+2]
		mov	ax,word [bp+4]
		mov	word [bx+84],ax
		mov	ax,word U_$SYSTEM_$$_HEAP_LOCK
		push	ax
		call	SYSTEM_$$_LEAVECRITICALSECTION$TRTLCRITICALSECTION
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_LEAVECRITICALSECTION$TRTLCRITICALSECTION
EXTERN	SYSTEM_$$_ENTERCRITICALSECTION$TRTLCRITICALSECTION
EXTERN	U_$SYSTEM_$$_HEAP_LOCK
