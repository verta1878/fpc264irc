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
	GLOBAL VARUTILS_$$_VARIANTTOANSISTRING$TVARDATA$$ANSISTRING
VARUTILS_$$_VARIANTTOANSISTRING$TVARDATA$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,16
		mov	word [bp-16],0
		mov	ax,1
		push	ax
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-6]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j3147
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		and	ax,-4096
		test	ax,ax
		je	..@j3151
		sub	ax,16384
		je	..@j3152
		jmp	..@j3150
..@j3151:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		test	ax,ax
		je	..@j3155
		sub	ax,2
		je	..@j3156
		dec	ax
		je	..@j3158
		dec	ax
		je	..@j3159
		dec	ax
		je	..@j3160
		dec	ax
		je	..@j3161
		dec	ax
		je	..@j3162
		dec	ax
		je	..@j3170
		sub	ax,3
		je	..@j3163
		dec	ax
		je	..@j3164
		sub	ax,4
		je	..@j3157
		dec	ax
		je	..@j3165
		dec	ax
		je	..@j3166
		dec	ax
		je	..@j3167
		dec	ax
		je	..@j3168
		dec	ax
		je	..@j3169
		sub	ax,235
		je	..@j3171
		sub	ax,2
		je	..@j3172
		jmp	..@j3154
..@j3155:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_assign
		jmp	..@j3153
..@j3156:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		cwd
		push	dx
		push	ax
		call	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
		push	word [bp-16]
		call	fpc_ansistr_assign
		jmp	..@j3153
..@j3157:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		mov	bx,word [bp+4]
		mov	al,byte [bx+8]
		cbw
		cwd
		mov	cx,ax
		mov	ax,dx
		push	ax
		push	cx
		call	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
		push	word [bp-16]
		call	fpc_ansistr_assign
		jmp	..@j3153
..@j3158:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+10]
		push	word [bx+8]
		call	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
		push	word [bp-16]
		call	fpc_ansistr_assign
		jmp	..@j3153
..@j3159:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+10]
		push	word [bx+8]
		call	SYSUTILS_$$_FLOATTOSTR$SINGLE$$ANSISTRING
		push	word [bp-16]
		call	fpc_ansistr_assign
		jmp	..@j3153
..@j3160:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		mov	bx,word [bp+4]
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bx+8]
		cld
		mov	cx,4
		rep
		movsw
		call	SYSUTILS_$$_FLOATTOSTR$DOUBLE$$ANSISTRING
		push	word [bp-16]
		call	fpc_ansistr_assign
		jmp	..@j3153
..@j3161:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+14]
		push	word [bx+12]
		push	word [bx+10]
		push	word [bx+8]
		call	SYSUTILS_$$_FLOATTOSTR$CURRENCY$$ANSISTRING
		push	word [bp-16]
		call	fpc_ansistr_assign
		jmp	..@j3153
..@j3162:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		mov	bx,word [bp+4]
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bx+8]
		cld
		mov	cx,4
		rep
		movsw
		call	VARUTILS_$$_VARDATETOSTRING$TDATETIME$$ANSISTRING
		push	word [bp-16]
		call	fpc_ansistr_assign
		jmp	..@j3153
..@j3163:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		or	ax,ax
		mov	al,0
		je	..@j3243
		inc	ax
..@j3243:
		push	ax
		mov	ax,1
		push	ax
		call	SYSUTILS_$$_BOOLTOSTR$BOOLEAN$BOOLEAN$$ANSISTRING
		push	word [bp-16]
		call	fpc_ansistr_assign
		jmp	..@j3153
..@j3164:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		push	ax
		call	VARUTILS_$$_VARIANTTOANSISTRING$TVARDATA$$ANSISTRING
		push	word [bp-16]
		call	fpc_ansistr_assign
		jmp	..@j3153
..@j3165:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,0
		mov	dl,byte [bx+8]
		mov	dh,0
		push	ax
		push	dx
		call	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
		push	word [bp-16]
		call	fpc_ansistr_assign
		jmp	..@j3153
..@j3166:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	dx,0
		push	dx
		push	ax
		call	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
		push	word [bp-16]
		call	fpc_ansistr_assign
		jmp	..@j3153
