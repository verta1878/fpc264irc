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
	GLOBAL fpc_typed_read
fpc_typed_read:
	GLOBAL FPC_TYPED_READ
FPC_TYPED_READ:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j25148
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j25149
..@j25148:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j25149:
		cmp	word [bx],0
		jne	..@j25146
		jmp	..@j25147
..@j25146:
		jmp	..@j25144
..@j25147:
		mov	bx,word [bp+6]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		test	ax,ax
		jne	..@j25154
		cmp	dx,-10319
		je	..@j25152
..@j25154:
		test	ax,ax
		jne	..@j25155
		cmp	dx,-10318
		je	..@j25153
..@j25155:
		test	ax,ax
		jne	..@j25156
		cmp	dx,-10317
		je	..@j25152
..@j25156:
		jmp	..@j25151
..@j25152:
		mov	bx,word [bp+6]
		push	word [bx]
		mov	ax,word [bp+4]
		push	ax
		push	word [bp+10]
		push	word [bp+8]
		call	SYSTEM_$$_DO_READ$WORD$POINTER$LONGINT$$LONGINT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		cmp	ax,word [bp+10]
		jl	..@j25165
		jg	..@j25166
		cmp	dx,word [bp+8]
		jb	..@j25165
		jmp	..@j25166
		jmp	..@j25166
..@j25165:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j25169
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j25170
..@j25169:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j25170:
		mov	word [bx],100
..@j25166:
		jmp	..@j25150
..@j25153:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j25173
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j25174
..@j25173:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j25174:
		mov	word [bx],104
		jmp	..@j25150
..@j25151:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j25177
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j25178
..@j25177:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j25178:
		mov	word [bx],103
..@j25150:
..@j25144:
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_DO_READ$WORD$POINTER$LONGINT$$LONGINT
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
