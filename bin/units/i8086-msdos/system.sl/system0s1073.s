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
	GLOBAL fpc_write_text_int64_iso
fpc_write_text_int64_iso:
		push	bp
		mov	bp,sp
		sub	sp,256
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j22280
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j22281
..@j22280:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j22281:
		cmp	word [bx],0
		jne	..@j22278
		jmp	..@j22279
..@j22278:
		jmp	..@j22276
..@j22279:
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,-1
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_shortstr_int64
		mov	ax,word [bp+14]
		mov	dx,word [bp+16]
		cmp	dx,-1
		jne	..@j22291
		cmp	ax,-1
		jne	..@j22291
		jmp	..@j22290
..@j22290:
		mov	word [bp+14],20
		mov	word [bp+16],0
		jmp	..@j22294
..@j22291:
		mov	ax,0
		mov	dl,byte [bp-256]
		mov	dh,0
		cmp	ax,word [bp+16]
		jg	..@j22295
		jl	..@j22296
		cmp	dx,word [bp+14]
		ja	..@j22295
		jmp	..@j22296
		jmp	..@j22296
..@j22295:
		mov	ax,0
		mov	dl,byte [bp-256]
		mov	dh,0
		mov	word [bp+14],dx
		mov	word [bp+16],ax
..@j22296:
..@j22294:
		push	word [bp+16]
		push	word [bp+14]
		mov	ax,word [bp+12]
		push	ax
		lea	ax,[bp-256]
		push	ax
		call	FPC_WRITE_TEXT_SHORTSTR_ISO
..@j22276:
		mov	sp,bp
		pop	bp
		ret	14
EXTERN	FPC_WRITE_TEXT_SHORTSTR_ISO
EXTERN	fpc_shortstr_int64
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
