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
	GLOBAL SYSTEM_$$_GET_CALLER_STACKINFO$POINTER$NEARPOINTER
SYSTEM_$$_GET_CALLER_STACKINFO$POINTER$NEARPOINTER:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+6]
		push	word [bx]
		mov	bx,word [bp+4]
		push	word [bx]
		call	SYSTEM_$$_GET_CALLER_FRAME$POINTER$NEARPOINTER$$POINTER
		mov	word [bp-2],ax
		mov	bx,word [bp+6]
		push	word [bx]
		mov	bx,word [bp+4]
		push	word [bx]
		call	SYSTEM_$$_GET_CALLER_ADDR$POINTER$NEARPOINTER$$NEARPOINTER
		mov	word [bp-4],ax
		mov	bx,word [bp+6]
		mov	ax,word [bp-2]
		mov	word [bx],ax
		mov	bx,word [bp+4]
		mov	ax,word [bp-4]
		mov	word [bx],ax
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_GET_CALLER_ADDR$POINTER$NEARPOINTER$$NEARPOINTER
EXTERN	SYSTEM_$$_GET_CALLER_FRAME$POINTER$NEARPOINTER$$POINTER
