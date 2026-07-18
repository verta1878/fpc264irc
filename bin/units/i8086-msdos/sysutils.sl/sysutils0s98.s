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
	GLOBAL SYSUTILS_$$_GENERICANSICOMPARETEXT$ANSISTRING$ANSISTRING$$SMALLINT
SYSUTILS_$$_GENERICANSICOMPARETEXT$ANSISTRING$ANSISTRING$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	word [bp-2],0
		mov	bx,word [bp+6]
		test	bx,bx
		je	..@j3019
		mov	bx,word [bx-2]
..@j3019:
		mov	word [bp-6],bx
		mov	bx,word [bp+4]
		test	bx,bx
		je	..@j3022
		mov	bx,word [bx-2]
..@j3022:
		mov	word [bp-8],bx
		mov	word [bp-4],1
		jmp	..@j3026
	ALIGN 2
..@j3025:
		mov	bx,word [bp+6]
		mov	si,word [bp-4]
		mov	bl,byte [bx+si-1]
		mov	bh,0
		mov	al,byte [U_$SYSUTILS_$$_LOWERCASETABLE+bx]
		mov	ah,0
		mov	bx,word [bp+4]
		mov	si,word [bp-4]
		mov	bl,byte [bx+si-1]
		mov	bh,0
		mov	dl,byte [U_$SYSUTILS_$$_LOWERCASETABLE+bx]
		mov	dh,0
		sub	ax,dx
		mov	word [bp-2],ax
		inc	word [bp-4]
..@j3026:
		cmp	word [bp-2],0
		je	..@j3030
		jmp	..@j3027
..@j3030:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-6]
		jle	..@j3031
		jmp	..@j3027
..@j3031:
		mov	ax,word [bp-4]
		cmp	ax,word [bp-8]
		jle	..@j3025
		jmp	..@j3027
..@j3027:
		cmp	word [bp-2],0
		je	..@j3032
		jmp	..@j3033
..@j3032:
		mov	ax,word [bp-6]
		mov	dx,word [bp-8]
		sub	ax,dx
		mov	word [bp-2],ax
..@j3033:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	U_$SYSUTILS_$$_LOWERCASETABLE
