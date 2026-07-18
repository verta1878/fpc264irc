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
	GLOBAL MACPAS_$$_BNOT$QWORD$$QWORD
MACPAS_$$_BNOT$QWORD$$QWORD:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	ax,word [bp+4]
		mov	dx,word [bp+6]
		mov	cx,word [bp+8]
		mov	bx,word [bp+10]
		not	ax
		not	dx
		not	cx
		not	bx
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		mov	word [bp-4],cx
		mov	word [bp-2],bx
		mov	bx,word [bp-4]
		mov	ax,word [bp-2]
		mov	dx,word [bp-8]
		mov	cx,word [bp-6]
		mov	sp,bp
		pop	bp
		ret	8
; End asmlist al_procedures
; Begin asmlist al_rtti
