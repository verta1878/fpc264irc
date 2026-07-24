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
	GLOBAL SYSTEM_$$_DEFAULTGETSTANDARDCODEPAGE$TSTANDARDCODEPAGEENUM$$WORD
SYSTEM_$$_DEFAULTGETSTANDARDCODEPAGE$TSTANDARDCODEPAGEENUM$$WORD:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [bp+4],3
		jne	..@j10808
		jmp	..@j10809
..@j10808:
		mov	ax,word [U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE]
		mov	word [bp-2],ax
		jmp	..@j10812
..@j10809:
		mov	ax,word [U_$SYSTEM_$$_DEFAULTFILESYSTEMCODEPAGE]
		mov	word [bp-2],ax
..@j10812:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	U_$SYSTEM_$$_DEFAULTFILESYSTEMCODEPAGE
EXTERN	U_$SYSTEM_$$_DEFAULTSYSTEMCODEPAGE
