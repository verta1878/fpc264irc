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
	GLOBAL INIT$_$SYSTEM
INIT$_$SYSTEM:
	GLOBAL _SYSTEM_$$_init$
_SYSTEM_$$_init$:
		push	bp
		mov	bp,sp
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j26781
		push	word [U_$SYSTEM_$$_STACKBOTTOM+2]
		push	word [U_$SYSTEM_$$_STACKBOTTOM]
		call	ax
		mov	bx,ax
		jmp	..@j26782
..@j26781:
		mov	bx,word U_$SYSTEM_$$_STACKBOTTOM+2
..@j26782:
		mov	ax,word [__stkbottom]
		mov	word [bx],ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j26785
		push	word [U_$SYSTEM_$$_STACKLENGTH+2]
		push	word [U_$SYSTEM_$$_STACKLENGTH]
		call	ax
		mov	bx,ax
		jmp	..@j26786
..@j26785:
		mov	bx,word U_$SYSTEM_$$_STACKLENGTH+2
..@j26786:
		mov	ax,word [__stktop]
		mov	dx,word [__stkbottom]
		sub	ax,dx
		mov	word [bx],ax
		call	FPC_INSTALL_INTERRUPT_HANDLERS
		call	SYSTEM_$$_DETECTFPU
		cmp	byte [TC_$SYSTEM_$$_TEST8087],0
		ja	..@j26787
		jmp	..@j26788
..@j26787:
		call	SYSTEM_$$_SYSINITFPU
..@j26788:
		mov	byte [operatingsystem_isconsole],1
		mov	byte [operatingsystem_islibrary],0
		call	SYSTEM_$$_INITDOSHEAP
		call	SYSTEM_$$_SYSINITEXCEPTIONS
		call	SYSTEM_$$_INITUNICODESTRINGMANAGER
		call	SYSTEM_$$_SYSINITSTDIO
		call	SYSTEM_$$_CHECKLFN$$BOOLEAN
		mov	byte [U_$SYSTEM_$$_LFNSUPPORT],al
		cmp	byte [U_$SYSTEM_$$_LFNSUPPORT],0
		jne	..@j26795
		jmp	..@j26796
..@j26795:
		mov	byte [TC_$SYSTEM_$$_FILENAMECASEPRESERVING],1
		mov	word [U_$SYSTEM_$$_ALLFILESMASK],10753
		jmp	..@j26801
..@j26796:
		mov	ax,word U_$SYSTEM_$$_ALLFILESMASK
		push	ax
		mov	ax,3
		push	ax
		mov	ax,word _$SYSTEM$_Ld43
		push	ax
		call	fpc_shortstr_to_shortstr
..@j26801:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j26810
		push	word [U_$SYSTEM_$$_INOUTRES+2]
		push	word [U_$SYSTEM_$$_INOUTRES]
		call	ax
		mov	bx,ax
		jmp	..@j26811
..@j26810:
		mov	bx,word U_$SYSTEM_$$_INOUTRES+2
..@j26811:
		mov	word [bx],0
		mov	sp,bp
		pop	bp
		ret
; End asmlist al_procedures
; Begin asmlist al_globals
EXTERN	U_$SYSTEM_$$_INOUTRES
EXTERN	fpc_shortstr_to_shortstr
EXTERN	_$SYSTEM$_Ld43
EXTERN	U_$SYSTEM_$$_ALLFILESMASK
EXTERN	TC_$SYSTEM_$$_FILENAMECASEPRESERVING
EXTERN	U_$SYSTEM_$$_LFNSUPPORT
EXTERN	SYSTEM_$$_CHECKLFN$$BOOLEAN
EXTERN	SYSTEM_$$_SYSINITSTDIO
EXTERN	SYSTEM_$$_INITUNICODESTRINGMANAGER
EXTERN	SYSTEM_$$_SYSINITEXCEPTIONS
EXTERN	SYSTEM_$$_INITDOSHEAP
EXTERN	operatingsystem_islibrary
EXTERN	operatingsystem_isconsole
EXTERN	SYSTEM_$$_SYSINITFPU
EXTERN	TC_$SYSTEM_$$_TEST8087
EXTERN	SYSTEM_$$_DETECTFPU
EXTERN	FPC_INSTALL_INTERRUPT_HANDLERS
EXTERN	__stktop
EXTERN	U_$SYSTEM_$$_STACKLENGTH
EXTERN	__stkbottom
EXTERN	U_$SYSTEM_$$_STACKBOTTOM
EXTERN	FPC_THREADVAR_RELOCATE
