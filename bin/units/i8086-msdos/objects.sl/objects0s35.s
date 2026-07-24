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
	GLOBAL OBJECTS$_$TSTREAM_$__$$_PUT$POBJECT
OBJECTS$_$TSTREAM_$__$$_PUT$POBJECT:
		push	bp
		mov	bp,sp
		sub	sp,16
		mov	ax,word [bp+4]
		mov	word [bp-10],ax
		cmp	word [bp-10],0
		jne	..@j414
		jmp	..@j415
..@j414:
		mov	bx,word [bp-10]
		mov	ax,word [bx]
		mov	word [bp-6],ax
		jmp	..@j418
..@j415:
		mov	word [bp-6],0
..@j418:
		mov	word [bp-4],0
		mov	word [bp-2],0
		cmp	word [bp+4],0
		jne	..@j425
		jmp	..@j424
..@j425:
		cmp	word [bp-6],0
		jne	..@j423
		jmp	..@j424
..@j423:
		mov	ax,word [TC_$OBJECTS_$$_STREAMTYPES]
		mov	word [bp-8],ax
		jmp	..@j429
	ALIGN 2
..@j428:
		mov	bx,word [bp-8]
		mov	ax,word [bx+10]
		mov	word [bp-8],ax
..@j429:
		cmp	word [bp-8],0
		jne	..@j433
		jmp	..@j430
..@j433:
		mov	bx,word [bp-8]
		mov	ax,word [bx+4]
		cmp	ax,word [bp-6]
		jne	..@j428
		jmp	..@j430
..@j430:
		cmp	word [bp-8],0
		je	..@j434
		jmp	..@j435
..@j434:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,-6
		push	ax
		mov	ax,0
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+22]
		call	ax
		jmp	..@j410
		jmp	..@j442
..@j435:
		mov	bx,word [bp-8]
		mov	ax,word [bx]
		mov	word [bp-4],ax
		mov	ax,word [bx+2]
		mov	word [bp-2],ax
..@j442:
..@j424:
		mov	bx,word [bp+6]
		cmp	byte [bx+14],0
		jne	..@j445
		jmp	..@j446
..@j445:
		mov	ax,word [bp-4]
		mov	word [bp-12],ax
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-12]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,2
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+26]
		call	ax
		jmp	..@j455
..@j446:
		mov	ax,word [bp+6]
		push	ax
		lea	ax,[bp-4]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,4
		push	ax
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+26]
		call	ax
..@j455:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		jne	..@j462
		cmp	ax,0
		jne	..@j462
		jmp	..@j463
..@j462:
		mov	ax,word [bp+6]
		mov	word [bp-14],ax
		mov	bx,word [bp-8]
		mov	ax,word [bx+8]
		mov	word [bp-16],ax
		push	word [bp+4]
		push	word [bp-14]
		mov	ax,word [bp-16]
		call	ax
..@j463:
..@j410:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	TC_$OBJECTS_$$_STREAMTYPES
