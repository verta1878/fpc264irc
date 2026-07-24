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
	GLOBAL KEYBOARD_$$_KEYEVENTTOSTRING$LONGWORD$$SHORTSTRING
KEYBOARD_$$_KEYEVENTTOSTRING$LONGWORD$$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,768
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-512]
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,0
		push	ax
		call	KEYBOARD_$$_SHIFTSTATETOSTRING$LONGWORD$BOOLEAN$$SHORTSTRING
		lea	ax,[bp-512]
		push	ax
		call	fpc_shortstr_to_shortstr
		push	word [bp+6]
		push	word [bp+4]
		call	KEYBOARD_$$_GETKEYEVENTFLAGS$LONGWORD$$BYTE
		test	al,al
		je	..@j316
		dec	al
		je	..@j317
		dec	al
		je	..@j318
		dec	al
		je	..@j319
		jmp	..@j315
..@j316:
		lea	ax,[bp-256]
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		call	KEYBOARD_$$_GETKEYEVENTCHAR$LONGWORD$$CHAR
		mov	ah,0
		mov	cl,8
		shl	ax,cl
		mov	dx,0
		or	ax,1
		mov	word [bp-512],ax
		lea	ax,[bp-512]
		push	ax
		call	KEYBOARD_$$_ADDTOSTRING$SHORTSTRING$SHORTSTRING
		jmp	..@j314
..@j317:
		lea	ax,[bp-256]
		push	ax
		lea	ax,[bp-512]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word TC_$KEYBOARD_$$_SUNICODECHAR
		push	ax
		lea	ax,[bp-768]
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		call	KEYBOARD_$$_GETKEYEVENTUNICODE$LONGWORD$$WORD
		mov	dx,0
		push	dx
		push	ax
		call	KEYBOARD_$$_INTTOSTR$LONGINT$$SHORTSTRING
		lea	ax,[bp-768]
		push	ax
		call	fpc_shortstr_concat
		lea	ax,[bp-512]
		push	ax
		call	KEYBOARD_$$_ADDTOSTRING$SHORTSTRING$SHORTSTRING
		jmp	..@j314
..@j318:
		lea	ax,[bp-256]
		push	ax
		lea	ax,[bp-512]
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		call	KEYBOARD_$$_GETKEYEVENTCODE$LONGWORD$$WORD
		push	ax
		call	KEYBOARD_$$_FUNCTIONKEYNAME$WORD$$SHORTSTRING
		lea	ax,[bp-512]
		push	ax
		call	KEYBOARD_$$_ADDTOSTRING$SHORTSTRING$SHORTSTRING
		jmp	..@j314
..@j319:
		lea	ax,[bp-256]
		push	ax
		lea	ax,[bp-512]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word TC_$KEYBOARD_$$_SSCANCODE
		push	ax
		lea	ax,[bp-768]
		push	ax
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	dx,0
		push	dx
		push	ax
		call	KEYBOARD_$$_INTTOSTR$LONGINT$$SHORTSTRING
		lea	ax,[bp-768]
		push	ax
		call	fpc_shortstr_concat
		lea	ax,[bp-512]
		push	ax
		call	KEYBOARD_$$_ADDTOSTRING$SHORTSTRING$SHORTSTRING
		jmp	..@j314
..@j315:
..@j314:
		mov	ax,word [bp+8]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-256]
		push	ax
		call	fpc_shortstr_to_shortstr
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	TC_$KEYBOARD_$$_SSCANCODE
EXTERN	KEYBOARD_$$_FUNCTIONKEYNAME$WORD$$SHORTSTRING
EXTERN	KEYBOARD_$$_GETKEYEVENTCODE$LONGWORD$$WORD
EXTERN	fpc_shortstr_concat
EXTERN	KEYBOARD_$$_INTTOSTR$LONGINT$$SHORTSTRING
EXTERN	KEYBOARD_$$_GETKEYEVENTUNICODE$LONGWORD$$WORD
EXTERN	TC_$KEYBOARD_$$_SUNICODECHAR
EXTERN	KEYBOARD_$$_ADDTOSTRING$SHORTSTRING$SHORTSTRING
EXTERN	KEYBOARD_$$_GETKEYEVENTCHAR$LONGWORD$$CHAR
EXTERN	KEYBOARD_$$_GETKEYEVENTFLAGS$LONGWORD$$BYTE
EXTERN	fpc_shortstr_to_shortstr
EXTERN	KEYBOARD_$$_SHIFTSTATETOSTRING$LONGWORD$BOOLEAN$$SHORTSTRING
