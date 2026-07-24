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
	GLOBAL SYSTEM_$$_ERASE$TEXT
SYSTEM_$$_ERASE$TEXT:
		push	bp
		mov	bp,sp
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21202
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21203
..@j21202:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21203:
		cmp	word [bx],0
		jne	..@j21200
		jmp	..@j21201
..@j21200:
		jmp	..@j21198
..@j21201:
		mov	bx,word [bp+4]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		cmp	ax,0
		jne	..@j21204
		cmp	dx,-10320
		jne	..@j21204
		jmp	..@j21205
..@j21204:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21208
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21209
..@j21208:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21209:
		mov	word [bx],102
		jmp	..@j21198
..@j21205:
		mov	bx,word [bp+4]
		lea	ax,[bx+56]
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_DO_ERASE$PWIDECHAR$BOOLEAN
..@j21198:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_DO_ERASE$PWIDECHAR$BOOLEAN
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
