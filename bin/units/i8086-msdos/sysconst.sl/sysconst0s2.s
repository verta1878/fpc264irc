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
	GLOBAL SYSCONST_$$_GETRUNERROR$WORD$$ANSISTRING
SYSCONST_$$_GETRUNERROR$WORD$$ANSISTRING:
		push	bp
		mov	bp,sp
		sub	sp,274
		mov	word [bp-272],0
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
		jne	..@j5
		mov	ax,word [bp+4]
		test	ax,ax
		je	..@j9
		dec	ax
		je	..@j10
		dec	ax
		je	..@j11
		dec	ax
		je	..@j12
		dec	ax
		je	..@j13
		dec	ax
		je	..@j14
		dec	ax
		je	..@j15
		sub	ax,9
		je	..@j16
		sub	ax,85
		je	..@j17
		dec	ax
		je	..@j18
		dec	ax
		je	..@j19
		dec	ax
		je	..@j20
		dec	ax
		je	..@j21
		dec	ax
		je	..@j22
		dec	ax
		je	..@j23
		sub	ax,94
		je	..@j24
		dec	ax
		je	..@j25
		sub	ax,2
		je	..@j26
		dec	ax
		je	..@j27
		dec	ax
		je	..@j28
		dec	ax
		je	..@j29
		dec	ax
		je	..@j30
		sub	ax,4
		je	..@j31
		sub	ax,3
		je	..@j32
		dec	ax
		je	..@j33
		dec	ax
		je	..@j34
		dec	ax
		je	..@j35
		dec	ax
		je	..@j36
		dec	ax
		je	..@j37
		dec	ax
		je	..@j38
		dec	ax
		je	..@j39
		dec	ax
		je	..@j40
		dec	ax
		je	..@j41
		dec	ax
		je	..@j42
		dec	ax
		je	..@j43
		sub	ax,2
		je	..@j44
		dec	ax
		je	..@j45
		dec	ax
		je	..@j46
		dec	ax
		je	..@j47
		dec	ax
		je	..@j48
		dec	ax
		je	..@j49
		dec	ax
		je	..@j50
		sub	ax,22
		je	..@j51
		sub	ax,645
		je	..@j52
		jmp	..@j8
..@j9:
		mov	ax,word [bp+6]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SNOERROR+2]
		call	fpc_ansistr_assign
		jmp	..@j7
..@j10:
		mov	ax,word [bp+6]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SOUTOFMEMORY+2]
		call	fpc_ansistr_assign
		jmp	..@j7
..@j11:
		mov	ax,word [bp+6]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SFILENOTFOUND+2]
		call	fpc_ansistr_assign
		jmp	..@j7
..@j12:
		mov	ax,word [bp+6]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SINVALIDFILENAME+2]
		call	fpc_ansistr_assign
		jmp	..@j7
..@j13:
		mov	ax,word [bp+6]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_STOOMANYOPENFILES+2]
		call	fpc_ansistr_assign
		jmp	..@j7
..@j14:
		mov	ax,word [bp+6]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SACCESSDENIED+2]
		call	fpc_ansistr_assign
		jmp	..@j7
..@j15:
		mov	ax,word [bp+6]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SINVALIDFILEHANDLE+2]
		call	fpc_ansistr_assign
		jmp	..@j7
..@j16:
		mov	ax,word [bp+6]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SINVALIDDRIVE+2]
		call	fpc_ansistr_assign
		jmp	..@j7
..@j17:
		mov	ax,word [bp+6]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SENDOFFILE+2]
		call	fpc_ansistr_assign
		jmp	..@j7
..@j18:
		mov	ax,word [bp+6]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SDISKFULL+2]
		call	fpc_ansistr_assign
		jmp	..@j7
..@j19:
		mov	ax,word [bp+6]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SFILENOTASSIGNED+2]
		call	fpc_ansistr_assign
		jmp	..@j7
..@j20:
		mov	ax,word [bp+6]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SFILENOTOPEN+2]
		call	fpc_ansistr_assign
		jmp	..@j7
..@j21:
		mov	ax,word [bp+6]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SFILENOTOPENFORINPUT+2]
		call	fpc_ansistr_assign
		jmp	..@j7
..@j22:
		mov	ax,word [bp+6]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SFILENOTOPENFOROUTPUT+2]
		call	fpc_ansistr_assign
		jmp	..@j7
..@j23:
		mov	ax,word [bp+6]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SINVALIDINPUT+2]
		call	fpc_ansistr_assign
		jmp	..@j7
..@j24:
		mov	ax,word [bp+6]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SDIVBYZERO+2]
		call	fpc_ansistr_assign
		jmp	..@j7
..@j25:
		mov	ax,word [bp+6]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SRANGEERROR+2]
		call	fpc_ansistr_assign
		jmp	..@j7
