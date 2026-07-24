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
	GLOBAL CLASSES$_$TDATAMODULE_$__$$_CREATE$TCOMPONENT$$TDATAMODULE
CLASSES$_$TDATAMODULE_$__$$_CREATE$TCOMPONENT$$TDATAMODULE:
		push	bp
		mov	bp,sp
		sub	sp,276
		cmp	word [bp+6],1
		je	..@j13292
		jmp	..@j13293
..@j13292:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	ax,word [bx+26]
		call	ax
		mov	word [bp+8],ax
..@j13293:
		cmp	word [bp+8],0
		je	..@j13298
		jmp	..@j13299
..@j13298:
		jmp	..@j13290
..@j13299:
		mov	ax,1
		push	ax
		lea	ax,[bp-12]
		push	ax
		lea	ax,[bp-6]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j13302
		push	word [bp+8]
		mov	ax,0
		push	ax
		push	word [bp+4]
		call	CLASSES$_$TDATAMODULE_$__$$_CREATENEW$TCOMPONENT$$TDATAMODULE
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		mov	dx,word VMT_$CLASSES_$$_TDATAMODULE
		cmp	ax,dx
		jne	..@j13315
		jmp	..@j13314
..@j13315:
		mov	bx,word [bp+8]
		test	word [bx+22],16
		je	..@j13313
		jmp	..@j13314
..@j13313:
		push	word [bp+8]
		mov	ax,word VMT_$CLASSES_$$_TDATAMODULE
		push	ax
		call	CLASSES_$$_INITINHERITEDCOMPONENT$TCOMPONENT$TCLASS$$BOOLEAN
		test	al,al
		je	..@j13318
		jmp	..@j13319
..@j13318:
..@j13324:
		mov	ax,word VMT_$CLASSES_$$_ESTREAMERROR
		push	ax
		mov	ax,1
		push	ax
		push	word [RESSTR_$RTLCONSTS_$$_SERRNOSTREAMING+2]
		mov	bx,word [bp+8]
		mov	ax,word [bx]
		push	ax
		lea	ax,[bp-276]
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING
		lea	ax,[bp-276]
		mov	word [bp-18],ax
		mov	word [bp-20],4
		lea	ax,[bp-20]
		push	ax
		mov	ax,0
		push	ax
		call	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
		push	ax
		mov	ax,word ..@j13324
		push	ax
		push	bp
		call	fpc_raiseexception
..@j13319:
		mov	bx,word [bp+8]
		cmp	byte [bx+54],0
		jne	..@j13345
		jmp	..@j13346
..@j13345:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+108]
		call	ax
..@j13346:
..@j13314:
		cmp	word [bp+8],0
		jne	..@j13351
		jmp	..@j13350
..@j13351:
		cmp	word [bp+6],0
		jne	..@j13349
		jmp	..@j13350
..@j13349:
		push	word [bp+8]
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+34]
		call	ax
..@j13350:
..@j13302:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j13304
		mov	ax,1
		push	ax
		lea	ax,[bp-26]
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j13354
		cmp	word [bp+6],0
		jne	..@j13355
		jmp	..@j13356
..@j13355:
		push	word [bp+8]
		mov	ax,-1
		push	ax
		mov	bx,word [bp+8]
		mov	bx,word [bx]
		mov	ax,word [bx+24]
		call	ax
..@j13356:
		call	fpc_popaddrstack
		call	fpc_reraise
..@j13354:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j13361
		call	FPC_RAISE_NESTED
..@j13361:
		call	FPC_DONEEXCEPTION
		jmp	..@j13304
..@j13304:
..@j13290:
		mov	ax,word [bp+8]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	fpc_reraise
EXTERN	fpc_popaddrstack
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_raiseexception
EXTERN	SYSUTILS$_$EXCEPTION_$__$$_CREATEFMT$ANSISTRING$array_of_const$$EXCEPTION
EXTERN	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$SHORTSTRING
EXTERN	RESSTR_$RTLCONSTS_$$_SERRNOSTREAMING
EXTERN	VMT_$CLASSES_$$_ESTREAMERROR
EXTERN	CLASSES_$$_INITINHERITEDCOMPONENT$TCOMPONENT$TCLASS$$BOOLEAN
EXTERN	VMT_$CLASSES_$$_TDATAMODULE
EXTERN	CLASSES$_$TDATAMODULE_$__$$_CREATENEW$TCOMPONENT$$TDATAMODULE
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
