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
	GLOBAL SYSTEM_$$_SYSRESETFPU
SYSTEM_$$_SYSRESETFPU:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,word [TC_$SYSTEM_$$_DEFAULT8087CW]
		mov	word [bp-2],ax
		fninit
		DB	09bh
		wait fldcw	word [bp-2]
		mov	sp,bp
		pop	bp
		ret
EXTERN	TC_$SYSTEM_$$_DEFAULT8087CW
