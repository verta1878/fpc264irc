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
	GLOBAL SYSUTILS_$$_EXCEPTOBJECT$$TOBJECT
SYSUTILS_$$_EXCEPTOBJECT$$TOBJECT:
		push	bp
		mov	bp,sp
		sub	sp,2
		call	SYSTEM_$$_RAISELIST$$PEXCEPTOBJECT
		test	ax,ax
		je	..@j14876
		jmp	..@j14877
..@j14876:
		mov	word [bp-2],0
		jmp	..@j14880
..@j14877:
		call	SYSTEM_$$_RAISELIST$$PEXCEPTOBJECT
		mov	bx,ax
		mov	ax,word [bx]
		mov	word [bp-2],ax
..@j14880:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret
EXTERN	SYSTEM_$$_RAISELIST$$PEXCEPTOBJECT
