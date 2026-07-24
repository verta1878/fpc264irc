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
	GLOBAL SYSUTILS_$$_EXCEPTFRAMECOUNT$$LONGINT
SYSUTILS_$$_EXCEPTFRAMECOUNT$$LONGINT:
		push	bp
		mov	bp,sp
		sub	sp,4
		call	SYSTEM_$$_RAISELIST$$PEXCEPTOBJECT
		test	ax,ax
		je	..@j14894
		jmp	..@j14895
..@j14894:
		mov	word [bp-4],0
		mov	word [bp-2],0
		jmp	..@j14898
..@j14895:
		call	SYSTEM_$$_RAISELIST$$PEXCEPTOBJECT
		mov	bx,ax
		mov	ax,word [bx+10]
		mov	word [bp-4],ax
		mov	ax,word [bx+12]
		mov	word [bp-2],ax
..@j14898:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret
EXTERN	SYSTEM_$$_RAISELIST$$PEXCEPTOBJECT
