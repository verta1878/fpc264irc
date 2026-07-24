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
	GLOBAL CRT_$$_KEYPRESSED$$BOOLEAN
CRT_$$_KEYPRESSED$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,22
		cmp	byte [U_$CRT_$$_IS_LAST],0
		jne	..@j288
		jmp	..@j289
..@j288:
		mov	byte [bp-1],1
		jmp	..@j286
		jmp	..@j292
..@j289:
		mov	al,byte [U_$CRT_$$_KEYBOARD_TYPE]
		mov	ah,0
		inc	ax
		mov	byte [bp-21],al
		mov	ax,22
		push	ax
		lea	ax,[bp-22]
		push	ax
		call	FPC_INTR
		mov	ax,word [bp-4]
		and	ax,64
		test	ax,ax
		mov	al,0
		jne	..@j301
		inc	ax
..@j301:
		mov	byte [bp-1],al
..@j292:
..@j286:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret
EXTERN	FPC_INTR
EXTERN	U_$CRT_$$_KEYBOARD_TYPE
EXTERN	U_$CRT_$$_IS_LAST
