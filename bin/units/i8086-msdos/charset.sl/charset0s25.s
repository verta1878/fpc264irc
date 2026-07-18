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
	GLOBAL FINALIZE$_$CHARSET
FINALIZE$_$CHARSET:
	GLOBAL _CHARSET_$$_finalize$
_CHARSET_$$_finalize$:
		push	bp
		mov	bp,sp
		jmp	..@j967
	ALIGN 2
..@j966:
		mov	bx,word [U_$CHARSET_$$_MAPPINGS]
		mov	ax,word [bx+35]
		mov	word [U_$CHARSET_$$_HP],ax
		mov	bx,word [U_$CHARSET_$$_MAPPINGS]
		cmp	byte [bx+37],0
		je	..@j971
		jmp	..@j972
..@j971:
		mov	bx,word [U_$CHARSET_$$_MAPPINGS]
		push	word [bx+23]
		call	SYSTEM_$$_FREEMEM$POINTER$$WORD
		mov	bx,word [U_$CHARSET_$$_MAPPINGS]
		push	word [bx+29]
		call	SYSTEM_$$_FREEMEM$POINTER$$WORD
		push	word [U_$CHARSET_$$_MAPPINGS]
		call	fpc_freemem
..@j972:
		mov	ax,word [U_$CHARSET_$$_HP]
		mov	word [U_$CHARSET_$$_MAPPINGS],ax
..@j967:
		cmp	word [U_$CHARSET_$$_MAPPINGS],0
		jne	..@j966
		jmp	..@j968
..@j968:
		mov	sp,bp
		pop	bp
		ret
; End asmlist al_procedures
; Begin asmlist al_globals
EXTERN	fpc_freemem
EXTERN	SYSTEM_$$_FREEMEM$POINTER$$WORD
EXTERN	U_$CHARSET_$$_HP
EXTERN	U_$CHARSET_$$_MAPPINGS