..@j26:
		mov	ax,word [bp+6]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SOUTOFMEMORY+2]
		call	fpc_ansistr_assign
		jmp	..@j7
..@j27:
		mov	ax,word [bp+6]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SINVALIDPOINTER+2]
		call	fpc_ansistr_assign
		jmp	..@j7
..@j28:
		mov	ax,word [bp+6]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SOVERFLOW+2]
		call	fpc_ansistr_assign
		jmp	..@j7
..@j29:
		mov	ax,word [bp+6]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SUNDERFLOW+2]
		call	fpc_ansistr_assign
		jmp	..@j7
..@j30:
		mov	ax,word [bp+6]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SINVALIDOP+2]
		call	fpc_ansistr_assign
		jmp	..@j7
..@j31:
		mov	ax,word [bp+6]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SABSTRACTERROR+2]
		call	fpc_ansistr_assign
		jmp	..@j7
..@j32:
		mov	ax,word [bp+6]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SBUSERROR+2]
		call	fpc_ansistr_assign
		jmp	..@j7
..@j33:
		mov	ax,word [bp+6]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SINTOVERFLOW+2]
		call	fpc_ansistr_assign
		jmp	..@j7
..@j34:
		mov	ax,word [bp+6]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SACCESSVIOLATION+2]
		call	fpc_ansistr_assign
		jmp	..@j7
..@j35:
		mov	ax,word [bp+6]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SPRIVILEGE+2]
		call	fpc_ansistr_assign
		jmp	..@j7
..@j36:
		mov	ax,word [bp+6]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SCONTROLC+2]
		call	fpc_ansistr_assign
		jmp	..@j7
..@j37:
		mov	ax,word [bp+6]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SINVALIDCAST+2]
		call	fpc_ansistr_assign
		jmp	..@j7
..@j38:
		mov	ax,word [bp+6]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SINVALIDVARCAST+2]
		call	fpc_ansistr_assign
		jmp	..@j7
..@j39:
		mov	ax,word [bp+6]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SINVALIDVAROP+2]
		call	fpc_ansistr_assign
		jmp	..@j7
..@j40:
		mov	ax,word [bp+6]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SDISPATCHERROR+2]
		call	fpc_ansistr_assign
		jmp	..@j7
..@j41:
		mov	ax,word [bp+6]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SVARARRAYCREATE+2]
		call	fpc_ansistr_assign
		jmp	..@j7
..@j42:
		mov	ax,word [bp+6]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SVARNOTARRAY+2]
		call	fpc_ansistr_assign
		jmp	..@j7
..@j43:
		mov	ax,word [bp+6]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SVARARRAYBOUNDS+2]
		call	fpc_ansistr_assign
		jmp	..@j7
..@j44:
		mov	ax,word [bp+6]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SASSERTIONFAILED+2]
		call	fpc_ansistr_assign
		jmp	..@j7
..@j45:
		mov	ax,word [bp+6]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SEXTERNALEXCEPTION+2]
		call	fpc_ansistr_assign
		jmp	..@j7
..@j46:
		mov	ax,word [bp+6]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SINTFCASTERROR+2]
		call	fpc_ansistr_assign
		jmp	..@j7
..@j47:
		mov	ax,word [bp+6]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SSAFECALLEXCEPTION+2]
		call	fpc_ansistr_assign
		jmp	..@j7
..@j48:
		mov	ax,word [bp+6]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SEXCEPTIONSTACK+2]
		call	fpc_ansistr_assign
		jmp	..@j7
..@j49:
		mov	ax,word [bp+6]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SNOTHREADSUPPORT+2]
		call	fpc_ansistr_assign
		jmp	..@j7
..@j50:
		mov	ax,word [bp+6]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SMISSINGWSTRINGMANAGER+2]
		call	fpc_ansistr_assign
		jmp	..@j7
..@j51:
		mov	ax,word [bp+6]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SFALLBACKERROR+2]
		call	fpc_ansistr_assign
		jmp	..@j7
..@j52:
		mov	ax,word [bp+6]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SNOTOOLSERVER+2]
		call	fpc_ansistr_assign
		jmp	..@j7
..@j8:
..@j7:
		mov	bx,word [bp+6]
		mov	bx,word [bx]
		test	bx,bx
		je	..@j231
		mov	bx,word [bx-2]
..@j231:
		test	bx,bx
		je	..@j229
		jmp	..@j230
