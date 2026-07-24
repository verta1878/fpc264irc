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
	GLOBAL fpc_typed_write
fpc_typed_write:
	GLOBAL FPC_TYPED_WRITE
FPC_TYPED_WRITE:
		push	bp
		mov	bp,sp
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j25121
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j25122
..@j25121:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j25122:
		cmp	word [bx],0
		jne	..@j25119
		jmp	..@j25120
..@j25119:
		jmp	..@j25117
..@j25120:
		mov	bx,word [bp+6]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		test	ax,ax
		jne	..@j25127
		cmp	dx,-10319
		je	..@j25126
..@j25127:
		test	ax,ax
		jl	..@j25124
		test	ax,ax
		jg	..@j25128
		cmp	dx,-10318
		jb	..@j25124
..@j25128:
		test	ax,ax
		jl	..@j25125
		test	ax,ax
		jg	..@j25129
		cmp	dx,-10317
		jbe	..@j25125
..@j25129:
		jmp	..@j25124
..@j25125:
		mov	bx,word [bp+6]
		push	word [bx]
		mov	ax,word [bp+4]
		push	ax
		push	word [bp+10]
		push	word [bp+8]
		call	SYSTEM_$$_DO_WRITE$WORD$POINTER$LONGINT$$LONGINT
		jmp	..@j25123
..@j25126:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j25138
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j25139
..@j25138:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j25139:
		mov	word [bx],105
		jmp	..@j25123
..@j25124:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j25142
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j25143
..@j25142:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j25143:
		mov	word [bx],103
..@j25123:
..@j25117:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_DO_WRITE$WORD$POINTER$LONGINT$$LONGINT
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
