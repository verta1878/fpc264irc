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
	GLOBAL CLASSES_$$_UNREGISTERCLASSES$array_of_TPERSISTENTCLASS
CLASSES_$$_UNREGISTERCLASSES$array_of_TPERSISTENTCLASS:
		push	bp
		mov	bp,sp
		mov	ax,word [bp+6]
		mov	di,word [bp+4]
		inc	di
		mov	cx,di
		shl	di,1
		sub	sp,di
		and	sp,-2
		mov	di,sp
		push	ss
		pop	es
		mov	si,ax
		cld
		rep
		movsw
		mov	ax,sp
		mov	word [bp+6],ax
		mov	sp,bp
		pop	bp
		ret	4
