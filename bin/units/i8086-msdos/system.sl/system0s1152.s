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
	GLOBAL SYSTEM_$$_REWRITE$file$LONGINT
SYSTEM_$$_REWRITE$file$LONGINT:
		push	bp
		mov	bp,sp
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j24397
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j24398
..@j24397:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j24398:
		cmp	word [bx],0
		jne	..@j24395
		jmp	..@j24396
..@j24395:
		jmp	..@j24393
..@j24396:
		mov	bx,word [bp+8]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		test	ax,ax
		jne	..@j24403
		cmp	dx,-10320
		je	..@j24402
..@j24403:
		test	ax,ax
		jne	..@j24404
		cmp	dx,-10319
		je	..@j24401
..@j24404:
		test	ax,ax
		jl	..@j24400
		test	ax,ax
		jg	..@j24405
		cmp	dx,-10318
		jb	..@j24400
..@j24405:
		test	ax,ax
		jl	..@j24401
		test	ax,ax
		jg	..@j24406
		cmp	dx,-10317
		jbe	..@j24401
..@j24406:
		jmp	..@j24400
..@j24401:
		mov	ax,word [bp+8]
		push	ax
		call	SYSTEM_$$_CLOSE$file
		jmp	..@j24399
..@j24402:
		jmp	..@j24399
..@j24400:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j24411
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j24412
..@j24411:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j24412:
		mov	word [bx],102
		jmp	..@j24393
..@j24399:
		mov	dx,word [bp+4]
		mov	ax,word [bp+6]
		cmp	ax,0
		jne	..@j24414
		cmp	dx,0
		jne	..@j24414
		jmp	..@j24413
..@j24413:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j24417
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j24418
..@j24417:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j24418:
		mov	word [bx],2
		jmp	..@j24419
..@j24414:
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+8]
		lea	ax,[bx+56]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,4098
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_DO_OPEN$formal$PWIDECHAR$LONGINT$BOOLEAN
		mov	bx,word [bp+8]
		mov	ax,word [bp+4]
		mov	word [bx+6],ax
..@j24419:
..@j24393:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_DO_OPEN$formal$PWIDECHAR$LONGINT$BOOLEAN
EXTERN	SYSTEM_$$_CLOSE$file
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
