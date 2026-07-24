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
	GLOBAL OBJECTS$_$TRESOURCEFILE_$__$$_GET$SHORTSTRING$$POBJECT
OBJECTS$_$TRESOURCEFILE_$__$$_GET$SHORTSTRING$$POBJECT:
		push	bp
		mov	bp,sp
		sub	sp,264
		mov	dx,word [bp+4]
		lea	ax,[bp-262]
		push	ax
		mov	ax,255
		push	ax
		push	dx
		call	fpc_shortstr_to_shortstr
		mov	bx,word [bp+6]
		cmp	word [bx+2],0
		je	..@j2707
		jmp	..@j2709
..@j2709:
		mov	bx,word [bp+6]
		lea	ax,[bx+13]
		push	ax
		lea	ax,[bp-262]
		push	ax
		lea	ax,[bp-6]
		push	ax
		mov	bx,word [bp+6]
		lea	bx,[bx+13]
		mov	bx,word [bx]
		mov	ax,word [bx+26]
		call	ax
		test	al,al
		je	..@j2707
		jmp	..@j2708
..@j2707:
		mov	word [bp-2],0
		jmp	..@j2718
..@j2708:
		mov	bx,word [bp+6]
		mov	ax,word [bx+2]
		push	ax
		mov	ax,word [bp+6]
		mov	word [bp-264],ax
		mov	bx,word [bp+6]
		lea	ax,[bx+13]
		push	ax
		push	word [bp-4]
		push	word [bp-6]
		call	OBJECTS$_$TCOLLECTION_$__$$_AT$LONGINT$$POINTER
		mov	bx,ax
		mov	si,word [bp-264]
		mov	ax,word [si+5]
		mov	si,word [bp-264]
		mov	dx,word [si+7]
		mov	si,word [bx]
		mov	cx,word [bx+2]
		add	si,ax
		adc	cx,dx
		push	cx
		push	si
		mov	bx,word [bp+6]
		mov	bx,word [bx+2]
		mov	bx,word [bx]
		mov	ax,word [bx+20]
		call	ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+2]
		push	ax
		call	OBJECTS$_$TSTREAM_$__$$_GET$$POBJECT
		mov	word [bp-2],ax
..@j2718:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	OBJECTS$_$TSTREAM_$__$$_GET$$POBJECT
EXTERN	OBJECTS$_$TCOLLECTION_$__$$_AT$LONGINT$$POINTER
EXTERN	fpc_shortstr_to_shortstr
