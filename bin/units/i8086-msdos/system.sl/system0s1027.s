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
	GLOBAL SYSTEM_$$_CLOSE$TEXT
SYSTEM_$$_CLOSE$TEXT:
		push	bp
		mov	bp,sp
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21072
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21073
..@j21072:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21073:
		cmp	word [bx],0
		jne	..@j21070
		jmp	..@j21071
..@j21070:
		jmp	..@j21068
..@j21071:
		mov	bx,word [bp+4]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		test	ax,ax
		jl	..@j21075
		test	ax,ax
		jg	..@j21077
		cmp	dx,-10319
		jb	..@j21075
..@j21077:
		test	ax,ax
		jl	..@j21076
		test	ax,ax
		jg	..@j21078
		cmp	dx,-10318
		jbe	..@j21076
..@j21078:
		test	ax,ax
		jne	..@j21079
		cmp	dx,-10316
		je	..@j21076
..@j21079:
		jmp	..@j21075
..@j21076:
		mov	bx,word [bp+4]
		mov	dx,word [bx+2]
		mov	ax,word [bx+4]
		cmp	ax,0
		jne	..@j21081
		cmp	dx,-10318
		jne	..@j21081
		jmp	..@j21080
..@j21080:
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+18]
		call	ax
..@j21081:
		mov	bx,word [bp+4]
		cmp	word [bx],0
		jne	..@j21087
		jmp	..@j21085
..@j21087:
		mov	bx,word [bp+4]
		cmp	word [bx],1
		jne	..@j21086
		jmp	..@j21085
..@j21086:
		mov	bx,word [bp+4]
		cmp	word [bx],2
		jne	..@j21084
		jmp	..@j21085
..@j21084:
		mov	ax,word [bp+4]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+22]
		call	ax
..@j21085:
		mov	bx,word [bp+4]
		mov	word [bx+2],-10320
		mov	word [bx+4],0
		mov	bx,word [bp+4]
		mov	word [bx+10],0
		mov	bx,word [bp+4]
		mov	word [bx+12],0
		jmp	..@j21074
..@j21075:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j21098
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j21099
..@j21098:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j21099:
		mov	word [bx],103
..@j21074:
..@j21068:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	FPC_THREADVAR_RELOCATE
