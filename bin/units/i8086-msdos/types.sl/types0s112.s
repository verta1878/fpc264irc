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
	GLOBAL TYPES$_$TRECTF_$__$$_OFFSET$SINGLE$SINGLE
TYPES$_$TRECTF_$__$$_OFFSET$SINGLE$SINGLE:
		push	bp
		mov	bp,sp
		mov	bx,word [bp+12]
		wait fld	dword [bp+8]
		wait fadd	dword [bx]
		mov	bx,word [bp+12]
		wait fstp	dword [bx]
		DB	09bh
		mov	bx,word [bp+12]
		wait fld	dword [bp+8]
		wait fadd	dword [bx+8]
		mov	bx,word [bp+12]
		wait fstp	dword [bx+8]
		DB	09bh
		mov	bx,word [bp+12]
		wait fld	dword [bp+4]
		wait fadd	dword [bx+12]
		mov	bx,word [bp+12]
		wait fstp	dword [bx+12]
		DB	09bh
		mov	bx,word [bp+12]
		wait fld	dword [bp+4]
		wait fadd	dword [bx+4]
		mov	bx,word [bp+12]
		wait fstp	dword [bx+4]
		DB	09bh
		mov	sp,bp
		pop	bp
		ret	10
; End asmlist al_procedures
; Begin asmlist al_globals
