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
	GLOBAL SYSTEM_$$_FLUSH$TEXT
SYSTEM_$$_FLUSH$TEXT:
		push	bp
		mov	bp,sp
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21181
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21182
..@j21181:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21182:
		cmp	word [bx],0
		jne	..@j21179
		jmp	..@j21180
..@j21179:
		jmp	..@j21177
..@j21180:
		mov	bx,word [bp+4]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		cmp	ax,0
		jne	..@j21183
		cmp	dx,-10318
		jne	..@j21183
		jmp	..@j21184
..@j21183:
		mov	bx,word [bp+4]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		cmp	ax,0
		jne	..@j21186
		cmp	dx,-10319
		jne	..@j21186
		jmp	..@j21185
..@j21185:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21189
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21190
..@j21189:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21190:
		mov	word [bx],105
		jmp	..@j21191
..@j21186:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21194
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21195
..@j21194:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21195:
		mov	word [bx],103
..@j21191:
		jmp	..@j21177
..@j21184:
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+18]
		call	ax
..@j21177:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
