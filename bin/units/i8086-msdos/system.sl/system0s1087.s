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
	GLOBAL fpc_write_text_boolean_iso
fpc_write_text_boolean_iso:
		push	bp
		mov	bp,sp
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j22637
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j22638
..@j22637:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j22638:
		cmp	word [bx],0
		jne	..@j22635
		jmp	..@j22636
..@j22635:
		jmp	..@j22633
..@j22636:
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		cmp	dx,-1
		jne	..@j22640
		cmp	ax,-1
		jne	..@j22640
		jmp	..@j22639
..@j22639:
		mov	word [bp+8],5
		mov	word [bp+10],0
..@j22640:
		cmp	byte [bp+4],0
		jne	..@j22643
		jmp	..@j22644
..@j22643:
		push	word [bp+10]
		push	word [bp+8]
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word _$SYSTEM$_Ld35
		push	ax
		call	FPC_WRITE_TEXT_SHORTSTR_ISO
		jmp	..@j22651
..@j22644:
		push	word [bp+10]
		push	word [bp+8]
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word _$SYSTEM$_Ld36
		push	ax
		call	FPC_WRITE_TEXT_SHORTSTR_ISO
..@j22651:
..@j22633:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	_$SYSTEM$_Ld36
EXTERN	FPC_WRITE_TEXT_SHORTSTR_ISO
EXTERN	_$SYSTEM$_Ld35
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
