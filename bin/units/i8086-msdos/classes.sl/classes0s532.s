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
	GLOBAL CLASSES$_$TCOMPONENT_$__$$_GETCOMOBJECT$$IUNKNOWN
CLASSES$_$TCOMPONENT_$__$$_GETCOMOBJECT$$IUNKNOWN:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	bx,word [bp+6]
		cmp	word [bx+20],0
		je	..@j11984
		jmp	..@j11985
..@j11984:
		cmp	word [TC_$CLASSES_$$_CREATEVCLCOMOBJECTPROC],0
		jne	..@j11986
		jmp	..@j11987
..@j11986:
		push	word [bp+6]
		mov	ax,word [TC_$CLASSES_$$_CREATEVCLCOMOBJECTPROC]
		call	ax
..@j11987:
		mov	bx,word [bp+6]
		cmp	word [bx+20],0
		je	..@j11990
		jmp	..@j11991
..@j11990:
..@j11992:
		mov	ax,word VMT_$CLASSES_$$_ECOMPONENTERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SNOCOMSUPPORT+2]
		mov	bx,word [bp+6]
		mov	dx,word [bx+8]
		mov	ax,0
		mov	word [bp-4],dx
		mov	word [bp-2],ax
		mov	word [bp-6],11
		lea	ax,[bp-6]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j11992
		push	ax
		push	bp
		call	fpc_raiseexception
..@j11991:
..@j11985:
		mov	ax,word [bp+4]
		mov	word [bp-8],ax
		push	word [bp-8]
		call	fpc_intf_decr_ref
		push	word [bp-8]
		mov	ax,word _$CLASSES$_Ld24
		push	ax
		mov	bx,word [bp+6]
		push	word [bx+20]
		mov	bx,word [bp+6]
		mov	bx,word [bx+20]
		mov	bx,word [bx]
		call	[bx]
		add	sp,6
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	_$CLASSES$_Ld24
EXTERN	fpc_intf_decr_ref
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	RESSTR_$RTLCONSTS_$$_SNOCOMSUPPORT
EXTERN	VMT_$CLASSES_$$_ECOMPONENTERROR
EXTERN	TC_$CLASSES_$$_CREATEVCLCOMOBJECTPROC
