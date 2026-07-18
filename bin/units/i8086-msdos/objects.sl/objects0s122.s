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
	GLOBAL OBJECTS$_$TRESOURCEFILE_$__$$_PUT$POBJECT$SHORTSTRING
OBJECTS$_$TRESOURCEFILE_$__$$_PUT$POBJECT$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,518
		mov	dx,word [bp+4]
		lea	ax,[bp-518]
		push	ax
		mov	ax,255
		push	ax
		push	dx
		call	fpc_shortstr_to_shortstr
		mov	bx,word [bp+8]
		cmp	word [bx+2],0
		je	..@j2868
		jmp	..@j2869
..@j2868:
		jmp	..@j2866
..@j2869:
		mov	bx,word [bp+8]
		lea	ax,[bx+13]
		push	ax
		lea	ax,[bp-518]
		push	ax
		lea	ax,[bp-4]
		push	ax
		mov	bx,word [bp+8]
		lea	bx,[bx+13]
		mov	bx,word [bx]
		mov	ax,word [bx+26]
		call	ax
		test	al,al
		jne	..@j2870
		jmp	..@j2871
..@j2870:
		mov	bx,word [bp+8]
		lea	ax,[bx+13]
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		call	OBJECTS$_$TCOLLECTION_$__$$_AT$LONGINT$$POINTER
		mov	word [bp-262],ax
		jmp	..@j2884
..@j2871:
		lea	ax,[bp-262]
		push	ax
		mov	al,byte [bp-518]
		mov	ah,0
		add	ax,9
		push	ax
		call	SYSTEM_$$_GETMEM$POINTER$WORD
		cmp	word [bp-262],0
		jne	..@j2889
		jmp	..@j2890
..@j2889:
		mov	bx,word [bp-262]
		lea	ax,[bx+8]
		push	ax
		mov	ax,255
		push	ax
		lea	ax,[bp-518]
		push	ax
		call	fpc_shortstr_to_shortstr
		mov	bx,word [bp+8]
		lea	ax,[bx+13]
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-262]
		call	OBJECTS$_$TCOLLECTION_$__$$_ATINSERT$LONGINT$POINTER
..@j2890:
..@j2884:
		cmp	word [bp-262],0
		jne	..@j2903
		jmp	..@j2904
..@j2903:
		mov	bx,word [bp-262]
		mov	si,word [bp+8]
		mov	ax,word [si+9]
		mov	word [bx],ax
		mov	ax,word [si+11]
		mov	word [bx+2],ax
		mov	bx,word [bp+8]
		mov	ax,word [bx+2]
		push	ax
		mov	di,word [bp+8]
		mov	bx,word [bp+8]
		mov	si,word [di+5]
		mov	dx,word [di+7]
		mov	ax,word [bx+9]
		mov	cx,word [bx+11]
		add	ax,si
		adc	cx,dx
		push	cx
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx+2]
		mov	bx,word [bx]
		mov	ax,word [bx+20]
		call	ax
		mov	bx,word [bp+8]
		mov	ax,word [bx+2]
		push	ax
		push	word [bp+6]
		call	OBJECTS$_$TSTREAM_$__$$_PUT$POBJECT
		mov	bx,word [bp+8]
		mov	ax,word [bx+2]
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx+2]
		mov	bx,word [bx]
		mov	ax,word [bx+8]
		call	ax
		mov	bx,word [bp+8]
		mov	cx,word [bx+5]
		mov	bx,word [bx+7]
		sub	ax,cx
		sbb	dx,bx
		mov	bx,word [bp+8]
		mov	word [bx+9],ax
		mov	word [bx+11],dx
		mov	si,word [bp+8]
		mov	bx,word [bp-262]
		mov	ax,word [si+9]
		mov	dx,word [si+11]
		mov	cx,word [bx]
		mov	bx,word [bx+2]
		sub	ax,cx
		sbb	dx,bx
		mov	bx,word [bp-262]
		mov	word [bx+4],ax
		mov	word [bx+6],dx
		mov	bx,word [bp+8]
		mov	byte [bx+4],1
..@j2904:
..@j2866:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	OBJECTS$_$TSTREAM_$__$$_PUT$POBJECT
EXTERN	OBJECTS$_$TCOLLECTION_$__$$_ATINSERT$LONGINT$POINTER
EXTERN	SYSTEM_$$_GETMEM$POINTER$WORD
EXTERN	OBJECTS$_$TCOLLECTION_$__$$_AT$LONGINT$$POINTER
EXTERN	fpc_shortstr_to_shortstr
