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
	GLOBAL SYSUTILS_$$_EXCEPTADDR$$NEARPOINTER
SYSUTILS_$$_EXCEPTADDR$$NEARPOINTER:
		push	bp
		mov	bp,sp
		sub	sp,2
		call	SYSTEM_$$_RAISELIST$$PEXCEPTOBJECT
		test	ax,ax
		je	..@j14885
		jmp	..@j14886
..@j14885:
		mov	word [bp-2],0
		jmp	..@j14889
..@j14886:
		call	SYSTEM_$$_RAISELIST$$PEXCEPTOBJECT
		mov	bx,ax
		mov	ax,word [bx+2]
		mov	word [bp-2],ax
..@j14889:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret
EXTERN	SYSTEM_$$_RAISELIST$$PEXCEPTOBJECT
