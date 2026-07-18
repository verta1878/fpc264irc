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
	GLOBAL VARUTILS_$$_VARIANTTODOUBLE$TVARDATA$$DOUBLE
VARUTILS_$$_VARIANTTODOUBLE$TVARDATA$$DOUBLE:
		push	bp
		mov	bp,sp
		sub	sp,28
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		and	ax,-4096
		test	ax,ax
		je	..@j1200
		sub	ax,16384
		je	..@j1201
		jmp	..@j1199
..@j1200:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		test	ax,ax
		je	..@j1204
		sub	ax,2
		je	..@j1205
		dec	ax
		je	..@j1207
		dec	ax
		je	..@j1208
		dec	ax
		je	..@j1209
		dec	ax
		je	..@j1210
		dec	ax
		je	..@j1211
		dec	ax
		je	..@j1219
		sub	ax,3
		je	..@j1212
		dec	ax
		je	..@j1213
		sub	ax,4
		je	..@j1206
		dec	ax
		je	..@j1214
		dec	ax
		je	..@j1215
		dec	ax
		je	..@j1216
		dec	ax
		je	..@j1217
		dec	ax
		je	..@j1218
		sub	ax,235
		je	..@j1220
		sub	ax,2
		je	..@j1221
		jmp	..@j1203
..@j1204:
		wait fldz
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1202
..@j1205:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		cwd
		mov	word [bp-12],ax
		mov	word [bp-10],dx
		wait fild	dword [bp-12]
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1202
..@j1206:
		mov	bx,word [bp+4]
		mov	al,byte [bx+8]
		cbw
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-12],cx
		mov	word [bp-10],ax
		wait fild	dword [bp-12]
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1202
..@j1207:
		mov	bx,word [bp+4]
		wait fild	dword [bx+8]
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1202
..@j1208:
		mov	bx,word [bp+4]
		wait fld	dword [bx+8]
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1202
..@j1209:
		mov	bx,word [bp+4]
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bx+8]
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j1202
..@j1210:
		mov	bx,word [bp+4]
		wait fild	qword [_$VARUTILS$_Ld1]
		wait fild	qword [bx+8]
		wait fdivrp	st1,st0
		wait fstp	qword [bp-20]
		DB	09bh
		wait fld	qword [bp-20]
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1202
..@j1211:
		mov	bx,word [bp+4]
		lea	di,[bp-8]
		push	ss
		pop	es
		lea	si,[bx+8]
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j1202
..@j1212:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		cwd
		mov	word [bp-12],ax
		mov	word [bp-10],dx
		wait fild	dword [bp-12]
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1202
..@j1213:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		push	ax
		call	VARUTILS_$$_VARIANTTODOUBLE$TVARDATA$$DOUBLE
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1202
..@j1214:
		mov	bx,word [bp+4]
		mov	ax,0
		mov	dl,byte [bx+8]
		mov	dh,0
		mov	word [bp-12],dx
		mov	word [bp-10],ax
		wait fild	dword [bp-12]
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1202
..@j1215:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		mov	dx,0
		mov	word [bp-12],ax
		mov	word [bp-10],dx
		wait fild	dword [bp-12]
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1202
..@j1216:
		mov	bx,word [bp+4]
		mov	dx,word [bx+8]
		mov	ax,word [bx+10]
		mov	word [bp-16],dx
		mov	word [bp-14],ax
		mov	word [bp-12],0
		mov	word [bp-10],0
		wait fild	qword [bp-16]
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1202
..@j1217:
		mov	bx,word [bp+4]
		wait fild	qword [bx+8]
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1202
..@j1218:
		mov	bx,word [bp+4]
		test	byte [bx+15],128
		wait fild	qword [bx+8]
		je	..@j1256
		wait fadd	dword [_$VARUTILS$_Ld4]
..@j1256:
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1202
..@j1219:
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	VARUTILS_$$_WSTRTODOUBLE$POINTER$$DOUBLE
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1202
..@j1220:
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	VARUTILS_$$_LSTRTODOUBLE$POINTER$$DOUBLE
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1202
..@j1221:
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	VARUTILS_$$_USTRTODOUBLE$POINTER$$DOUBLE
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1202
..@j1203:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,5
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j1202:
		jmp	..@j1198
..@j1201:
		mov	bx,word [bp+4]
		cmp	word [bx+8],0
		jne	..@j1273
		jmp	..@j1274
