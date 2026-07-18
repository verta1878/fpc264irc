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
	GLOBAL SYSTEM_$$_SYSGETMEM$WORD$$POINTER
SYSTEM_$$_SYSGETMEM$WORD$$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,2
		cmp	word [bp+4],0
		je	..@j19203
		jmp	..@j19204
..@j19203:
		mov	word [bp+4],1
..@j19204:
		cmp	word [bp+4],526
		jbe	..@j19207
		jmp	..@j19208
..@j19207:
		mov	ax,word [bp+4]
		add	ax,17
		and	ax,4080
		mov	word [bp+4],ax
		push	word [bp+4]
		call	SYSTEM_$$_SYSGETMEM_FIXED$WORD$$POINTER
		mov	word [bp-2],ax
		jmp	..@j19215
..@j19208:
		cmp	word [bp+4],-22
		jb	..@j19216
		jmp	..@j19217
..@j19216:
		mov	ax,word [bp+4]
		add	ax,21
		and	ax,-16
		mov	word [bp+4],ax
..@j19217:
		push	word [bp+4]
		call	SYSTEM_$$_SYSGETMEM_VAR$WORD$$POINTER
		mov	word [bp-2],ax
..@j19215:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_SYSGETMEM_VAR$WORD$$POINTER
EXTERN	SYSTEM_$$_SYSGETMEM_FIXED$WORD$$POINTER
