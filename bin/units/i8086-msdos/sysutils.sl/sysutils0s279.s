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
	GLOBAL SYSUTILS_$$_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD
SYSUTILS_$$_DECODETIME$TDATETIME$WORD$WORD$WORD$WORD:
		push	bp
		mov	bp,sp
		sub	sp,12
		lea	ax,[bp-12]
		push	ax
		sub	sp,8
		mov	di,sp
		push	ds
		pop	es
		lea	si,[bp+12]
		cld
		mov	cx,4
		rep
		movsw
		call	SYSUTILS_$$_DATETIMETOTIMESTAMP$TDATETIME$$TTIMESTAMP
		mov	ax,word [bp-12]
		mov	word [bp-4],ax
		mov	ax,word [bp-10]
		mov	word [bp-2],ax
		mov	ax,54
		push	ax
		mov	ax,-4480
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		call	fpc_div_dword
		mov	bx,word [bp+10]
		mov	word [bx],ax
		mov	ax,54
		push	ax
		mov	ax,-4480
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		call	fpc_mod_dword
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,0
		push	ax
		mov	ax,-5536
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		call	fpc_div_dword
		mov	bx,word [bp+8]
		mov	word [bx],ax
		mov	ax,0
		push	ax
		mov	ax,-5536
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		call	fpc_mod_dword
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,0
		push	ax
		mov	ax,1000
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		call	fpc_div_dword
		mov	bx,word [bp+6]
		mov	word [bx],ax
		mov	ax,0
		push	ax
		mov	ax,1000
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		call	fpc_mod_dword
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	bx,word [bp+4]
		mov	ax,word [bp-4]
		mov	word [bx],ax
		mov	sp,bp
		pop	bp
		ret	16
EXTERN	fpc_mod_dword
EXTERN	fpc_div_dword
EXTERN	SYSUTILS_$$_DATETIMETOTIMESTAMP$TDATETIME$$TTIMESTAMP
