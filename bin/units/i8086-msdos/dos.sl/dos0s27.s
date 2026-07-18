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
	GLOBAL DOS$_$DO_DISKDATA$BYTE$BOOLEAN$$INT64_$$_DISKDATA_7303$$BOOLEAN
DOS$_$DO_DISKDATA$BYTE$BOOLEAN$$INT64_$$_DISKDATA_7303$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,564
		mov	byte [bp-1],0
		lea	ax,[bp-257]
		push	ax
		mov	ax,255
		push	ax
		mov	bx,word [bp+4]
		mov	al,byte [bx+6]
		mov	ah,0
		add	ax,64
		mov	ah,0
		mov	cl,8
		shl	ax,cl
		mov	dx,0
		or	ax,1
		mov	word [bp-564],ax
		lea	ax,[bp-564]
		mov	word [bp-308],ax
		mov	ax,word _$DOS$_Ld2
		mov	word [bp-306],ax
		mov	ax,word _$DOS$_Ld14
		mov	word [bp-304],ax
		lea	ax,[bp-308]
		push	ax
		mov	ax,2
		push	ax
		call	fpc_shortstr_concat_multi
		mov	word [bp-300],0
		mov	word [bp-302],0
		lea	ax,[bp-256]
		mov	word [U_$DOS_$$_DOSREGS+6],ax
		mov	ax,ss
		mov	word [U_$DOS_$$_DOSREGS+14],ax
		lea	ax,[bp-302]
		mov	word [U_$DOS_$$_DOSREGS+12],ax
		mov	ax,ss
		mov	word [U_$DOS_$$_DOSREGS+16],ax
		mov	word [U_$DOS_$$_DOSREGS+4],44
		mov	word [U_$DOS_$$_DOSREGS],29443
		mov	ax,word U_$DOS_$$_DOSREGS
		push	ax
		call	FPC_MSDOS
		mov	ax,word [U_$DOS_$$_DOSREGS+18]
		and	ax,1
		test	ax,ax
		jne	..@j1226
		jmp	..@j1227
..@j1226:
		jmp	..@j1051
..@j1227:
		cmp	word [bp-302],0
		je	..@j1228
		jmp	..@j1229
..@j1228:
		jmp	..@j1051
..@j1229:
		push	word [bp-296]
		push	word [bp-298]
		push	word [bp-292]
		push	word [bp-294]
		mov	ax,0
		push	ax
		call	fpc_mul_dword
		mov	bx,word [bp+4]
		mov	word [bx-12],ax
		mov	word [bx-10],dx
		mov	bx,word [bp+4]
		mov	ax,word [bp-274]
		mov	word [bx-16],ax
		mov	ax,word [bp-272]
		mov	word [bx-14],ax
		mov	bx,word [bp+4]
		mov	ax,word [bp-270]
		mov	word [bx-20],ax
		mov	ax,word [bp-268]
		mov	word [bx-18],ax
		mov	byte [bp-1],1
..@j1051:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_mul_dword
EXTERN	FPC_MSDOS
EXTERN	U_$DOS_$$_DOSREGS
EXTERN	fpc_shortstr_concat_multi
EXTERN	_$DOS$_Ld14
EXTERN	_$DOS$_Ld2
