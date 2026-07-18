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
	GLOBAL DATEUTILS_$$_TRYRECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN
DATEUTILS_$$_TRYRECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,16
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+20]
		cld
		mov	cx,4
		rep
		movsw
		lea	ax,[bp-4]
		push	ax
		lea	ax,[bp-6]
		push	ax
		lea	ax,[bp-8]
		push	ax
		lea	ax,[bp-10]
		push	ax
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-16]
		push	ax
		call	DATEUTILS_$$_DECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD
		push	bp
		lea	ax,[bp-4]
		push	ax
		push	word [bp+18]
		call	DATEUTILS$_$TRYRECODEDATETIME$crc28D83E09_$$_FV$WORD$WORD
		push	bp
		lea	ax,[bp-6]
		push	ax
		push	word [bp+16]
		call	DATEUTILS$_$TRYRECODEDATETIME$crc28D83E09_$$_FV$WORD$WORD
		push	bp
		lea	ax,[bp-8]
		push	ax
		push	word [bp+14]
		call	DATEUTILS$_$TRYRECODEDATETIME$crc28D83E09_$$_FV$WORD$WORD
		push	bp
		lea	ax,[bp-10]
		push	ax
		push	word [bp+12]
		call	DATEUTILS$_$TRYRECODEDATETIME$crc28D83E09_$$_FV$WORD$WORD
		push	bp
		lea	ax,[bp-12]
		push	ax
		push	word [bp+10]
		call	DATEUTILS$_$TRYRECODEDATETIME$crc28D83E09_$$_FV$WORD$WORD
		push	bp
		lea	ax,[bp-14]
		push	ax
		push	word [bp+8]
		call	DATEUTILS$_$TRYRECODEDATETIME$crc28D83E09_$$_FV$WORD$WORD
		push	bp
		lea	ax,[bp-16]
		push	ax
		push	word [bp+6]
		call	DATEUTILS$_$TRYRECODEDATETIME$crc28D83E09_$$_FV$WORD$WORD
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		mov	ax,word [bp+4]
		push	ax
		call	DATEUTILS_$$_TRYENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	24
EXTERN	DATEUTILS_$$_TRYENCODEDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD$TDATETIME$$BOOLEAN
EXTERN	DATEUTILS$_$TRYRECODEDATETIME$crc28D83E09_$$_FV$WORD$WORD
EXTERN	DATEUTILS_$$_DECODEDATETIME$TDATETIME$WORD$WORD$WORD$WORD$WORD$WORD$WORD
