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
	GLOBAL SYSTEM_$$_ADDEXITPROC$TPROCEDURE
SYSTEM_$$_ADDEXITPROC$TPROCEDURE:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	ax,6
		push	ax
		call	fpc_getmem
		mov	word [bp-2],ax
		mov	bx,word [bp-2]
		mov	ax,word [TC_$SYSTEM_$$_EXITPROCLIST]
		mov	word [bx],ax
		mov	bx,word [bp-2]
		mov	ax,word [TC_$SYSTEM_$$_EXITPROC]
		mov	word [bx+2],ax
		mov	bx,word [bp-2]
		mov	ax,word [bp+4]
		mov	word [bx+4],ax
		mov	ax,word [bp-2]
		mov	word [TC_$SYSTEM_$$_EXITPROCLIST],ax
		mov	ax,word SYSTEM_$$_DOEXITPROC
		mov	word [TC_$SYSTEM_$$_EXITPROC],ax
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_DOEXITPROC
EXTERN	TC_$SYSTEM_$$_EXITPROC
EXTERN	TC_$SYSTEM_$$_EXITPROCLIST
EXTERN	fpc_getmem
