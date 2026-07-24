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
	GLOBAL fpc_initializeunits
fpc_initializeunits:
	GLOBAL FPC_INITIALIZEUNITS
FPC_INITIALIZEUNITS:
		push	bp
		mov	bp,sp
		sub	sp,4
		call	SYSTEM_$$_FPC_CPUINIT
		mov	ax,word [INITFINAL]
		mov	word [bp-4],ax
		mov	word [bp-2],1
		mov	ax,word [bp-4]
		cmp	ax,word [bp-2]
		jl	..@j17679
		dec	word [bp-2]
	ALIGN 2
..@j17680:
		inc	word [bp-2]
		mov	bx,word [bp-2]
		mov	cl,2
		shl	bx,cl
		cmp	word [INITFINAL+bx],0
		jne	..@j17681
		jmp	..@j17682
..@j17681:
		mov	bx,word [bp-2]
		mov	cl,2
		shl	bx,cl
		mov	ax,word [INITFINAL+bx]
		call	ax
..@j17682:
		mov	ax,word [bp-2]
		mov	word [INITFINAL+2],ax
		mov	ax,word [bp-4]
		cmp	ax,word [bp-2]
		jg	..@j17680
..@j17679:
		cmp	word [TC_$SYSTEM_$$_INITPROC],0
		jne	..@j17685
		jmp	..@j17686
..@j17685:
		mov	ax,word [TC_$SYSTEM_$$_INITPROC]
		call	ax
..@j17686:
		mov	sp,bp
		pop	bp
		ret
EXTERN	TC_$SYSTEM_$$_INITPROC
EXTERN	INITFINAL
EXTERN	SYSTEM_$$_FPC_CPUINIT
