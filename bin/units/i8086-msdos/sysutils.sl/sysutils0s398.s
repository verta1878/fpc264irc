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
	GLOBAL SYSUTILS_$$_FPCCOUNTENVVAR$PPCHAR$$SMALLINT
SYSUTILS_$$_FPCCOUNTENVVAR$PPCHAR$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [TC_$SYSUTILS_$$_FPC_ENVCOUNT],-1
		je	..@j13155
		jmp	..@j13156
..@j13155:
		mov	word [TC_$SYSUTILS_$$_FPC_ENVCOUNT],0
		cmp	word [bp+4],0
		jne	..@j13159
		jmp	..@j13160
..@j13159:
		jmp	..@j13162
	ALIGN 2
..@j13161:
		inc	word [TC_$SYSUTILS_$$_FPC_ENVCOUNT]
		add	word [bp+4],2
..@j13162:
		mov	bx,word [bp+4]
		cmp	word [bx],0
		jne	..@j13161
		jmp	..@j13163
..@j13163:
..@j13160:
..@j13156:
		mov	ax,word [TC_$SYSUTILS_$$_FPC_ENVCOUNT]
		mov	word [bp-2],ax
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	TC_$SYSUTILS_$$_FPC_ENVCOUNT
