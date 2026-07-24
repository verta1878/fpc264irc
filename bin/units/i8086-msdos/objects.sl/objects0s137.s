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
	GLOBAL OBJECTS_$$_REGISTERTYPE$TSTREAMREC
OBJECTS_$$_REGISTERTYPE$TSTREAMREC:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [TC_$OBJECTS_$$_STREAMTYPES]
		mov	word [bp-2],ax
		jmp	..@j3225
	ALIGN 2
..@j3224:
		mov	bx,word [bp-2]
		mov	ax,word [bx+10]
		mov	word [bp-2],ax
..@j3225:
		cmp	word [bp-2],0
		jne	..@j3229
		jmp	..@j3226
..@j3229:
		mov	si,word [bp-2]
		mov	bx,word [bp+4]
		mov	dx,word [si]
		mov	ax,word [si+2]
		cmp	ax,word [bx+2]
		jne	..@j3224
		cmp	dx,word [bx]
		jne	..@j3224
		jmp	..@j3226
		jmp	..@j3226
..@j3226:
		cmp	word [bp-2],0
		je	..@j3232
		jmp	..@j3231
..@j3232:
		mov	bx,word [bp+4]
		mov	dx,word [bx]
		mov	ax,word [bx+2]
		cmp	ax,0
		jne	..@j3230
		cmp	dx,0
		jne	..@j3230
		jmp	..@j3231
..@j3230:
		mov	bx,word [bp+4]
		mov	ax,word [TC_$OBJECTS_$$_STREAMTYPES]
		mov	word [bx+10],ax
		mov	ax,word [bp+4]
		mov	word [TC_$OBJECTS_$$_STREAMTYPES],ax
		jmp	..@j3237
..@j3231:
		call	OBJECTS_$$_REGISTERERROR
..@j3237:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	OBJECTS_$$_REGISTERERROR
EXTERN	TC_$OBJECTS_$$_STREAMTYPES