..@j1273:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		and	ax,4095
		cmp	ax,2
		jb	..@j1276
		sub	ax,2
		je	..@j1277
		dec	ax
		je	..@j1279
		dec	ax
		je	..@j1280
		dec	ax
		je	..@j1281
		dec	ax
		je	..@j1282
		dec	ax
		je	..@j1283
		dec	ax
		je	..@j1291
		sub	ax,3
		je	..@j1284
		dec	ax
		je	..@j1285
		sub	ax,4
		je	..@j1278
		dec	ax
		je	..@j1286
		dec	ax
		je	..@j1287
		dec	ax
		je	..@j1288
		dec	ax
		je	..@j1289
		dec	ax
		je	..@j1290
		sub	ax,235
		je	..@j1292
		sub	ax,2
		je	..@j1293
		jmp	..@j1276
..@j1277:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		cwd
		mov	word [bp-20],ax
		mov	word [bp-18],dx
		wait fild	dword [bp-20]
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1275
..@j1278:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	al,byte [bx]
		cbw
		cwd
		mov	cx,ax
		mov	ax,dx
		mov	word [bp-20],cx
		mov	word [bp-18],ax
		wait fild	dword [bp-20]
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1275
..@j1279:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		cwd
		mov	word [bp-20],ax
		mov	word [bp-18],dx
		wait fild	dword [bp-20]
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1275
..@j1280:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fld	dword [bx]
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1275
..@j1281:
		mov	bx,word [bp+4]
		mov	si,word [bx+8]
		lea	di,[bp-8]
		push	ss
		pop	es
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j1275
..@j1282:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fild	qword [_$VARUTILS$_Ld1]
		wait fild	qword [bx]
		wait fdivrp	st1,st0
		wait fstp	qword [bp-28]
		DB	09bh
		wait fld	qword [bp-28]
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1275
..@j1283:
		mov	bx,word [bp+4]
		mov	si,word [bx+8]
		lea	di,[bp-8]
		push	ss
		pop	es
		cld
		mov	cx,4
		rep
		movsw
		jmp	..@j1275
..@j1284:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		cwd
		mov	word [bp-20],ax
		mov	word [bp-18],dx
		wait fild	dword [bp-20]
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1275
..@j1285:
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		push	ax
		call	VARUTILS_$$_VARIANTTODOUBLE$TVARDATA$$DOUBLE
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1275
..@j1286:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,0
		mov	dl,byte [bx]
		mov	dh,0
		mov	word [bp-20],dx
		mov	word [bp-18],ax
		wait fild	dword [bp-20]
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1275
..@j1287:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		mov	dx,0
		mov	word [bp-20],ax
		mov	word [bp-18],dx
		wait fild	dword [bp-20]
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1275
..@j1288:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	dx,word [bx]
		mov	ax,word [bx+2]
		mov	word [bp-24],dx
		mov	word [bp-22],ax
		mov	word [bp-20],0
		mov	word [bp-18],0
		wait fild	qword [bp-24]
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1275
..@j1289:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fild	qword [bx]
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1275
..@j1290:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		test	byte [bx+7],128
		wait fild	qword [bx]
		je	..@j1326
		wait fadd	dword [_$VARUTILS$_Ld5]
..@j1326:
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1275
..@j1291:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx]
		call	VARUTILS_$$_WSTRTODOUBLE$POINTER$$DOUBLE
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1275
..@j1292:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx]
		call	VARUTILS_$$_LSTRTODOUBLE$POINTER$$DOUBLE
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1275
..@j1293:
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx]
		call	VARUTILS_$$_USTRTODOUBLE$POINTER$$DOUBLE
		wait fstp	qword [bp-8]
		DB	09bh
		jmp	..@j1275
..@j1276:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,5
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j1275:
		jmp	..@j1343
..@j1274:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,5
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j1343:
		jmp	..@j1198
..@j1199:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	ax,5
		push	ax
		call	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
..@j1198:
		wait fld	qword [bp-8]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	_$VARUTILS$_Ld5
EXTERN	VARUTILS_$$_VARIANTTYPEMISMATCH$WORD$WORD
EXTERN	VARUTILS_$$_USTRTODOUBLE$POINTER$$DOUBLE
EXTERN	VARUTILS_$$_LSTRTODOUBLE$POINTER$$DOUBLE
EXTERN	VARUTILS_$$_WSTRTODOUBLE$POINTER$$DOUBLE
EXTERN	_$VARUTILS$_Ld4
EXTERN	_$VARUTILS$_Ld1
