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
	GLOBAL CRT_$$_INITDELAY
CRT_$$_INITDELAY:
		push	bp
		mov	bp,sp
		sti
		mov	ax,64
		mov	es,ax
		mov	di,108
		mov	bx,word [es:di]
..@j308:
		cmp	bx,word [es:di]
		je	..@j308
		mov	bx,word [es:di]
		mov	ax,-1
		mov	dx,-1
		call	CRT_$$_DELAYLOOP
		mov	word [U_$CRT_$$_DELAYCNT],ax
		mov	word [U_$CRT_$$_DELAYCNT+2],dx
		mov	ax,0
		push	ax
		mov	ax,85
		push	ax
		mov	ax,word [U_$CRT_$$_DELAYCNT]
		mov	dx,word [U_$CRT_$$_DELAYCNT+2]
		not	dx
		neg	ax
		sbb	dx,-1
		push	dx
		push	ax
		call	fpc_div_longint
		mov	word [U_$CRT_$$_DELAYCNT],ax
		mov	word [U_$CRT_$$_DELAYCNT+2],dx
		mov	sp,bp
		pop	bp
		ret
EXTERN	fpc_div_longint
EXTERN	U_$CRT_$$_DELAYCNT
EXTERN	CRT_$$_DELAYLOOP
