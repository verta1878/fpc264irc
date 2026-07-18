BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TPARSER_$__$$_HANDLENUMBER
CLASSES$_$TPARSER_$__$$_HANDLENUMBER:
		push	bp
		mov	bp,sp
		sub	sp,26
		mov	word [bp-26],0
		mov	word [bp-24],0
		mov	ax,1
		push	ax
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-8]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j3115
		mov	bx,word [bp+4]
		lea	ax,[bx+17]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		jmp	..@j3122
	ALIGN 2
..@j3121:
		push	word [bp+4]
		call	CLASSES$_$TPARSER_$__$$_PROCESSCHAR
..@j3122:
		push	word [bp+4]
		call	CLASSES$_$TPARSER_$__$$_ISNUMBER$$BOOLEAN
		test	al,al
		jne	..@j3121
		jmp	..@j3123
..@j3123:
		mov	bx,word [bp+4]
		mov	byte [bx+15],3
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		mov	si,word [bp+4]
		mov	si,word [si+8]
		mov	al,byte [bx+si]
		mov	ah,0
		cmp	ax,46
		je	..@j3132
		cmp	ax,69
		je	..@j3132
		cmp	ax,101
		je	..@j3132
..@j3132:
		je	..@j3130
		jmp	..@j3131
..@j3130:
		mov	bx,word [bp+4]
		mov	byte [bx+15],4
		mov	byte [bp-1],3
		jmp	..@j3138
	ALIGN 2
..@j3137:
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		mov	si,word [bp+4]
		mov	si,word [si+8]
		mov	al,byte [bx+si]
		cmp	al,46
		jb	..@j3141
		sub	al,46
		je	..@j3142
		sub	al,23
		je	..@j3143
		sub	al,32
		je	..@j3143
		jmp	..@j3141
..@j3142:
		test	byte [bp-1],1
		jne	..@j3144
		jmp	..@j3145
..@j3144:
		mov	al,byte [bp-1]
		mov	ah,0
		and	ax,-2
		mov	byte [bp-1],al
		jmp	..@j3146
..@j3145:
		jmp	..@j3139
..@j3146:
		jmp	..@j3140
..@j3143:
		test	byte [bp-1],2
		jne	..@j3147
		jmp	..@j3148
..@j3147:
		mov	byte [bp-1],0
		push	word [bp+4]
		call	CLASSES$_$TPARSER_$__$$_PROCESSCHAR
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		mov	si,word [bp+4]
		mov	si,word [si+8]
		mov	al,byte [bx+si]
		mov	ah,0
		cmp	ax,43
		je	..@j3155
		cmp	ax,45
		je	..@j3155
..@j3155:
		je	..@j3153
		jmp	..@j3154
..@j3153:
		push	word [bp+4]
		call	CLASSES$_$TPARSER_$__$$_PROCESSCHAR
..@j3154:
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		mov	si,word [bp+4]
		mov	si,word [si+8]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,48
		cmp	ax,10
		jb	..@j3160
..@j3160:
		jnc	..@j3158
		jmp	..@j3159
..@j3158:
		push	word [bp+4]
		push	word [RESSTR_$RTLCONSTS_$$_SPARINVALIDFLOAT+2]
		lea	ax,[bp-24]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-24]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+17]
		lea	ax,[bp-26]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		mov	si,word [bp+4]
		mov	si,word [si+8]
		mov	al,byte [bx+si]
		mov	ah,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_char_to_ansistr
		push	word [bp-26]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
		mov	dx,word [bp-24]
		mov	ax,0
		mov	word [bp-20],dx
		mov	word [bp-18],ax
		mov	word [bp-22],11
		lea	ax,[bp-22]
		push	ax
		mov	ax,0
		push	ax
		call	CLASSES$_$TPARSER_$__$$_ERRORFMT$ANSISTRING$array_of_const
..@j3159:
		jmp	..@j3183
..@j3148:
		jmp	..@j3139
..@j3183:
		jmp	..@j3140
..@j3141:
..@j3140:
		push	word [bp+4]
		call	CLASSES$_$TPARSER_$__$$_PROCESSCHAR
..@j3138:
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		mov	si,word [bp+4]
		mov	si,word [si+8]
		mov	al,byte [bx+si]
		mov	ah,0
		cmp	ax,46
		stc
		je	..@j3186
		sub	ax,48
		cmp	ax,10
		jb	..@j3186
		cmp	ax,21
		stc
		je	..@j3186
		cmp	ax,53
		stc
		je	..@j3186
		clc
..@j3186:
		jc	..@j3137
		jmp	..@j3139
..@j3139:
..@j3131:
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		mov	si,word [bp+4]
		mov	si,word [si+8]
		mov	al,byte [bx+si]
		mov	ah,0
		sub	ax,67
		cmp	ax,2
		jb	..@j3189
		cmp	ax,16
		stc
		je	..@j3189
		sub	ax,32
		cmp	ax,2
		jb	..@j3189
		cmp	ax,16
		stc
		je	..@j3189
		clc
..@j3189:
		jc	..@j3187
		jmp	..@j3188
..@j3187:
		mov	bx,word [bp+4]
		mov	bx,word [bx+4]
		mov	si,word [bp+4]
		mov	si,word [si+8]
		mov	di,word [bp+4]
		mov	al,byte [bx+si]
		mov	byte [di+12],al
		mov	bx,word [bp+4]
		inc	word [bx+8]
		push	word [bp+4]
		call	CLASSES$_$TPARSER_$__$$_CHECKLOADBUFFER
		mov	bx,word [bp+4]
		mov	byte [bx+15],4
		jmp	..@j3196
..@j3188:
		mov	bx,word [bp+4]
		mov	byte [bx+12],0
..@j3196:
..@j3115:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-26]
		push	ax
		call	fpc_ansistr_decr_ref
		lea	ax,[bp-24]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j3116
		call	FPC_RERAISE
..@j3116:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_RERAISE
EXTERN	FPC_POPADDRSTACK
EXTERN	CLASSES$_$TPARSER_$__$$_CHECKLOADBUFFER
EXTERN	CLASSES$_$TPARSER_$__$$_ERRORFMT$ANSISTRING$array_of_const
EXTERN	fpc_ansistr_concat
EXTERN	fpc_char_to_ansistr
EXTERN	fpc_ansistr_decr_ref
EXTERN	RESSTR_$RTLCONSTS_$$_SPARINVALIDFLOAT
EXTERN	CLASSES$_$TPARSER_$__$$_ISNUMBER$$BOOLEAN
EXTERN	CLASSES$_$TPARSER_$__$$_PROCESSCHAR
EXTERN	fpc_ansistr_assign
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
