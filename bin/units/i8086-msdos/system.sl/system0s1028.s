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
	GLOBAL SYSTEM_$$_OPENTEXT$TEXT$LONGINT$LONGINT
SYSTEM_$$_OPENTEXT$TEXT$LONGINT$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+12]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		test	ax,ax
		jne	..@j21106
		cmp	dx,-10320
		je	..@j21105
..@j21106:
		test	ax,ax
		jl	..@j21103
		test	ax,ax
		jg	..@j21107
		cmp	dx,-10319
		jb	..@j21103
..@j21107:
		test	ax,ax
		jl	..@j21104
		test	ax,ax
		jg	..@j21108
		cmp	dx,-10317
		jbe	..@j21104
..@j21108:
		jmp	..@j21103
..@j21104:
		mov	ax,word [bp+12]
		push	ax
		call	SYSTEM_$$_CLOSE$TEXT
		jmp	..@j21102
..@j21105:
		jmp	..@j21102
..@j21103:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21113
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21114
..@j21113:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21114:
		mov	word [bx],102
		jmp	..@j21100
..@j21102:
		mov	bx,word [bp+12]
		mov	ax,word [bp+8]
		mov	word [bx+2],ax
		mov	ax,word [bp+10]
		mov	word [bx+4],ax
		mov	bx,word [bp+12]
		mov	word [bx+10],0
		mov	bx,word [bp+12]
		mov	word [bx+12],0
		mov	bx,word [bp+12]
		mov	ax,word [bx+828]
		mov	word [bp-2],ax
		mov	dx,word [bp-2]
		mov	ax,word [bp-2]
		sub	ax,1
		jbe	..@j21130
		jmp	..@j21129
..@j21130:
		mov	dx,word [U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE]
		jmp	..@j21128
..@j21129:
..@j21128:
		mov	bx,word [bp+12]
		mov	word [bx+828],dx
		mov	ax,word [bp+12]
		push	ax
		mov	bx,word [bp+12]
		mov	ax,word [bx+16]
		call	ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21137
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21138
..@j21137:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21138:
		cmp	word [bx],0
		jne	..@j21135
		jmp	..@j21136
..@j21135:
		mov	bx,word [bp+12]
		mov	word [bx+2],-10320
		mov	word [bx+4],0
..@j21136:
..@j21100:
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	SYSTEM_$$_CLOSE$TEXT
