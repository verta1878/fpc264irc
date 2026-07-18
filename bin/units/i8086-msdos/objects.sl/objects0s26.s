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
	GLOBAL OBJECTS$_$TSTREAM_$__$$_GET$$POBJECT
OBJECTS$_$TSTREAM_$__$$_GET$$POBJECT:
		push	bp
		mov	bp,sp
		sub	sp,16
		mov	bx,word [bp+4]
		cmp	byte [bx+14],0
		jne	..@j265
		jmp	..@j266
..@j265:
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-10]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,2
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
		mov	ax,word [bp-10]
		mov	dx,0
		mov	word [bp-6],ax
		mov	word [bp-4],dx
		jmp	..@j275
..@j266:
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-6]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,4
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j275:
		mov	ax,word [bp-6]
		mov	dx,word [bp-4]
		cmp	dx,0
		jne	..@j282
		cmp	ax,0
		jne	..@j282
		jmp	..@j283
..@j282:
		mov	ax,word [TC_$OBJECTS_$$_STREAMTYPES]
		mov	word [bp-8],ax
		jmp	..@j287
	ALIGN 2
..@j286:
		mov	bx,word [bp-8]
		mov	ax,word [bx+10]
		mov	word [bp-8],ax
..@j287:
		cmp	word [bp-8],0
		jne	..@j291
		jmp	..@j288
..@j291:
		mov	bx,word [bp-8]
		mov	dx,word [bx]
		mov	ax,word [bx+2]
		cmp	ax,word [bp-4]
		jne	..@j286
		cmp	dx,word [bp-6]
		jne	..@j286
		jmp	..@j288
		jmp	..@j288
..@j288:
		cmp	word [bp-8],0
		je	..@j292
		jmp	..@j293
..@j292:
		mov	ax,word [bp+4]
		push	ax
		mov	ax,-5
		push	ax
		push	word [bp-6]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+22]
		call	ax
		mov	word [bp-2],0
		jmp	..@j302
..@j293:
		mov	ax,word [bp+4]
		mov	word [bp-12],ax
		mov	bx,word [bp-8]
		mov	ax,word [bx+4]
		mov	word [bp-14],ax
		mov	bx,word [bp-8]
		mov	ax,word [bx+6]
		mov	word [bp-16],ax
		mov	ax,0
		push	ax
		push	word [bp-14]
		push	word [bp-12]
		mov	ax,word [bp-16]
		call	ax
		mov	word [bp-2],ax
..@j302:
		jmp	..@j319
..@j283:
		mov	word [bp-2],0
..@j319:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	TC_$OBJECTS_$$_STREAMTYPES
