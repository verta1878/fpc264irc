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
	GLOBAL SYSUTILS_$$_GUIDTOSTRING$TGUID$$ANSISTRING
SYSUTILS_$$_GUIDTOSTRING$TGUID$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,66
		mov	ax,word [bp+6]
		push	ax
		mov	ax,38
		push	ax
		mov	ax,0
		push	ax
		call	fpc_ansistr_setlength
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		test	ax,ax
		jne	..@j13949
		mov	ax,word FPC_EMPTYCHAR
..@j13949:
		push	ax
		mov	ax,0
		push	ax
		mov	ax,38
		push	ax
		mov	ax,word _$SYSUTILS$_Ld681
		push	ax
		mov	bx,word [bp+4]
		mov	dx,word [bx]
		mov	ax,word [bx+2]
		mov	word [bp-64],dx
		mov	word [bp-62],ax
		mov	word [bp-66],0
		mov	bx,word [bp+4]
		mov	ax,word [bx+4]
		mov	dx,0
		mov	word [bp-58],ax
		mov	word [bp-56],dx
		mov	word [bp-60],0
		mov	bx,word [bp+4]
		mov	dx,word [bx+6]
		mov	ax,0
		mov	word [bp-52],dx
		mov	word [bp-50],ax
		mov	word [bp-54],0
		mov	bx,word [bp+4]
		mov	ax,0
		mov	dl,byte [bx+8]
		mov	dh,0
		mov	word [bp-46],dx
		mov	word [bp-44],ax
		mov	word [bp-48],0
		mov	bx,word [bp+4]
		mov	ax,0
		mov	dl,byte [bx+9]
		mov	dh,0
		mov	word [bp-40],dx
		mov	word [bp-38],ax
		mov	word [bp-42],0
		mov	bx,word [bp+4]
		mov	ax,0
		mov	dl,byte [bx+10]
		mov	dh,0
		mov	word [bp-34],dx
		mov	word [bp-32],ax
		mov	word [bp-36],0
		mov	bx,word [bp+4]
		mov	ax,0
		mov	dl,byte [bx+11]
		mov	dh,0
		mov	word [bp-28],dx
		mov	word [bp-26],ax
		mov	word [bp-30],0
		mov	bx,word [bp+4]
		mov	ax,0
		mov	dl,byte [bx+12]
		mov	dh,0
		mov	word [bp-22],dx
		mov	word [bp-20],ax
		mov	word [bp-24],0
		mov	bx,word [bp+4]
		mov	ax,0
		mov	dl,byte [bx+13]
		mov	dh,0
		mov	word [bp-16],dx
		mov	word [bp-14],ax
		mov	word [bp-18],0
		mov	bx,word [bp+4]
		mov	ax,0
		mov	dl,byte [bx+14]
		mov	dh,0
		mov	word [bp-10],dx
		mov	word [bp-8],ax
		mov	word [bp-12],0
		mov	bx,word [bp+4]
		mov	ax,0
		mov	dl,byte [bx+15]
		mov	dh,0
		mov	word [bp-4],dx
		mov	word [bp-2],ax
		mov	word [bp-6],0
		lea	ax,[bp-66]
		push	ax
		mov	ax,10
		push	ax
		call	SYSUTILS_$$_STRLFMT$PCHAR$LONGWORD$PCHAR$array_of_const$$PCHAR
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSUTILS_$$_STRLFMT$PCHAR$LONGWORD$PCHAR$array_of_const$$PCHAR
EXTERN	_$SYSUTILS$_Ld681
EXTERN	FPC_EMPTYCHAR
EXTERN	fpc_ansistr_setlength
