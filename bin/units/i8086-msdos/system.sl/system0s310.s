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
	GLOBAL SYSTEM$_$VAL_REAL$SHORTSTRING$SMALLINT$$EXTENDED_$$_FACTOR_10_INEXACT$crcDDB8D7AA
SYSTEM$_$VAL_REAL$SHORTSTRING$SMALLINT$$EXTENDED_$$_FACTOR_10_INEXACT$crcDDB8D7AA:
		push	bp
		mov	bp,sp
		sub	sp,50
		push	word [bp+6]
		lea	ax,[bp-20]
		push	ax
		call	SYSTEM_$$_DIY_FP_CACHED_POWER10$SMALLINT$TDIY_FP_POWER_OF_10
		mov	ax,word [bp-6]
		mov	dx,word [bp+6]
		sub	ax,dx
		mov	word [bp-4],ax
		cmp	word [bp-4],0
		jl	..@j6545
		jmp	..@j6546
..@j6545:
		mov	word [bp-2],1
		jmp	..@j5973
..@j6546:
		cmp	word [bp-4],36
		jg	..@j6549
		jmp	..@j6550
..@j6549:
		mov	word [bp-2],-1
		jmp	..@j5973
..@j6550:
		mov	bx,word [bp-4]
		mov	cl,4
		shl	bx,cl
		lea	di,[bp-36]
		push	ss
		pop	es
		lea	si,[TC_$SYSTEM$_$VAL_REAL$SHORTSTRING$SMALLINT$$EXTENDED_FACTOR_10_INEXACT$crcDDB8D7AA_$$_FACTOR+bx]
		cld
		mov	cx,8
		rep
		movsw
		cmp	word [bp-22],0
		je	..@j6555
		jmp	..@j6556
..@j6555:
		mov	di,word [bp+4]
		push	ds
		pop	es
		lea	si,[bp-20]
		cld
		mov	cx,8
		rep
		movsw
		jmp	..@j6559
..@j6556:
		cmp	word [bp-6],0
		je	..@j6560
		jmp	..@j6561
..@j6560:
		mov	di,word [bp+4]
		push	ds
		pop	es
		lea	si,[bp-36]
		cld
		mov	cx,8
		rep
		movsw
		jmp	..@j6564
..@j6561:
		lea	ax,[bp-50]
		push	ax
		lea	ax,[bp-20]
		push	ax
		lea	ax,[bp-36]
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_DIY_FP_MULTIPLY$TDIY_FP$TDIY_FP$BOOLEAN$$TDIY_FP
		mov	di,word [bp+4]
		push	ds
		pop	es
		lea	si,[bp-50]
		cld
		mov	cx,7
		rep
		movsw
		mov	bx,word [bp+4]
		mov	ax,word [bp+6]
		mov	word [bx+14],ax
..@j6564:
..@j6559:
		mov	word [bp-2],0
..@j5973:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_DIY_FP_MULTIPLY$TDIY_FP$TDIY_FP$BOOLEAN$$TDIY_FP
EXTERN	TC_$SYSTEM$_$VAL_REAL$SHORTSTRING$SMALLINT$$EXTENDED_FACTOR_10_INEXACT$crcDDB8D7AA_$$_FACTOR
EXTERN	SYSTEM_$$_DIY_FP_CACHED_POWER10$SMALLINT$TDIY_FP_POWER_OF_10
