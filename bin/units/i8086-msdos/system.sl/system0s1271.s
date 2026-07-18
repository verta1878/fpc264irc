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
	GLOBAL SYSTEM_$$_RANDOMIZE
SYSTEM_$$_RANDOMIZE:
		push	bp
		mov	bp,sp
		sub	sp,24
		mov	byte [bp-23],44
		lea	ax,[bp-24]
		push	ax
		call	FPC_MSDOS
		mov	ax,word [bp-18]
		mov	dx,0
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	dx,ax
		mov	ax,0
		mov	cx,word [bp-20]
		mov	bx,0
		add	cx,ax
		adc	bx,dx
		mov	word [U_$SYSTEM_$$_RANDSEED],cx
		mov	word [U_$SYSTEM_$$_RANDSEED+2],bx
		mov	sp,bp
		pop	bp
		ret
EXTERN	U_$SYSTEM_$$_RANDSEED
EXTERN	FPC_MSDOS
