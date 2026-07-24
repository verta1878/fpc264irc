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
	GLOBAL fpc_write_text_longword_iso
fpc_write_text_longword_iso:
		push	bp
		mov	bp,sp
		sub	sp,256
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j22349
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j22350
..@j22349:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j22350:
		cmp	word [bx],0
		jne	..@j22347
		jmp	..@j22348
..@j22347:
		jmp	..@j22345
..@j22348:
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,-1
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_shortstr_longword
		mov	ax,word [bp+10]
		mov	dx,word [bp+12]
		cmp	dx,-1
		jne	..@j22360
		cmp	ax,-1
		jne	..@j22360
		jmp	..@j22359
..@j22359:
		mov	word [bp+10],11
		mov	word [bp+12],0
		jmp	..@j22363
..@j22360:
		mov	ax,0
		mov	dl,byte [bp-256]
		mov	dh,0
		cmp	ax,word [bp+12]
		jg	..@j22364
		jl	..@j22365
		cmp	dx,word [bp+10]
		ja	..@j22364
		jmp	..@j22365
		jmp	..@j22365
..@j22364:
		mov	ax,0
		mov	dl,byte [bp-256]
		mov	dh,0
		mov	word [bp+10],dx
		mov	word [bp+12],ax
..@j22365:
..@j22363:
		push	word [bp+12]
		push	word [bp+10]
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-256]
		push	ax
		call	FPC_WRITE_TEXT_SHORTSTR_ISO
..@j22345:
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	FPC_WRITE_TEXT_SHORTSTR_ISO
EXTERN	fpc_shortstr_longword
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
