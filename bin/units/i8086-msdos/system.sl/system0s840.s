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
	GLOBAL SYSTEM_$$_SYSBACKTRACESTR$NEARPOINTER$$SHORTSTRING
SYSTEM_$$_SYSBACKTRACESTR$NEARPOINTER$$SHORTSTRING:
		push	bp
		mov	bp,sp
		sub	sp,256
		mov	ax,word [bp+6]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word _$SYSTEM$_Ld27
		push	ax
		lea	ax,[bp-256]
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_HEXSTR$NEARPOINTER$$SHORTSTRING
		lea	ax,[bp-256]
		push	ax
		call	fpc_shortstr_concat
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	fpc_shortstr_concat
EXTERN	SYSTEM_$$_HEXSTR$NEARPOINTER$$SHORTSTRING
EXTERN	_$SYSTEM$_Ld27
