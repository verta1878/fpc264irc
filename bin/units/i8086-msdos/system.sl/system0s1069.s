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
	GLOBAL fpc_write_text_uint_iso
fpc_write_text_uint_iso:
		push	bp
		mov	bp,sp
		sub	sp,256
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j22182
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j22183
..@j22182:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j22183:
		cmp	word [bx],0
		jne	..@j22180
		jmp	..@j22181
..@j22180:
		jmp	..@j22178
..@j22181:
		push	word [bp+4]
		mov	ax,-1
		push	ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_shortstr_uint
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		cmp	dx,-1
		jne	..@j22193
		cmp	ax,-1
		jne	..@j22193
		jmp	..@j22192
..@j22192:
		mov	word [bp+8],11
		mov	word [bp+10],0
		jmp	..@j22196
..@j22193:
		mov	ax,0
		mov	dl,byte [bp-256]
		mov	dh,0
		cmp	ax,word [bp+10]
		jg	..@j22197
		jl	..@j22198
		cmp	dx,word [bp+8]
		ja	..@j22197
		jmp	..@j22198
		jmp	..@j22198
..@j22197:
		mov	ax,0
		mov	dl,byte [bp-256]
		mov	dh,0
		mov	word [bp+8],dx
		mov	word [bp+10],ax
..@j22198:
..@j22196:
		push	word [bp+10]
		push	word [bp+8]
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-256]
		push	ax
		call	FPC_WRITE_TEXT_SHORTSTR_ISO
..@j22178:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_WRITE_TEXT_SHORTSTR_ISO
EXTERN	fpc_shortstr_uint
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
