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
	GLOBAL fpc_write_text_smallint_iso
fpc_write_text_smallint_iso:
		push	bp
		mov	bp,sp
		sub	sp,256
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j22476
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j22477
..@j22476:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j22477:
		cmp	word [bx],0
		jne	..@j22474
		jmp	..@j22475
..@j22474:
		jmp	..@j22472
..@j22475:
		push	word [bp+4]
		mov	ax,-1
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_shortstr_sint
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		cmp	dx,-1
		jne	..@j22487
		cmp	ax,-1
		jne	..@j22487
		jmp	..@j22486
..@j22486:
		mov	word [bp+8],11
		mov	word [bp+10],0
		jmp	..@j22490
..@j22487:
		mov	ax,0
		mov	dl,byte [bp-256]
		mov	dh,0
		cmp	ax,word [bp+10]
		jg	..@j22491
		jl	..@j22492
		cmp	dx,word [bp+8]
		ja	..@j22491
		jmp	..@j22492
		jmp	..@j22492
..@j22491:
		mov	ax,0
		mov	dl,byte [bp-256]
		mov	dh,0
		mov	word [bp+8],dx
		mov	word [bp+10],ax
..@j22492:
..@j22490:
		push	word [bp+10]
		push	word [bp+8]
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-256]
		push	ax
		call	FPC_WRITE_TEXT_SHORTSTR_ISO
..@j22472:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_WRITE_TEXT_SHORTSTR_ISO
EXTERN	fpc_shortstr_sint
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
