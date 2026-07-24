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
	GLOBAL fpc_chararray_to_ansistr
fpc_chararray_to_ansistr:
		push	bp
		mov	bp,sp
		sub	sp,6
		cmp	byte [bp+4],0
		jne	..@j9258
		jmp	..@j9259
..@j9258:
		mov	bx,word [bp+10]
		cmp	byte [bx],0
		je	..@j9260
		jmp	..@j9261
..@j9260:
		mov	word [bp-2],0
		jmp	..@j9264
..@j9261:
		mov	ax,word [bp+10]
		push	ax
		mov	ax,word [bp+8]
		inc	ax
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_INDEXCHAR$formal$SMALLINT$CHAR$$SMALLINT
		mov	word [bp-2],ax
		cmp	word [bp-2],-1
		je	..@j9273
		jmp	..@j9274
..@j9273:
		mov	ax,word [bp+8]
		inc	ax
		mov	word [bp-2],ax
..@j9274:
..@j9264:
		jmp	..@j9277
..@j9259:
		mov	ax,word [bp+8]
		inc	ax
		mov	word [bp-2],ax
..@j9277:
		mov	ax,word [bp+12]
		push	ax
		push	word [bp-2]
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		cmp	word [bp-2],0
		jg	..@j9286
		jmp	..@j9287
..@j9286:
		mov	ax,word [bp+6]
		mov	dx,word [bp+6]
		sub	dx,1
		jbe	..@j9295
		jmp	..@j9294
..@j9295:
		mov	ax,word [U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE]
		jmp	..@j9293
..@j9294:
..@j9293:
		mov	word [bp+6],ax
		mov	ax,word [bp+12]
		mov	word [bp-6],ax
		mov	ax,word [bp+10]
		mov	word [bp-4],ax
		mov	ax,word [bp-4]
		push	ax
		mov	bx,word [bp-6]
		mov	ax,word [bx]
		push	ax
		push	word [bp-2]
		call	SYSTEM_$$_MOVE$formal$formal$SMALLINT
		mov	ax,word [bp+12]
		push	ax
		push	word [bp+6]
		mov	ax,0
		push	ax
		call	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
..@j9287:
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
EXTERN	SYSTEM_$$_MOVE$formal$formal$SMALLINT
EXTERN	U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE
EXTERN	fpc_ansistr_setlength
EXTERN	SYSTEM_$$_INDEXCHAR$formal$SMALLINT$CHAR$$SMALLINT