..@j3167:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		mov	si,word [bp+4]
		mov	bx,word [si+8]
		mov	cx,word [si+10]
		mov	ax,0
		mov	dx,0
		push	dx
		push	ax
		push	cx
		push	bx
		call	SYSUTILS_$$_INTTOSTR$QWORD$$ANSISTRING
		push	word [bp-16]
		call	fpc_ansistr_assign
		jmp	..@j3153
..@j3168:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+14]
		push	word [bx+12]
		push	word [bx+10]
		push	word [bx+8]
		call	SYSUTILS_$$_INTTOSTR$INT64$$ANSISTRING
		push	word [bp-16]
		call	fpc_ansistr_assign
		jmp	..@j3153
..@j3169:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+14]
		push	word [bx+12]
		push	word [bx+10]
		push	word [bx+8]
		call	SYSUTILS_$$_INTTOSTR$QWORD$$ANSISTRING
		push	word [bp-16]
		call	fpc_ansistr_assign
		jmp	..@j3153
..@j3170:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+8]
		mov	ax,0
		push	ax
		call	fpc_unicodestr_to_ansistr
		push	word [bp-16]
		call	fpc_ansistr_assign
		jmp	..@j3153
..@j3171:
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	fpc_ansistr_assign
		jmp	..@j3153
..@j3172:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+8]
		mov	ax,0
		push	ax
		call	fpc_unicodestr_to_ansistr
		push	word [bp-16]
		call	fpc_ansistr_assign
		jmp	..@j3153
..@j3154:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,256
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j3153:
		jmp	..@j3149
..@j3152:
		mov	bx,word [bp+4]
		cmp	word [bx+8],0
		jne	..@j3322
		jmp	..@j3323
..@j3322:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		and	ax,4095
		cmp	ax,2
		jb	..@j3325
		sub	ax,2
		je	..@j3326
		dec	ax
		je	..@j3328
		dec	ax
		je	..@j3329
		dec	ax
		je	..@j3330
		dec	ax
		je	..@j3331
		dec	ax
		je	..@j3332
		dec	ax
		je	..@j3340
		sub	ax,3
		je	..@j3333
		dec	ax
		je	..@j3334
		sub	ax,4
		je	..@j3327
		dec	ax
		je	..@j3335
		dec	ax
		je	..@j3336
		dec	ax
		je	..@j3337
		dec	ax
		je	..@j3338
		dec	ax
		je	..@j3339
		sub	ax,235
		je	..@j3341
		sub	ax,2
		je	..@j3342
		jmp	..@j3325
..@j3326:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		cwd
		push	dx
		push	ax
		call	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
		push	word [bp-16]
		call	fpc_ansistr_assign
		jmp	..@j3324
..@j3327:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	al,byte [bx]
		cbw
		cwd
		mov	cx,ax
		mov	ax,dx
		push	ax
		push	cx
		call	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
		push	word [bp-16]
		call	fpc_ansistr_assign
		jmp	..@j3324
..@j3328:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		cwd
		push	dx
		push	ax
		call	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
		push	word [bp-16]
		call	fpc_ansistr_assign
		jmp	..@j3324
..@j3329:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx+2]
		push	word [bx]
		call	SYSUTILS_$$_FLOATTOSTR$SINGLE$$ANSISTRING
		push	word [bp-16]
		call	fpc_ansistr_assign
		jmp	..@j3324
..@j3330:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		mov	bx,word [bp+4]
		mov	si,word [bx+8]
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		cld
		mov	cx,4
		rep
		movsw
		call	SYSUTILS_$$_FLOATTOSTR$DOUBLE$$ANSISTRING
		push	word [bp-16]
		call	fpc_ansistr_assign
		jmp	..@j3324
..@j3331:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx+6]
		push	word [bx+4]
		push	word [bx+2]
		push	word [bx]
		call	SYSUTILS_$$_FLOATTOSTR$CURRENCY$$ANSISTRING
		push	word [bp-16]
		call	fpc_ansistr_assign
		jmp	..@j3324
