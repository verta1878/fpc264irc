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
	GLOBAL SYSTEM_$$_DOEXITPROC
SYSTEM_$$_DOEXITPROC:
		push	bp
		mov	bp,sp
		sub	sp,4
		mov	ax,word [TC_$SYSTEM_$$_EXITPROCLIST]
		mov	word [bp-2],ax
		mov	bx,word [bp-2]
		mov	ax,word [bx]
		mov	word [TC_$SYSTEM_$$_EXITPROCLIST],ax
		mov	bx,word [bp-2]
		mov	ax,word [bx+2]
		mov	word [TC_$SYSTEM_$$_EXITPROC],ax
		mov	bx,word [bp-2]
		mov	ax,word [bx+4]
		mov	word [bp-4],ax
		push	word [bp-2]
		call	fpc_freemem
		mov	ax,word [bp-4]
		call	ax
		mov	sp,bp
		pop	bp
		ret
EXTERN	fpc_freemem
EXTERN	TC_$SYSTEM_$$_EXITPROC
EXTERN	TC_$SYSTEM_$$_EXITPROCLIST
