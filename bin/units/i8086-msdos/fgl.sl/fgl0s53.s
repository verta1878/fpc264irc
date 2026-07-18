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
	GLOBAL FGL$_$TFPSMAP_$__$$_FIND$POINTER$SMALLINT$$BOOLEAN
FGL$_$TFPSMAP_$__$$_FIND$POINTER$SMALLINT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,10
		mov	byte [bp-1],0
		mov	bx,word [bp+4]
		mov	word [bx],-1
		mov	bx,word [bp+8]
		cmp	byte [bx+16],0
		je	..@j1307
		jmp	..@j1308
..@j1307:
..@j1309:
		mov	ax,word VMT_$FGL_$$_ELISTERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SERRFINDNEEDSSORTEDLIST+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j1309
		push	ax
		push	bp
		call	fpc_raiseexception
..@j1308:
		mov	word [bp-6],0
		mov	bx,word [bp+8]
		mov	ax,word [bx+4]
		dec	ax
		mov	word [bp-8],ax
		jmp	..@j1327
	ALIGN 2
..@j1326:
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		sub	ax,dx
		test	ax,ax
		jns	..@j1331
		inc	ax
..@j1331:
		sar	ax,1
		mov	dx,word [bp-6]
		add	dx,ax
		mov	word [bp-4],dx
		mov	bx,word [bp+8]
		push	word [bx+19]
		push	word [bp+8]
		push	word [bp-4]
		call	FGL$_$TFPSLIST_$__$$_GET$SMALLINT$$POINTER
		push	ax
		push	word [bp+6]
		mov	bx,word [bp+8]
		mov	ax,word [bx+17]
		call	ax
		mov	word [bp-10],ax
		cmp	word [bp-10],0
		jl	..@j1344
		jmp	..@j1345
..@j1344:
		mov	ax,word [bp-4]
		inc	ax
		mov	word [bp-6],ax
		jmp	..@j1348
..@j1345:
		mov	ax,word [bp-4]
		dec	ax
		mov	word [bp-8],ax
		cmp	word [bp-10],0
		je	..@j1351
		jmp	..@j1352
..@j1351:
		mov	byte [bp-1],1
		mov	bx,word [bp+8]
		mov	ax,word [bx+14]
		mov	dx,0
		cmp	dx,0
		jne	..@j1355
		cmp	ax,1
		jne	..@j1355
		jmp	..@j1356
..@j1355:
		mov	ax,word [bp-4]
		mov	word [bp-6],ax
..@j1356:
..@j1352:
..@j1348:
..@j1327:
		mov	ax,word [bp-6]
		cmp	ax,word [bp-8]
		jle	..@j1326
		jmp	..@j1328
..@j1328:
		mov	bx,word [bp+4]
		mov	ax,word [bp-6]
		mov	word [bx],ax
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FGL$_$TFPSLIST_$__$$_GET$SMALLINT$$POINTER
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SERRFINDNEEDSSORTEDLIST
EXTERN	VMT_$FGL_$$_ELISTERROR