..@j3332:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		mov	bx,word [bp+4]
		mov	si,word [bx+8]
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		cld
		mov	cx,4
		rep
		movsw
		call	VARUTILS_$$_VARDATETOSTRING$TDATETIME$$ANSISTRING
		push	word [bp-16]
		call	fpc_ansistr_assign
		jmp	..@j3324
..@j3333:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		or	ax,ax
		mov	al,0
		je	..@j3409
		inc	ax
..@j3409:
		push	ax
		mov	ax,1
		push	ax
		call	SYSUTILS_$$_BOOLTOSTR$BOOLEAN$BOOLEAN$$ANSISTRING
		push	word [bp-16]
		call	fpc_ansistr_assign
		jmp	..@j3324
..@j3334:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		push	ax
		call	VARUTILS_$$_VARIANTTOANSISTRING$TVARDATA$$ANSISTRING
		push	word [bp-16]
		call	fpc_ansistr_assign
		jmp	..@j3324
..@j3335:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,0
		mov	dl,byte [bx]
		mov	dh,0
		push	ax
		push	dx
		call	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
		push	word [bp-16]
		call	fpc_ansistr_assign
		jmp	..@j3324
..@j3336:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		mov	dx,0
		push	dx
		push	ax
		call	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
		push	word [bp-16]
		call	fpc_ansistr_assign
		jmp	..@j3324
..@j3337:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		mov	bx,word [bp+4]
		mov	si,word [bx+8]
		mov	bx,word [si]
		mov	dx,word [si+2]
		mov	cx,0
		mov	ax,0
		push	ax
		push	cx
		push	dx
		push	bx
		call	SYSUTILS_$$_INTTOSTR$QWORD$$ANSISTRING
		push	word [bp-16]
		call	fpc_ansistr_assign
		jmp	..@j3324
..@j3338:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx+6]
		push	word [bx+4]
		push	word [bx+2]
		push	word [bx]
		call	SYSUTILS_$$_INTTOSTR$INT64$$ANSISTRING
		push	word [bp-16]
		call	fpc_ansistr_assign
		jmp	..@j3324
..@j3339:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx+6]
		push	word [bx+4]
		push	word [bx+2]
		push	word [bx]
		call	SYSUTILS_$$_INTTOSTR$QWORD$$ANSISTRING
		push	word [bp-16]
		call	fpc_ansistr_assign
		jmp	..@j3324
..@j3340:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx]
		mov	ax,0
		push	ax
		call	fpc_unicodestr_to_ansistr
		push	word [bp-16]
		call	fpc_ansistr_assign
		jmp	..@j3324
..@j3341:
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx]
		call	fpc_ansistr_assign
		jmp	..@j3324
..@j3342:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-16]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx]
		mov	ax,0
		push	ax
		call	fpc_unicodestr_to_ansistr
		push	word [bp-16]
		call	fpc_ansistr_assign
		jmp	..@j3324
..@j3325:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,256
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j3324:
		jmp	..@j3488
..@j3323:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,256
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j3488:
		jmp	..@j3149
..@j3150:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,256
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j3149:
..@j3147:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-16]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j3148
		call	FPC_RERAISE
..@j3148:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
EXTERN	fpc_unicodestr_to_ansistr
EXTERN	SYSUTILS_$$_INTTOSTR$INT64$$ANSISTRING
EXTERN	SYSUTILS_$$_INTTOSTR$QWORD$$ANSISTRING
EXTERN	SYSUTILS_$$_BOOLTOSTR$BOOLEAN$BOOLEAN$$ANSISTRING
EXTERN	VARUTILS_$$_VARDATETOSTRING$TDATETIME$$ANSISTRING
EXTERN	SYSUTILS_$$_FLOATTOSTR$CURRENCY$$ANSISTRING
EXTERN	SYSUTILS_$$_FLOATTOSTR$DOUBLE$$ANSISTRING
EXTERN	SYSUTILS_$$_FLOATTOSTR$SINGLE$$ANSISTRING
EXTERN	SYSUTILS_$$_INTTOSTR$LONGINT$$ANSISTRING
EXTERN	fpc_ansistr_assign
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
