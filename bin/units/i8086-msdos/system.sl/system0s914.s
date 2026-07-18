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
	GLOBAL SYSTEM_$$_SYSFREEMEMSIZE$POINTER$WORD$$WORD
SYSTEM_$$_SYSFREEMEMSIZE$POINTER$WORD$$WORD:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [bp+4],0
		je	..@j19397
		jmp	..@j19398
..@j19397:
		mov	word [bp-2],0
		jmp	..@j19395
..@j19398:
		push	word [bp+6]
		call	SYSTEM_$$_SYSFREEMEM$POINTER$$WORD
		mov	word [bp-2],ax
..@j19395:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	SYSTEM_$$_SYSFREEMEM$POINTER$$WORD
