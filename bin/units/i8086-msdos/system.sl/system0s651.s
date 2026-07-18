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
	GLOBAL fpc_write_text_variant
fpc_write_text_variant:
	GLOBAL FPC_WRITE_TEXT_VARIANT
FPC_WRITE_TEXT_VARIANT:
		push	bp
		mov	bp,sp
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j15802
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j15803
..@j15802:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j15803:
		cmp	word [bx],0
		jne	..@j15800
		jmp	..@j15801
..@j15800:
		jmp	..@j15798
..@j15801:
		mov	bx,word [bp+20]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		test	ax,ax
		jne	..@j15808
		cmp	dx,-10319
		je	..@j15807
..@j15808:
		test	ax,ax
		jne	..@j15809
		cmp	dx,-10318
		je	..@j15806
..@j15809:
		jmp	..@j15805
..@j15806:
		mov	dx,word [bp+22]
		mov	ax,word [bp+24]
		cmp	ax,-1
		jne	..@j15811
		cmp	dx,-1
		jne	..@j15811
		jmp	..@j15810
..@j15810:
		mov	ax,word [bp+20]
		push	ax
		sub	sp,16
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,8
		rep
		movsw
		mov	ax,word [U_$SYSTEM_$$_VARIANTMANAGER+90]
		call	ax
		jmp	..@j15816
..@j15811:
		mov	ax,word [bp+20]
		push	ax
		sub	sp,16
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+4]
		cld
		mov	cx,8
		rep
		movsw
		push	word [bp+24]
		push	word [bp+22]
		mov	ax,word [U_$SYSTEM_$$_VARIANTMANAGER+88]
		call	ax
..@j15816:
		jmp	..@j15804
..@j15807:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j15825
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j15826
..@j15825:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j15826:
		mov	word [bx],105
		jmp	..@j15804
..@j15805:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j15829
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j15830
..@j15829:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j15830:
		mov	word [bx],103
..@j15804:
..@j15798:
		mov	sp,bp
		pop	bp
		ret	22
EXTERN	U_$SYSTEM_$$_VARIANTMANAGER
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
