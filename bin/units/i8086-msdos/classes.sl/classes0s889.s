BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TWRITER_$__$$_ADDTOANCESTORLIST$TCOMPONENT
CLASSES$_$TWRITER_$__$$_ADDTOANCESTORLIST$TCOMPONENT:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+6]
		push	word [bx+16]
		mov	bx,word [bp+4]
		push	word [bx+8]
		mov	ax,word VMT_$CLASSES_$$_TPOSCOMPONENT
		push	ax
		mov	ax,1
		push	ax
		mov	bx,word [bp+6]
		push	word [bx+16]
		mov	bx,word [bp+6]
		mov	bx,word [bx+16]
		mov	bx,word [bx]
		mov	ax,word [bx+64]
		call	ax
		push	ax
		push	word [bp+4]
		call	CLASSES$_$TPOSCOMPONENT_$__$$_CREATE$SMALLINT$TCOMPONENT$$TPOSCOMPONENT
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx+16]
		mov	bx,word [bx]
		mov	ax,word [bx+84]
		call	ax
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TPOSCOMPONENT_$__$$_CREATE$SMALLINT$TCOMPONENT$$TPOSCOMPONENT
EXTERN	VMT_$CLASSES_$$_TPOSCOMPONENT
