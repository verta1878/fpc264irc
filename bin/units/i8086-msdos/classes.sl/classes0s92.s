BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TBYTESSTREAM_$__$$_REALLOC$SMALLINT$$POINTER
CLASSES$_$TBYTESSTREAM_$__$$_REALLOC$SMALLINT$$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	bx,word [bp+4]
		cmp	word [bx],0
		jl	..@j2004
		jmp	..@j2005
..@j2004:
		mov	bx,word [bp+4]
		mov	word [bx],0
		jmp	..@j2008
..@j2005:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	ax,word [bx+8]
		cmp	ax,word [si]
		jl	..@j2011
		jmp	..@j2010
..@j2011:
		mov	bx,word [bp+6]
		mov	ax,5
		mul	word [bx+8]
		test	ax,ax
		jns	..@j2012
		add	ax,3
..@j2012:
		mov	cl,2
		sar	ax,cl
		mov	bx,word [bp+4]
		cmp	ax,word [bx]
		jg	..@j2009
		jmp	..@j2010
..@j2009:
		mov	bx,word [bp+6]
		mov	ax,5
		mul	word [bx+8]
		test	ax,ax
		jns	..@j2015
		add	ax,3
..@j2015:
		mov	cl,2
		sar	ax,cl
		mov	bx,word [bp+4]
		mov	word [bx],ax
..@j2010:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		add	ax,4095
		and	ax,-4096
		mov	bx,word [bp+4]
		mov	word [bx],ax
..@j2008:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	ax,word [bx+8]
		cmp	ax,word [si]
		je	..@j2018
		jmp	..@j2019
..@j2018:
		mov	bx,word [bp+6]
		mov	ax,word [bx+10]
		mov	word [bp-2],ax
		jmp	..@j2022
..@j2019:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	word [bp-4],ax
		mov	bx,word [bp+6]
		lea	ax,[bx+10]
		push	ax
		mov	ax,word RTTI_$SYSUTILS_$$_TBYTES
		push	ax
		mov	ax,1
		push	ax
		lea	ax,[bp-4]
		push	ax
		call	fpc_dynarray_setlength
		mov	bx,word [bp+6]
		mov	ax,word [bx+10]
		mov	word [bp-2],ax
		cmp	word [bp-2],0
		je	..@j2037
		jmp	..@j2036
..@j2037:
		mov	bx,word [bp+4]
		cmp	word [bx],0
		jg	..@j2035
		jmp	..@j2036
..@j2035:
..@j2038:
		mov	ax,word VMT_$CLASSES_$$_ESTREAMERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SMEMORYSTREAMERROR+2]
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
		push	ax
		mov	ax,word ..@j2038
		push	ax
		push	bp
		call	fpc_raiseexception
..@j2036:
..@j2022:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATE$ANSISTRING$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SMEMORYSTREAMERROR
EXTERN	VMT_$CLASSES_$$_ESTREAMERROR
EXTERN	fpc_dynarray_setlength
EXTERN	RTTI_$SYSUTILS_$$_TBYTES
