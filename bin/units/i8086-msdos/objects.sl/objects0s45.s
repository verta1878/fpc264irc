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
	GLOBAL OBJECTS$_$TDOSSTREAM_$__$$_DONE
OBJECTS$_$TDOSSTREAM_$__$$_DONE:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	bx,word [bp+6]
		mov	ax,word [bx+15]
		cmp	ax,word [U_$OBJECTS_$$_INVALIDHANDLE]
		jne	..@j669
		jmp	..@j670
..@j669:
		mov	bx,word [bp+6]
		lea	ax,[bx+273]
		push	ax
		call	SYSTEM_$$_CLOSE$file
		call	SYSTEM_$$_IORESULT$$WORD
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		je	..@j675
		jmp	..@j676
..@j675:
		mov	bx,word [bp+6]
		mov	word [bx+2],0
		jmp	..@j679
..@j676:
		mov	ax,word [bp+6]
		push	ax
		mov	ax,-1
		push	ax
		push	word [bp-2]
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		mov	ax,word [bx+22]
		call	ax
..@j679:
..@j670:
		mov	bx,word [bp+6]
		mov	word [bx+10],0
		mov	word [bx+12],0
		mov	bx,word [bp+6]
		mov	ax,word [U_$OBJECTS_$$_INVALIDHANDLE]
		mov	word [bx+15],ax
		mov	ax,word [bp+6]
		push	ax
		mov	ax,0
		push	ax
		call	OBJECTS$_$TOBJECT_$__$$_DONE
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	fpc_help_destructor
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_help_destructor
EXTERN	OBJECTS$_$TOBJECT_$__$$_DONE
EXTERN	SYSTEM_$$_IORESULT$$WORD
EXTERN	SYSTEM_$$_CLOSE$file
EXTERN	U_$OBJECTS_$$_INVALIDHANDLE
