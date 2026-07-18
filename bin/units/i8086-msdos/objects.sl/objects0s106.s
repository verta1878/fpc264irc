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
	GLOBAL OBJECTS$_$TSTRCOLLECTION_$__$$_FREEITEM$POINTER
OBJECTS$_$TSTRCOLLECTION_$__$$_FREEITEM$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,6
		cmp	word [bp+4],0
		jne	..@j2474
		jmp	..@j2475
..@j2474:
		mov	ax,word [bp+4]
		mov	word [bp-6],ax
		mov	word [bp-4],0
		mov	word [bp-2],0
		jmp	..@j2481
	ALIGN 2
..@j2480:
		add	word [bp-4],1
		adc	word [bp-2],0
..@j2481:
		mov	bx,word [bp-6]
		mov	si,word [bp-4]
		cmp	byte [bx+si],0
		jne	..@j2480
		jmp	..@j2482
..@j2482:
		push	word [bp+4]
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		add	ax,1
		adc	dx,0
		push	ax
		call	SYSTEM_$$_FREEMEM$POINTER$WORD
..@j2475:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_FREEMEM$POINTER$WORD