..@j229:
		mov	ax,word [bp+6]
		mov	word [bp-274],ax
		push	word [bp+4]
		mov	ax,3
		push	ax
		lea	ax,[bp-270]
		push	ax
		mov	ax,255
		push	ax
		call	fpc_shortstr_uint
		push	word [bp-274]
		lea	ax,[bp-272]
		push	ax
		lea	ax,[bp-270]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_shortstr_to_ansistr
		push	word [bp-272]
		call	fpc_ansistr_assign
		push	word [bp-274]
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
		mov	ax,word [bp+6]
		push	ax
		push	word [RESSTR_$SYSCONST_$$_SUNKNOWN+2]
		mov	bx,word [bp+6]
		push	word [bx]
		mov	ax,-1
		push	ax
		call	fpc_ansistr_concat
..@j230:
..@j5:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-272]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j6
		call	FPC_RERAISE
..@j6:
		mov	sp,bp
		pop	bp
		ret	4
; End asmlist al_procedures
; Begin asmlist al_const
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	fpc_ansistr_concat
EXTERN	RESSTR_$SYSCONST_$$_SUNKNOWN
EXTERN	SYSTEM_$$_SETCODEPAGE$RAWBYTESTRING$WORD$BOOLEAN
EXTERN	fpc_shortstr_to_ansistr
EXTERN	fpc_shortstr_uint
EXTERN	RESSTR_$SYSCONST_$$_SNOTOOLSERVER
EXTERN	RESSTR_$SYSCONST_$$_SFALLBACKERROR
EXTERN	RESSTR_$SYSCONST_$$_SMISSINGWSTRINGMANAGER
EXTERN	RESSTR_$SYSCONST_$$_SNOTHREADSUPPORT
EXTERN	RESSTR_$SYSCONST_$$_SEXCEPTIONSTACK
EXTERN	RESSTR_$SYSCONST_$$_SSAFECALLEXCEPTION
EXTERN	RESSTR_$SYSCONST_$$_SINTFCASTERROR
EXTERN	RESSTR_$SYSCONST_$$_SEXTERNALEXCEPTION
EXTERN	RESSTR_$SYSCONST_$$_SASSERTIONFAILED
EXTERN	RESSTR_$SYSCONST_$$_SVARARRAYBOUNDS
EXTERN	RESSTR_$SYSCONST_$$_SVARNOTARRAY
EXTERN	RESSTR_$SYSCONST_$$_SVARARRAYCREATE
EXTERN	RESSTR_$SYSCONST_$$_SDISPATCHERROR
EXTERN	RESSTR_$SYSCONST_$$_SINVALIDVAROP
EXTERN	RESSTR_$SYSCONST_$$_SINVALIDVARCAST
EXTERN	RESSTR_$SYSCONST_$$_SINVALIDCAST
EXTERN	RESSTR_$SYSCONST_$$_SCONTROLC
EXTERN	RESSTR_$SYSCONST_$$_SPRIVILEGE
EXTERN	RESSTR_$SYSCONST_$$_SACCESSVIOLATION
EXTERN	RESSTR_$SYSCONST_$$_SINTOVERFLOW
EXTERN	RESSTR_$SYSCONST_$$_SBUSERROR
EXTERN	RESSTR_$SYSCONST_$$_SABSTRACTERROR
EXTERN	RESSTR_$SYSCONST_$$_SINVALIDOP
EXTERN	RESSTR_$SYSCONST_$$_SUNDERFLOW
EXTERN	RESSTR_$SYSCONST_$$_SOVERFLOW
EXTERN	RESSTR_$SYSCONST_$$_SINVALIDPOINTER
EXTERN	RESSTR_$SYSCONST_$$_SRANGEERROR
EXTERN	RESSTR_$SYSCONST_$$_SDIVBYZERO
EXTERN	RESSTR_$SYSCONST_$$_SINVALIDINPUT
EXTERN	RESSTR_$SYSCONST_$$_SFILENOTOPENFOROUTPUT
EXTERN	RESSTR_$SYSCONST_$$_SFILENOTOPENFORINPUT
EXTERN	RESSTR_$SYSCONST_$$_SFILENOTOPEN
EXTERN	RESSTR_$SYSCONST_$$_SFILENOTASSIGNED
EXTERN	RESSTR_$SYSCONST_$$_SDISKFULL
EXTERN	RESSTR_$SYSCONST_$$_SENDOFFILE
EXTERN	RESSTR_$SYSCONST_$$_SINVALIDDRIVE
EXTERN	RESSTR_$SYSCONST_$$_SINVALIDFILEHANDLE
EXTERN	RESSTR_$SYSCONST_$$_SACCESSDENIED
EXTERN	RESSTR_$SYSCONST_$$_STOOMANYOPENFILES
EXTERN	RESSTR_$SYSCONST_$$_SINVALIDFILENAME
EXTERN	RESSTR_$SYSCONST_$$_SFILENOTFOUND
EXTERN	RESSTR_$SYSCONST_$$_SOUTOFMEMORY
EXTERN	fpc_ansistr_assign
EXTERN	RESSTR_$SYSCONST_$$_SNOERROR
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
