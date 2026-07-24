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
	GLOBAL SYSTEM_$$_UTF8CODEPOINTLEN$PCHAR$SMALLINT$BOOLEAN$$SMALLINT
SYSTEM_$$_UTF8CODEPOINTLEN$PCHAR$SMALLINT$BOOLEAN$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,6
		cmp	word [bp+6],0
		jle	..@j1228
		jmp	..@j1229
..@j1228:
		mov	word [bp-2],0
		jmp	..@j1226
..@j1229:
		mov	word [bp-2],1
		mov	bx,word [bp+8]
		cmp	byte [bx],127
		ja	..@j1234
		jmp	..@j1235
..@j1234:
		mov	bx,word [bp+8]
		mov	al,byte [bx]
		not	al
		mov	byte [bp-6],al
		mov	bl,byte [bp-6]
		mov	bh,0
		mov	al,byte [TC_$SYSTEM_$$_BSR8BIT+bx]
		mov	byte [bp-5],al
		cmp	byte [bp-5],1
		jbe	..@j1242
		jmp	..@j1244
..@j1244:
		cmp	byte [bp-5],6
		jae	..@j1242
		jmp	..@j1243
..@j1242:
		mov	ax,word [bp-2]
		neg	ax
		mov	word [bp-2],ax
		jmp	..@j1226
..@j1243:
		mov	dl,byte [bp-5]
		mov	dh,0
		mov	ax,6
		sub	ax,dx
		mov	word [bp-4],ax
		jmp	..@j1250
	ALIGN 2
..@j1249:
		inc	word [bp-2]
		dec	word [bp-4]
..@j1250:
		mov	ax,word [bp-2]
		cmp	ax,word [bp+6]
		jl	..@j1253
		jmp	..@j1251
..@j1253:
		cmp	word [bp-4],0
		jg	..@j1252
		jmp	..@j1251
..@j1252:
		mov	bx,word [bp+8]
		mov	si,word [bp-2]
		mov	al,byte [bx+si]
		and	al,192
		cmp	al,128
		je	..@j1249
		jmp	..@j1251
..@j1251:
		cmp	word [bp-4],0
		jne	..@j1254
		jmp	..@j1255
..@j1254:
		mov	ax,word [bp-2]
		cmp	ax,word [bp+6]
		jge	..@j1256
		jmp	..@j1257
..@j1256:
		mov	word [bp-2],0
		jmp	..@j1260
..@j1257:
		mov	ax,word [bp-2]
		neg	ax
		mov	word [bp-2],ax
..@j1260:
		jmp	..@j1226
..@j1255:
..@j1235:
		cmp	byte [bp+4],0
		jne	..@j1263
		jmp	..@j1264
..@j1263:
	ALIGN 2
..@j1265:
		mov	ax,word [bp-2]
		mov	word [bp-4],ax
		mov	ax,word [bp-2]
		inc	ax
		cmp	ax,word [bp+6]
		jl	..@j1270
		jmp	..@j1271
..@j1270:
		mov	bx,word [bp+8]
		mov	si,word [bp-2]
		mov	al,byte [bx+si]
		and	al,204
		cmp	al,204
		je	..@j1275
		jmp	..@j1273
..@j1275:
		mov	bx,word [bp+8]
		mov	ax,word [bp-2]
		inc	ax
		mov	si,ax
		cmp	byte [bx+si],128
		jae	..@j1274
		jmp	..@j1273
..@j1274:
		mov	bx,word [bp+8]
		mov	ax,word [bp-2]
		inc	ax
		mov	si,ax
		cmp	byte [bx+si],175
		jbe	..@j1272
		jmp	..@j1273
..@j1272:
		add	word [bp-2],2
		jmp	..@j1276
..@j1273:
		mov	ax,word [bp-2]
		add	ax,2
		cmp	ax,word [bp+6]
		jl	..@j1279
		jmp	..@j1278
..@j1279:
		mov	bx,word [bp+8]
		mov	si,word [bp-2]
		cmp	byte [bx+si],225
		jae	..@j1277
		jmp	..@j1278
..@j1277:
		mov	bx,word [bp+8]
		mov	si,word [bp-2]
		cmp	byte [bx+si],225
		je	..@j1287
		jmp	..@j1284
..@j1287:
		mov	bx,word [bp+8]
		mov	ax,word [bp-2]
		inc	ax
		mov	si,ax
		cmp	byte [bx+si],170
		je	..@j1286
		jmp	..@j1284
..@j1286:
		mov	bx,word [bp+8]
		mov	ax,word [bp-2]
		add	ax,2
		mov	si,ax
		cmp	byte [bx+si],176
		jae	..@j1285
		jmp	..@j1284
..@j1285:
		mov	bx,word [bp+8]
		mov	ax,word [bp-2]
		add	ax,2
		mov	si,ax
		cmp	byte [bx+si],191
		jbe	..@j1280
		jmp	..@j1284
..@j1284:
		mov	bx,word [bp+8]
		mov	si,word [bp-2]
		cmp	byte [bx+si],225
		je	..@j1290
		jmp	..@j1283
..@j1290:
		mov	bx,word [bp+8]
		mov	ax,word [bp-2]
		inc	ax
		mov	si,ax
		cmp	byte [bx+si],183
		je	..@j1289
		jmp	..@j1283
