BITS 16
CPU 8086
SECTION .text use16 class=code
SECTION .rodata class=data
SECTION .data class=data
SECTION .fpc class=data
SECTION .bss class=bss
SECTION stack stack class=stack align=16
SECTION heap class=heap align=16
GROUP dgroup rodata data fpc bss stack heap
SECTION .text

SECTION .text
	ALIGN 2
	GLOBAL CLASSES$_$TLIST_$__$$_FPOATTACHOBSERVER$TOBJECT
CLASSES$_$TLIST_$__$$_FPOATTACHOBSERVER$TOBJECT:
		push	bp
		mov	bp,sp
		sub	sp,264
		push	word [bp+4]
		mov	ax,word _$CLASSES$_Ld16
		push	ax
		lea	ax,[bp-2]
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_GETINTERFACE$SHORTSTRING$formal$$BOOLEAN
		test	al,al
		je	..@j5899
		jmp	..@j5900
..@j5899:
..@j5907:
		mov	ax,word VMT_$CLASSES_$$_EOBSERVER
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SERRNOTOBSERVER+2]
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		push	ax
		lea	ax,[bp-264]
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING
		lea	ax,[bp-264]
		mov	word [bp-6],ax
		mov	word [bp-8],4
		lea	ax,[bp-8]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j5907
		push	ax
		push	bp
		call	fpc_raiseexception
..@j5900:
		mov	bx,word [bp+6]
		cmp	word [bx+4],0
		je	..@j5928
		jmp	..@j5929
..@j5928:
		mov	ax,word VMT_$CLASSES_$$_TFPLIST
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	bx,word [bp+6]
		mov	word [bx+4],ax
..@j5929:
		mov	bx,word [bp+6]
		push	word [bx+4]
		push	word [bp-2]
		call	CLASSES$_$TFPLIST_$__$$_ADD$POINTER$$SMALLINT
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	CLASSES$_$TFPLIST_$__$$_ADD$POINTER$$SMALLINT
EXTERN	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
EXTERN	VMT_$CLASSES_$$_TFPLIST
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING
EXTERN	RESSTR_$RTLCONSTS_$$_SERRNOTOBSERVER
EXTERN	VMT_$CLASSES_$$_EOBSERVER
EXTERN	SYSTEM$_$TOBJECT_$__$$_GETINTERFACE$SHORTSTRING$formal$$BOOLEAN
EXTERN	_$CLASSES$_Ld16
