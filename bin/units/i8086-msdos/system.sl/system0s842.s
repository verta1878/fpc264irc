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
	GLOBAL SYSTEM_$$_HANDLEERRORADDRFRAME$LONGINT$NEARPOINTER$POINTER
SYSTEM_$$_HANDLEERRORADDRFRAME$LONGINT$NEARPOINTER$POINTER:
	GLOBAL FPC_BREAK_ERROR
FPC_BREAK_ERROR:
		push	bp
		mov	bp,sp
		cmp	word [TC_$SYSTEM_$$_ERRORPROC],0
		jne	..@j17890
		jmp	..@j17891
..@j17890:
		push	word [bp+10]
		push	word [bp+8]
		push	word [bp+6]
		push	word [bp+4]
		mov	ax,word [TC_$SYSTEM_$$_ERRORPROC]
		call	ax
..@j17891:
		mov	ax,word [bp+8]
		mov	word [TC_$SYSTEM_$$_ERRORCODE],ax
		mov	ax,word [bp+6]
		mov	word [TC_$SYSTEM_$$_ERRORADDR],ax
		mov	ax,word [bp+4]
		mov	word [FPC_ERRORBASE],ax
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j17906
		push	word [U_$SYSTEM_$$_EXCEPTADDRSTACK+2]
		push	word [U_$SYSTEM_$$_EXCEPTADDRSTACK]
		call	ax
		mov	bx,ax
		jmp	..@j17907
..@j17906:
		mov	bx,word U_$SYSTEM_$$_EXCEPTADDRSTACK+2
..@j17907:
		cmp	word [bx],0
		jne	..@j17904
		jmp	..@j17905
..@j17904:
		mov	ax,0
		push	ax
		push	word [bp+6]
		push	word [bp+4]
		call	fpc_raiseexception
..@j17905:
		mov	ax,word [TC_$SYSTEM_$$_ERRORCODE]
		mov	dx,0
		push	dx
		push	ax
		call	SYSTEM_$$_HALT$LONGINT
		mov	sp,bp
		pop	bp
		ret	8
EXTERN	SYSTEM_$$_HALT$LONGINT
EXTERN	fpc_raiseexception
EXTERN	U_$SYSTEM_$$_EXCEPTADDRSTACK
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	FPC_ERRORBASE
EXTERN	TC_$SYSTEM_$$_ERRORADDR
EXTERN	TC_$SYSTEM_$$_ERRORCODE
EXTERN	TC_$SYSTEM_$$_ERRORPROC
