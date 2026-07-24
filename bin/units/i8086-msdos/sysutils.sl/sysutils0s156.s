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
	GLOBAL SYSUTILS$_$FORMAT$crc784D66F0_READFORMAT$$CHAR_$$_READINTEGER
SYSUTILS$_$FORMAT$crc784D66F0_READFORMAT$$CHAR_$$_READINTEGER:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	word [bp-20],0
		mov	ax,1
		push	ax
		lea	ax,[bp-16]
		push	ax
		lea	ax,[bp-10]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j5105
		mov	bx,word [bp+4]
		mov	dx,word [bx-6]
		mov	ax,word [bx-4]
		cmp	ax,-1
		jne	..@j5107
		cmp	dx,-1
		jne	..@j5107
		jmp	..@j5108
..@j5107:
		jmp	..@j5105
..@j5108:
		mov	si,word [bp+4]
		mov	si,word [si+4]
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		mov	ax,word [bx-2]
		mov	word [si-4],ax
		jmp	..@j5112
	ALIGN 2
..@j5111:
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		inc	word [bx-2]
..@j5112:
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		mov	si,word [bp+4]
		mov	si,word [si+4]
		mov	ax,word [bx-2]
		cmp	ax,word [si-10]
		jle	..@j5115
		jmp	..@j5113
..@j5115:
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		mov	bx,word [bx+10]
		mov	si,word [bp+4]
		mov	si,word [si+4]
		mov	si,word [si-2]
		cmp	byte [bx+si-1],57
		jbe	..@j5114
		jmp	..@j5113
..@j5114:
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		mov	bx,word [bx+10]
		mov	si,word [bp+4]
		mov	si,word [si+4]
		mov	si,word [si-2]
		cmp	byte [bx+si-1],48
		jae	..@j5111
		jmp	..@j5113
..@j5113:
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		mov	si,word [bp+4]
		mov	si,word [si+4]
		mov	ax,word [bx-2]
		cmp	ax,word [si-10]
		jg	..@j5116
		jmp	..@j5117
..@j5116:
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		push	word [bx+10]
		call	SYSUTILS_$$_DOFORMATERROR$LONGINT$ANSISTRING
..@j5117:
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		mov	bx,word [bx+10]
		mov	si,word [bp+4]
		mov	si,word [si+4]
		mov	si,word [si-2]
		cmp	byte [bx+si-1],42
		je	..@j5122
		jmp	..@j5123
..@j5122:
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		cmp	word [bx-16],-1
		je	..@j5124
		jmp	..@j5125
..@j5124:
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		mov	ax,word [bx-6]
		mov	word [bp-4],ax
		jmp	..@j5128
..@j5125:
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		mov	ax,word [bx-16]
		mov	word [bp-4],ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		inc	word [bx-16]
..@j5128:
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		mov	si,word [bp+4]
		mov	si,word [si+4]
		mov	ax,word [bx-2]
		cmp	ax,word [si-4]
		jg	..@j5131
		jmp	..@j5133
..@j5133:
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		mov	ax,word [bx+6]
		cmp	ax,word [bp-4]
		jl	..@j5131
		jmp	..@j5132
..@j5131:
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		push	word [bx+10]
		call	SYSUTILS_$$_DOFORMATERROR$LONGINT$ANSISTRING
..@j5132:
		mov	ax,word [bp-4]
		inc	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		mov	word [bx-6],ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		mov	bx,word [bx+8]
		mov	ax,word [bp-4]
		mov	si,ax
		mov	ax,6
		mul	si
		mov	si,ax
		mov	ax,word [bx+si]
		test	ax,ax
		jl	..@j5141
		test	ax,ax
		je	..@j5142
		sub	ax,16
		je	..@j5143
		dec	ax
		je	..@j5144
		jmp	..@j5141
..@j5142:
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		mov	bx,word [bx+8]
		mov	ax,word [bp-4]
		mov	si,ax
		mov	ax,6
		mul	si
		mov	si,ax
		mov	di,word [bp+4]
		mov	ax,word [bx+si+2]
		mov	word [di-6],ax
		mov	ax,word [bx+si+4]
		mov	word [di-4],ax
		jmp	..@j5140
..@j5143:
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		mov	bx,word [bx+8]
		mov	ax,word [bp-4]
		mov	si,ax
		mov	ax,6
		mul	si
		mov	si,ax
		mov	si,word [bx+si+2]
		mov	bx,word [bp+4]
		mov	ax,word [si]
		mov	word [bx-6],ax
		mov	ax,word [si+2]
		mov	word [bx-4],ax
		jmp	..@j5140
..@j5144:
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		mov	bx,word [bx+8]
		mov	ax,word [bp-4]
		mov	si,ax
		mov	ax,6
		mul	si
		mov	si,ax
		mov	si,word [bx+si+2]
		mov	bx,word [bp+4]
		mov	ax,word [si]
		mov	word [bx-6],ax
		mov	ax,word [si+2]
		mov	word [bx-4],ax
		jmp	..@j5140
..@j5141:
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		push	word [bx+10]
		call	SYSUTILS_$$_DOFORMATERROR$LONGINT$ANSISTRING
..@j5140:
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		inc	word [bx-2]
		jmp	..@j5155
..@j5123:
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		mov	si,word [bp+4]
		mov	si,word [si+4]
		mov	ax,word [bx-4]
		cmp	ax,word [si-2]
		jl	..@j5156
		jmp	..@j5157
..@j5156:
		lea	ax,[bp-20]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		push	word [bx+10]
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		push	word [bx-4]
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		mov	si,word [bp+4]
		mov	si,word [si+4]
		mov	ax,word [bx-2]
		mov	dx,word [si-4]
		sub	ax,dx
		push	ax
		call	fpc_ansistr_copy
		push	word [bp-20]
		lea	ax,[bp-2]
		push	ax
		call	fpc_val_longint_ansistr
		mov	bx,word [bp+4]
		mov	word [bx-6],ax
		mov	word [bx-4],dx
		cmp	word [bp-2],0
		ja	..@j5172
		jmp	..@j5173
..@j5172:
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		push	word [bx+10]
		call	SYSUTILS_$$_DOFORMATERROR$LONGINT$ANSISTRING
..@j5173:
		jmp	..@j5178
..@j5157:
		mov	bx,word [bp+4]
		mov	word [bx-6],-1
		mov	word [bx-4],-1
..@j5178:
..@j5155:
..@j5105:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-20]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j5106
		call	FPC_RERAISE
..@j5106:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_val_longint_ansistr
EXTERN	fpc_ansistr_copy
EXTERN	SYSUTILS_$$_DOFORMATERROR$LONGINT$ANSISTRING
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
