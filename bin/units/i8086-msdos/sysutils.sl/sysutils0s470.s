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
	GLOBAL SYSUTILS_$$_OPENFILE$RAWBYTESTRING$WORD$WORD$WORD$$LONGINT
SYSUTILS_$$_OPENFILE$RAWBYTESTRING$WORD$WORD$WORD$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,24
		mov	word [bp-4],0
		mov	word [bp-2],0
		mov	bx,word [bp+8]
		mov	word [bx],-1
		cmp	byte [U_$SYSTEM_$$_LFNSUPPORT],0
		jne	..@j15130
		jmp	..@j15131
..@j15130:
		mov	word [bp-24],29036
		mov	ax,word [bp+4]
		mov	word [bp-18],ax
		mov	ax,word [bp+10]
		test	ax,ax
		jne	..@j15138
		mov	ax,word FPC_EMPTYCHAR
..@j15138:
		mov	word [bp-14],ax
		mov	ax,word [bp+6]
		and	ax,255
		add	ax,8192
		mov	word [bp-22],ax
		jmp	..@j15141
..@j15131:
		mov	ax,word [bp+4]
		and	ax,240
		test	ax,ax
		jne	..@j15142
		jmp	..@j15143
..@j15142:
		mov	word [bp-24],15360
		jmp	..@j15146
..@j15143:
		mov	ax,word [bp+6]
		and	ax,255
		add	ax,15616
		mov	word [bp-24],ax
..@j15146:
		mov	ax,word [bp+10]
		test	ax,ax
		jne	..@j15151
		mov	ax,word FPC_EMPTYCHAR
..@j15151:
		mov	word [bp-18],ax
..@j15141:
		mov	ax,word [bp+10]
		test	ax,ax
		jne	..@j15154
		mov	ax,word FPC_EMPTYCHAR
..@j15154:
		mov	ax,ds
		mov	word [bp-10],ax
		mov	word [bp-20],32
		mov	ax,33
		push	ax
		lea	ax,[bp-24]
		push	ax
		call	FPC_INTR
		mov	ax,word [bp-6]
		and	ax,1
		test	ax,ax
		jne	..@j15161
		jmp	..@j15162
..@j15161:
		mov	ax,word [bp-24]
		mov	dx,0
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		jmp	..@j15165
..@j15162:
		mov	bx,word [bp+8]
		mov	ax,word [bp-24]
		mov	word [bx],ax
..@j15165:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	FPC_INTR
EXTERN	FPC_EMPTYCHAR
EXTERN	U_$SYSTEM_$$_LFNSUPPORT
