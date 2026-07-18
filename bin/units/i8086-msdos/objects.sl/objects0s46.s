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
	GLOBAL OBJECTS$_$TDOSSTREAM_$__$$_CLOSE
OBJECTS$_$TDOSSTREAM_$__$$_CLOSE:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+4]
		mov	ax,word [bx+15]
		cmp	ax,word [U_$OBJECTS_$$_INVALIDHANDLE]
		jne	..@j702
		jmp	..@j703
..@j702:
		mov	bx,word [bp+4]
		lea	ax,[bx+273]
		push	ax
		call	SYSTEM_$$_CLOSE$file
		call	SYSTEM_$$_IORESULT$$WORD
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		je	..@j708
		jmp	..@j709
..@j708:
		mov	bx,word [bp+4]
		mov	word [bx+2],0
		jmp	..@j712
..@j709:
		mov	ax,word [bp+4]
		push	ax
		mov	ax,-1
		push	ax
		push	word [bp-2]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	ax,word [bx+22]
		call	ax
..@j712:
..@j703:
		mov	bx,word [bp+4]
		mov	word [bx+10],0
		mov	word [bx+12],0
		mov	bx,word [bp+4]
		mov	ax,word [U_$OBJECTS_$$_INVALIDHANDLE]
		mov	word [bx+15],ax
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_IORESULT$$WORD
EXTERN	SYSTEM_$$_CLOSE$file
EXTERN	U_$OBJECTS_$$_INVALIDHANDLE
