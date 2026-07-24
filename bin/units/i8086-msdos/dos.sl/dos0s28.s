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
	GLOBAL DOS$_$DO_DISKDATA$BYTE$BOOLEAN$$INT64_$$_DISKDATA_36$$BOOLEAN
DOS$_$DO_DISKDATA$BYTE$BOOLEAN$$INT64_$$_DISKDATA_36$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	byte [bp-1],0
		mov	bx,word [bp+4]
		mov	al,byte [bx+6]
		mov	byte [U_$DOS_$$_DOSREGS+6],al
		mov	byte [U_$DOS_$$_DOSREGS+1],54
		mov	ax,word U_$DOS_$$_DOSREGS
		push	ax
		call	FPC_MSDOS
		cmp	word [U_$DOS_$$_DOSREGS],-1
		je	..@j1252
		jmp	..@j1253
..@j1252:
		jmp	..@j1049
..@j1253:
		mov	ax,word [U_$DOS_$$_DOSREGS+4]
		mul	word [U_$DOS_$$_DOSREGS]
		mov	dx,0
		mov	bx,word [bp+4]
		mov	word [bx-12],ax
		mov	word [bx-10],dx
		mov	dx,word [U_$DOS_$$_DOSREGS+2]
		mov	ax,0
		mov	bx,word [bp+4]
		mov	word [bx-16],dx
		mov	word [bx-14],ax
		mov	dx,word [U_$DOS_$$_DOSREGS+6]
		mov	ax,0
		mov	bx,word [bp+4]
		mov	word [bx-20],dx
		mov	word [bx-18],ax
		mov	byte [bp-1],1
..@j1049:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	FPC_MSDOS
EXTERN	U_$DOS_$$_DOSREGS
