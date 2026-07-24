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
	GLOBAL SYSTEM_$$_DYNARRAYDIM$POINTER$$SMALLINT
SYSTEM_$$_DYNARRAYDIM$POINTER$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	word [bp-2],0
		jmp	..@j14088
	ALIGN 2
..@j14087:
		mov	ax,word [bp+4]
		add	ax,2
		mov	bx,word [bp+4]
		mov	dl,byte [bx+1]
		mov	dh,0
		add	dx,ax
		mov	word [bp-4],dx
		mov	ax,word [bp-4]
		mov	word [bp+4],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		mov	word [bp+4],ax
		inc	word [bp-2]
..@j14088:
		cmp	word [bp+4],0
		jne	..@j14098
		jmp	..@j14089
..@j14098:
		mov	bx,word [bp+4]
		cmp	byte [bx],21
		je	..@j14087
		jmp	..@j14089
..@j14089:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
