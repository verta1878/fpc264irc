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
	GLOBAL DOS_$$_DO_DISKDATA$BYTE$BOOLEAN$$INT64
DOS_$$_DO_DISKDATA$BYTE$BOOLEAN$$INT64:
		push	bp
		mov	bp,sp
		sub	sp,20
		cmp	byte [bp+6],0
		je	..@j1055
		jmp	..@j1056
..@j1055:
		mov	word [U_$DOS_$$_DOSREGS],6400
		mov	ax,word U_$DOS_$$_DOSREGS
		push	ax
		call	FPC_MSDOS
		mov	al,byte [U_$DOS_$$_DOSREGS]
		mov	ah,0
		inc	ax
		mov	byte [bp+6],al
..@j1056:
		push	bp
		call	DOS$_$DO_DISKDATA$BYTE$BOOLEAN$$INT64_$$_DISKDATA_CDROM$$BOOLEAN
		test	al,al
		je	..@j1063
		jmp	..@j1064
..@j1063:
		push	bp
		call	DOS$_$DO_DISKDATA$BYTE$BOOLEAN$$INT64_$$_DISKDATA_7303$$BOOLEAN
		test	al,al
		je	..@j1067
		jmp	..@j1068
..@j1067:
		push	bp
		call	DOS$_$DO_DISKDATA$BYTE$BOOLEAN$$INT64_$$_DISKDATA_36$$BOOLEAN
		test	al,al
		je	..@j1071
		jmp	..@j1072
..@j1071:
		mov	word [bp-8],-1
		mov	word [bp-6],-1
		mov	word [bp-4],-1
		mov	word [bp-2],-1
		jmp	..@j1047
..@j1072:
..@j1068:
..@j1064:
		mov	cx,word [bp-12]
		mov	bx,word [bp-10]
		mov	ax,0
		mov	dx,0
		mov	word [bp-8],cx
		mov	word [bp-6],bx
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		cmp	byte [bp+4],0
		jne	..@j1079
		jmp	..@j1080
..@j1079:
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		mov	ax,word [bp-16]
		mov	dx,word [bp-14]
		mov	cx,0
		mov	bx,0
		push	bx
		push	cx
		push	dx
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_int64
		mov	word [bp-8],dx
		mov	word [bp-6],cx
		mov	word [bp-4],bx
		mov	word [bp-2],ax
		jmp	..@j1089
..@j1080:
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		mov	ax,word [bp-20]
		mov	dx,word [bp-18]
		mov	cx,0
		mov	bx,0
		push	bx
		push	cx
		push	dx
		push	ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_mul_int64
		mov	word [bp-8],dx
		mov	word [bp-6],cx
		mov	word [bp-4],bx
		mov	word [bp-2],ax
..@j1089:
..@j1047:
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_mul_int64
EXTERN	DOS$_$DO_DISKDATA$BYTE$BOOLEAN$$INT64_$$_DISKDATA_36$$BOOLEAN
EXTERN	DOS$_$DO_DISKDATA$BYTE$BOOLEAN$$INT64_$$_DISKDATA_7303$$BOOLEAN
EXTERN	DOS$_$DO_DISKDATA$BYTE$BOOLEAN$$INT64_$$_DISKDATA_CDROM$$BOOLEAN
EXTERN	FPC_MSDOS
EXTERN	U_$DOS_$$_DOSREGS