..@j1289:
		mov	bx,word [bp+8]
		mov	ax,word [bp-2]
		add	ax,2
		mov	si,ax
		cmp	byte [bx+si],128
		jae	..@j1288
		jmp	..@j1283
..@j1288:
		mov	bx,word [bp+8]
		mov	ax,word [bp-2]
		add	ax,2
		mov	si,ax
		cmp	byte [bx+si],191
		jbe	..@j1280
		jmp	..@j1283
..@j1283:
		mov	bx,word [bp+8]
		mov	si,word [bp-2]
		cmp	byte [bx+si],226
		je	..@j1293
		jmp	..@j1282
..@j1293:
		mov	bx,word [bp+8]
		mov	ax,word [bp-2]
		inc	ax
		mov	si,ax
		cmp	byte [bx+si],131
		je	..@j1292
		jmp	..@j1282
..@j1292:
		mov	bx,word [bp+8]
		mov	ax,word [bp-2]
		add	ax,2
		mov	si,ax
		cmp	byte [bx+si],144
		jae	..@j1291
		jmp	..@j1282
..@j1291:
		mov	bx,word [bp+8]
		mov	ax,word [bp-2]
		add	ax,2
		mov	si,ax
		cmp	byte [bx+si],191
		jbe	..@j1280
		jmp	..@j1282
..@j1282:
		mov	bx,word [bp+8]
		mov	si,word [bp-2]
		cmp	byte [bx+si],239
		je	..@j1296
		jmp	..@j1281
..@j1296:
		mov	bx,word [bp+8]
		mov	ax,word [bp-2]
		inc	ax
		mov	si,ax
		cmp	byte [bx+si],184
		je	..@j1295
		jmp	..@j1281
..@j1295:
		mov	bx,word [bp+8]
		mov	ax,word [bp-2]
		add	ax,2
		mov	si,ax
		cmp	byte [bx+si],160
		jae	..@j1294
		jmp	..@j1281
..@j1294:
		mov	bx,word [bp+8]
		mov	ax,word [bp-2]
		add	ax,2
		mov	si,ax
		cmp	byte [bx+si],175
		jbe	..@j1280
		jmp	..@j1281
..@j1280:
		add	word [bp-2],3
..@j1281:
..@j1278:
..@j1276:
..@j1271:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-2]
		je	..@j1267
		jmp	..@j1265
..@j1267:
		mov	ax,word [bp-2]
		cmp	ax,word [bp+6]
		jl	..@j1297
		jmp	..@j1298
..@j1297:
		mov	bx,word [bp+8]
		mov	si,word [bp-2]
		mov	al,byte [bx+si]
		and	al,204
		cmp	al,204
		je	..@j1304
		jmp	..@j1303
..@j1304:
		mov	ax,word [bp-2]
		inc	ax
		cmp	ax,word [bp+6]
		jge	..@j1299
		jmp	..@j1303
..@j1303:
		mov	bx,word [bp+8]
		mov	si,word [bp-2]
		cmp	byte [bx+si],225
		je	..@j1305
		jmp	..@j1302
..@j1305:
		mov	ax,word [bp-2]
		inc	ax
		cmp	ax,word [bp+6]
		jge	..@j1299
		jmp	..@j1306
..@j1306:
		mov	bx,word [bp+8]
		mov	ax,word [bp-2]
		inc	ax
		mov	si,ax
		cmp	byte [bx+si],170
		je	..@j1307
		jmp	..@j1308
..@j1308:
		mov	bx,word [bp+8]
		mov	ax,word [bp-2]
		inc	ax
		mov	si,ax
		cmp	byte [bx+si],183
		je	..@j1307
		jmp	..@j1302
..@j1307:
		mov	ax,word [bp-2]
		add	ax,2
		cmp	ax,word [bp+6]
		jge	..@j1299
		jmp	..@j1302
..@j1302:
		mov	bx,word [bp+8]
		mov	si,word [bp-2]
		cmp	byte [bx+si],226
		je	..@j1309
		jmp	..@j1301
..@j1309:
		mov	ax,word [bp-2]
		inc	ax
		cmp	ax,word [bp+6]
		jge	..@j1299
		jmp	..@j1310
..@j1310:
		mov	bx,word [bp+8]
		mov	ax,word [bp-2]
		inc	ax
		mov	si,ax
		cmp	byte [bx+si],131
		je	..@j1311
		jmp	..@j1301
..@j1311:
		mov	ax,word [bp-2]
		add	ax,2
		cmp	ax,word [bp+6]
		jge	..@j1299
		jmp	..@j1301
..@j1301:
		mov	bx,word [bp+8]
		mov	si,word [bp-2]
		cmp	byte [bx+si],239
		je	..@j1312
		jmp	..@j1300
..@j1312:
		mov	ax,word [bp-2]
		inc	ax
		cmp	ax,word [bp+6]
		jge	..@j1299
		jmp	..@j1313
..@j1313:
		mov	bx,word [bp+8]
		mov	ax,word [bp-2]
		inc	ax
		mov	si,ax
		cmp	byte [bx+si],184
		je	..@j1314
		jmp	..@j1300
..@j1314:
		mov	ax,word [bp-2]
		add	ax,2
		cmp	ax,word [bp+6]
		jge	..@j1299
		jmp	..@j1300
..@j1299:
		mov	word [bp-2],0
		jmp	..@j1226
..@j1300:
..@j1298:
..@j1264:
..@j1226:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	TC_$SYSTEM_$$_BSR8BIT
