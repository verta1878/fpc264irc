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
	GLOBAL CRT_$$_DELAY$WORD
CRT_$$_DELAY$WORD:
		push	bp
		mov	bp,sp
		mov	ax,64
		mov	es,ax
		xor	di,di
		mov	cx,word [bp+4]
		test	cx,cx
		jz	..@j317
		mov	si,word [U_$CRT_$$_DELAYCNT+2]
		mov	bx,word [es:di]
..@j318:
		mov	ax,word [U_$CRT_$$_DELAYCNT]
		mov	dx,si
		call	CRT_$$_DELAYLOOP
		loop	..@j318
..@j317:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	CRT_$$_DELAYLOOP
EXTERN	U_$CRT_$$_DELAYCNT
