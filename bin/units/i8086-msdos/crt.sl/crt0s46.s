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
	GLOBAL INIT$_$CRT
INIT$_$CRT:
	GLOBAL _CRT_$$_init$
_CRT_$$_init$:
		push	bp
		mov	bp,sp
		call	CRT_$$_DETECTKEYBOARD
		call	CRT_$$_GETSCREENWIDTH$$WORD
		mov	word [U_$CRT_$$_SCREENWIDTH],ax
		call	CRT_$$_GETSCREENHEIGHT$$WORD
		mov	word [U_$CRT_$$_SCREENHEIGHT],ax
		mov	ax,word [U_$CRT_$$_SCREENHEIGHT]
		mov	dx,0
		sub	ax,1
		sbb	dx,0
		mov	cx,8
..@j623:
		shl	ax,1
		rcl	dx,1
		loop	..@j623
		mov	cx,word [U_$CRT_$$_SCREENWIDTH]
		mov	bx,0
		sub	cx,1
		sbb	bx,0
		or	cx,ax
		or	bx,dx
		mov	word [TC_$CRT_$$_WINDMAX],cx
		mov	ax,word U_$CRT_$$_X
		push	ax
		mov	ax,word U_$CRT_$$_Y
		push	ax
		call	CRT_$$_GETSCREENCURSOR$SMALLINT$SMALLINT
		mov	ax,64
		mov	es,ax
		mov	al,byte [es:+73]
		mov	ah,0
		mov	word [TC_$CRT_$$_LASTMODE],ax
		cmp	word [U_$CRT_$$_SCREENHEIGHT],25
		ja	..@j630
		jmp	..@j631
..@j630:
		mov	ax,word [TC_$CRT_$$_LASTMODE]
		or	ax,256
		mov	word [TC_$CRT_$$_LASTMODE],ax
..@j631:
		call	CRT_$$_DETECTSNOW
		cmp	word [TC_$CRT_$$_LASTMODE],7
		jne	..@j634
		jmp	..@j635
..@j634:
		mov	word [U_$CRT_$$_VIDSEG],-18432
		jmp	..@j638
..@j635:
		mov	word [U_$CRT_$$_VIDSEG],-20480
..@j638:
		mov	dx,word [U_$CRT_$$_Y]
		dec	dx
		mov	ax,word [U_$CRT_$$_SCREENWIDTH]
		mul	dx
		mov	dx,word [U_$CRT_$$_X]
		dec	dx
		add	dx,ax
		shl	dx,1
		inc	dx
		mov	cx,0
		mov	bx,word [U_$CRT_$$_VIDSEG]
		mov	ax,0
		mov	ax,bx
		mov	bx,0
		add	bx,dx
		adc	ax,cx
		mov	es,ax
		mov	al,byte [es:bx]
		mov	byte [TC_$CRT_$$_TEXTATTR],al
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j645
		push	word [U_$SYSTEM_$$_OUTPUT+2]
		push	word [U_$SYSTEM_$$_OUTPUT]
		call	ax
		jmp	..@j646
..@j645:
		mov	ax,word U_$SYSTEM_$$_OUTPUT+2
..@j646:
		push	ax
		call	CRT_$$_ASSIGNCRT$TEXT
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j649
		push	word [U_$SYSTEM_$$_OUTPUT+2]
		push	word [U_$SYSTEM_$$_OUTPUT]
		call	ax
		jmp	..@j650
..@j649:
		mov	ax,word U_$SYSTEM_$$_OUTPUT+2
..@j650:
		push	ax
		call	SYSTEM_$$_REWRITE$TEXT
		call	FPC_IOCHECK
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j653
		push	word [U_$SYSTEM_$$_OUTPUT+2]
		push	word [U_$SYSTEM_$$_OUTPUT]
		call	ax
		mov	bx,ax
		jmp	..@j654
..@j653:
		mov	bx,word U_$SYSTEM_$$_OUTPUT+2
..@j654:
		mov	word [bx],1
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j657
		push	word [U_$SYSTEM_$$_INPUT+2]
		push	word [U_$SYSTEM_$$_INPUT]
		call	ax
		jmp	..@j658
..@j657:
		mov	ax,word U_$SYSTEM_$$_INPUT+2
..@j658:
		push	ax
		call	CRT_$$_ASSIGNCRT$TEXT
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j661
		push	word [U_$SYSTEM_$$_INPUT+2]
		push	word [U_$SYSTEM_$$_INPUT]
		call	ax
		jmp	..@j662
..@j661:
		mov	ax,word U_$SYSTEM_$$_INPUT+2
..@j662:
		push	ax
		call	SYSTEM_$$_RESET$TEXT
		call	FPC_IOCHECK
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j665
		push	word [U_$SYSTEM_$$_INPUT+2]
		push	word [U_$SYSTEM_$$_INPUT]
		call	ax
		mov	bx,ax
		jmp	..@j666
..@j665:
		mov	bx,word U_$SYSTEM_$$_INPUT+2
..@j666:
		mov	word [bx],0
		call	CRT_$$_INITDELAY
		mov	sp,bp
		pop	bp
		ret
; End asmlist al_procedures
; Begin asmlist al_globals
EXTERN	CRT_$$_INITDELAY
EXTERN	SYSTEM_$$_RESET$TEXT
EXTERN	U_$SYSTEM_$$_INPUT
EXTERN	FPC_IOCHECK
EXTERN	SYSTEM_$$_REWRITE$TEXT
EXTERN	CRT_$$_ASSIGNCRT$TEXT
EXTERN	U_$SYSTEM_$$_OUTPUT
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	TC_$CRT_$$_TEXTATTR
EXTERN	U_$CRT_$$_VIDSEG
EXTERN	CRT_$$_DETECTSNOW
EXTERN	TC_$CRT_$$_LASTMODE
EXTERN	CRT_$$_GETSCREENCURSOR$SMALLINT$SMALLINT
EXTERN	U_$CRT_$$_Y
EXTERN	U_$CRT_$$_X
EXTERN	TC_$CRT_$$_WINDMAX
EXTERN	U_$CRT_$$_SCREENHEIGHT
EXTERN	CRT_$$_GETSCREENHEIGHT$$WORD
EXTERN	U_$CRT_$$_SCREENWIDTH
EXTERN	CRT_$$_GETSCREENWIDTH$$WORD
EXTERN	CRT_$$_DETECTKEYBOARD
