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
	GLOBAL SYSTEM_$$_ISDYNARRAYRECTANGULAR$POINTER$POINTER$$BOOLEAN
SYSTEM_$$_ISDYNARRAYRECTANGULAR$POINTER$POINTER$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,14
		push	word [bp+4]
		call	SYSTEM_$$_DYNARRAYDIM$POINTER$$SMALLINT
		mov	word [bp-8],ax
		mov	ax,word [bp-8]
		dec	ax
		mov	word [bp-14],ax
		mov	word [bp-4],1
		mov	ax,word [bp-14]
		cmp	ax,word [bp-4]
		jl	..@j14138
		dec	word [bp-4]
	ALIGN 2
..@j14139:
		inc	word [bp-4]
		mov	bx,word [bp+6]
		push	word [bx]
		call	SYSTEM_$$_DYNARRAYSIZE$POINTER$$SMALLINT
		mov	word [bp-10],ax
		push	word [bp+6]
		call	SYSTEM_$$_DYNARRAYSIZE$POINTER$$SMALLINT
		dec	ax
		mov	word [bp-12],ax
		mov	word [bp-6],1
		mov	ax,word [bp-12]
		cmp	ax,word [bp-6]
		jl	..@j14149
		dec	word [bp-6]
	ALIGN 2
..@j14150:
		inc	word [bp-6]
		mov	bx,word [bp+6]
		mov	ax,word [bp-6]
		mov	si,ax
		shl	si,1
		push	word [bx+si]
		call	SYSTEM_$$_DYNARRAYSIZE$POINTER$$SMALLINT
		cmp	ax,word [bp-10]
		jne	..@j14151
		jmp	..@j14152
..@j14151:
		mov	byte [bp-1],0
		jmp	..@j14129
..@j14152:
		mov	ax,word [bp-12]
		cmp	ax,word [bp-6]
		jg	..@j14150
..@j14149:
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		mov	word [bp+6],ax
		mov	ax,word [bp-14]
		cmp	ax,word [bp-4]
		jg	..@j14139
..@j14138:
		mov	byte [bp-1],1
..@j14129:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_DYNARRAYSIZE$POINTER$$SMALLINT
EXTERN	SYSTEM_$$_DYNARRAYDIM$POINTER$$SMALLINT
