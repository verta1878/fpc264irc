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
	GLOBAL KEYBOARD_$$_KBDCTRLBREAKHANDLER$BOOLEAN$$BOOLEAN
KEYBOARD_$$_KBDCTRLBREAKHANDLER$BOOLEAN$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [TC_$KEYBOARD_$$_PREVCTRLBREAKHANDLER],0
		jne	..@j380
		jmp	..@j381
..@j380:
		mov	al,byte [bp+4]
		mov	ah,0
		push	ax
		mov	ax,word [TC_$KEYBOARD_$$_PREVCTRLBREAKHANDLER]
		call	ax
		test	al,al
		jne	..@j382
		jmp	..@j383
..@j382:
		mov	byte [bp-1],1
		jmp	..@j378
..@j383:
..@j381:
		cmp	byte [bp+4],0
		jne	..@j388
		jmp	..@j389
..@j388:
		mov	byte [bp-1],0
		jmp	..@j392
..@j389:
		mov	ax,4
		push	ax
		mov	ax,3
		push	ax
		call	KEYBOARD_$$_PUTKEYEVENT$LONGWORD
		mov	byte [bp-1],1
..@j392:
..@j378:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	KEYBOARD_$$_PUTKEYEVENT$LONGWORD
EXTERN	TC_$KEYBOARD_$$_PREVCTRLBREAKHANDLER
