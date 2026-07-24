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
	GLOBAL OBJECTS$_$TCOLLECTION_$__$$_FOREACH$NEARPOINTER
OBJECTS$_$TCOLLECTION_$__$$_FOREACH$NEARPOINTER:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	bx,word [bp+6]
		mov	ax,word [bx+4]
		mov	word [bp-12],ax
		mov	ax,word [bx+6]
		mov	word [bp-10],ax
		mov	word [bp-4],1
		mov	word [bp-2],0
		mov	ax,word [bp-10]
		cmp	ax,word [bp-2]
		jl	..@j1958
		jg	..@j1960
		mov	ax,word [bp-12]
		cmp	ax,word [bp-4]
		jb	..@j1958
..@j1960:
		sub	word [bp-4],1
		sbb	word [bp-2],0
	ALIGN 2
..@j1959:
		add	word [bp-4],1
		adc	word [bp-2],0
		mov	bx,word [bp+6]
		mov	bx,word [bx+2]
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		sub	ax,1
		sbb	dx,0
		mov	si,ax
		shl	si,1
		mov	ax,word [bx+si]
		mov	word [bp-6],ax
		push	bp
		call	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
		push	ax
		call	SYSTEM_$$_GET_CALLER_FRAME$POINTER$NEARPOINTER$$POINTER
		mov	word [bp-8],ax
		push	word [bp-8]
		push	word [bp-6]
		mov	ax,word [bp+4]
		call	ax
		mov	ax,word [bp-10]
		cmp	ax,word [bp-2]
		jg	..@j1959
		jl	..@j1975
		mov	ax,word [bp-12]
		cmp	ax,word [bp-4]
		ja	..@j1959
..@j1975:
..@j1958:
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_GET_CALLER_FRAME$POINTER$NEARPOINTER$$POINTER
EXTERN	SYSTEM_$$_GET_PC_ADDR$$NEARPOINTER
