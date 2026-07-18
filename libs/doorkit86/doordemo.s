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

EXTERN	DOORKIT86_$$_DOORINIT$SHORTSTRING$$BOOLEAN
EXTERN	fpc_get_output
EXTERN	fpc_write_text_shortstr
EXTERN	FPC_IOCHECK
EXTERN	fpc_writeln_end
EXTERN	SYSTEM_$$_HALT$LONGINT
EXTERN	DOORKIT86_$$_DOORANSICLRSCR
EXTERN	DOORKIT86_$$_DOORANSICOLOR$BYTE$BYTE
EXTERN	DOORKIT86_$$_DOORWRITELN$SHORTSTRING
EXTERN	U_$DOORKIT86_$$_DOORUSERNAME
EXTERN	fpc_shortstr_concat_multi
EXTERN	DOS_$$_GETDATE$WORD$WORD$WORD$WORD
EXTERN	DOORKIT86_$$_INTTOSTR$LONGINT$$SHORTSTRING
EXTERN	DOS_$$_DOSVERSION$$WORD
EXTERN	U_$DOORKIT86_$$_DOORLOCALMODE
EXTERN	U_$DOORKIT86_$$_DOORCOMPORT
EXTERN	fpc_shortstr_concat
EXTERN	DOORKIT86_$$_DOORWRITE$SHORTSTRING
EXTERN	U_$DOORKIT86_$$_DOORFOSSIL
EXTERN	DOORKIT86_$$_DOORREADKEY$$CHAR
EXTERN	DOS_$$_GETTIME$WORD$WORD$WORD$WORD
EXTERN	DOORKIT86_$$_DOORCLOSE
EXTERN	FPC_INITIALIZEUNITS
EXTERN	FPC_DO_EXIT
EXTERN	INIT$_$SYSTEM
EXTERN	THREADVARLIST_$SYSTEM
EXTERN	THREADVARLIST_$DOS
; Begin asmlist al_procedures

SECTION text
	ALIGN 2
	GLOBAL PASCALMAIN
PASCALMAIN:
	GLOBAL _main
_main:
		push	bp
		mov	bp,sp
		sub	sp,1044
		call	FPC_INITIALIZEUNITS
		mov	ax,word _$DOORDEMO$_Ld1
		push	ax
		call	DOORKIT86_$$_DOORINIT$SHORTSTRING$$BOOLEAN
		test	al,al
		je	..@j3
		jmp	..@j4
..@j3:
		call	fpc_get_output
		mov	word [bp-1044],ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-1044]
		mov	ax,word _$DOORDEMO$_Ld2
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		push	word [bp-1044]
		call	fpc_writeln_end
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_HALT$LONGINT
..@j4:
		call	DOORKIT86_$$_DOORANSICLRSCR
		mov	ax,14
		push	ax
		mov	ax,0
		push	ax
		call	DOORKIT86_$$_DOORANSICOLOR$BYTE$BYTE
		mov	ax,word _$DOORDEMO$_Ld3
		push	ax
		call	DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		mov	ax,word _$DOORDEMO$_Ld4
		push	ax
		call	DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		mov	ax,word _$DOORDEMO$_Ld5
		push	ax
		call	DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		mov	ax,word _$DOORDEMO$_Ld3
		push	ax
		call	DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		mov	ax,7
		push	ax
		mov	ax,0
		push	ax
		call	DOORKIT86_$$_DOORANSICOLOR$BYTE$BYTE
		mov	ax,word _$DOORDEMO$_Ld6
		push	ax
		call	DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word _$DOORDEMO$_Ld7
		mov	word [bp-262],ax
		mov	ax,word U_$DOORKIT86_$$_DOORUSERNAME
		mov	word [bp-260],ax
		mov	ax,word _$DOORDEMO$_Ld8
		mov	word [bp-258],ax
		lea	ax,[bp-262]
		push	ax
		mov	ax,2
		push	ax
		call	fpc_shortstr_concat_multi
		lea	ax,[bp-256]
		push	ax
		call	DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		mov	ax,word U_$P$DOORDEMO_$$_Y
		push	ax
		mov	ax,word U_$P$DOORDEMO_$$_M
		push	ax
		mov	ax,word U_$P$DOORDEMO_$$_D
		push	ax
		mov	ax,word U_$P$DOORDEMO_$$_DOW
		push	ax
		call	DOS_$$_GETDATE$WORD$WORD$WORD$WORD
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word _$DOORDEMO$_Ld9
		mov	word [bp-274],ax
		lea	ax,[bp-530]
		push	ax
		mov	ax,word [U_$P$DOORDEMO_$$_Y]
		mov	dx,0
		push	dx
		push	ax
		call	DOORKIT86_$$_INTTOSTR$LONGINT$$SHORTSTRING
		lea	ax,[bp-530]
		mov	word [bp-272],ax
		mov	ax,word _$DOORDEMO$_Ld10
		mov	word [bp-270],ax
		lea	ax,[bp-786]
		push	ax
		mov	ax,word [U_$P$DOORDEMO_$$_M]
		mov	dx,0
		push	dx
		push	ax
		call	DOORKIT86_$$_INTTOSTR$LONGINT$$SHORTSTRING
		lea	ax,[bp-786]
		mov	word [bp-268],ax
		mov	ax,word _$DOORDEMO$_Ld10
		mov	word [bp-266],ax
		lea	ax,[bp-1042]
		push	ax
		mov	ax,word [U_$P$DOORDEMO_$$_D]
		mov	dx,0
		push	dx
		push	ax
		call	DOORKIT86_$$_INTTOSTR$LONGINT$$SHORTSTRING
		lea	ax,[bp-1042]
		mov	word [bp-264],ax
		lea	ax,[bp-274]
		push	ax
		mov	ax,5
		push	ax
		call	fpc_shortstr_concat_multi
		lea	ax,[bp-256]
		push	ax
		call	DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word _$DOORDEMO$_Ld11
		mov	word [bp-264],ax
		lea	ax,[bp-520]
		push	ax
		call	DOS_$$_DOSVERSION$$WORD
		mov	dx,0
		mov	ah,0
		push	dx
		push	ax
		call	DOORKIT86_$$_INTTOSTR$LONGINT$$SHORTSTRING
		lea	ax,[bp-520]
		mov	word [bp-262],ax
		mov	ax,word _$DOORDEMO$_Ld12
		mov	word [bp-260],ax
		lea	ax,[bp-776]
		push	ax
		call	DOS_$$_DOSVERSION$$WORD
		mov	cl,8
		shr	ax,cl
		mov	dx,0
		mov	ah,0
		push	dx
		push	ax
		call	DOORKIT86_$$_INTTOSTR$LONGINT$$SHORTSTRING
		lea	ax,[bp-776]
		mov	word [bp-258],ax
		lea	ax,[bp-264]
		push	ax
		mov	ax,3
		push	ax
		call	fpc_shortstr_concat_multi
		lea	ax,[bp-256]
		push	ax
		call	DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		cmp	byte [U_$DOORKIT86_$$_DOORLOCALMODE],0
		jne	..@j95
		jmp	..@j96
..@j95:
		mov	ax,word _$DOORDEMO$_Ld13
		push	ax
		call	DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		jmp	..@j99
..@j96:
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word _$DOORDEMO$_Ld14
		push	ax
		lea	ax,[bp-512]
		push	ax
		mov	ax,word [U_$DOORKIT86_$$_DOORCOMPORT]
		inc	ax
		mov	dx,0
		push	dx
		push	ax
		call	DOORKIT86_$$_INTTOSTR$LONGINT$$SHORTSTRING
		lea	ax,[bp-512]
		push	ax
		call	fpc_shortstr_concat
		lea	ax,[bp-256]
		push	ax
		call	DOORKIT86_$$_DOORWRITE$SHORTSTRING
		cmp	byte [U_$DOORKIT86_$$_DOORFOSSIL],0
		jne	..@j114
		jmp	..@j115
..@j114:
		mov	ax,word _$DOORDEMO$_Ld15
		push	ax
		call	DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		jmp	..@j118
..@j115:
		mov	ax,word _$DOORDEMO$_Ld16
		push	ax
		call	DOORKIT86_$$_DOORWRITELN$SHORTSTRING
..@j118:
..@j99:
		mov	ax,word _$DOORDEMO$_Ld6
		push	ax
		call	DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		mov	word [U_$P$DOORDEMO_$$_SCORE],0
		mov	byte [U_$P$DOORDEMO_$$_PLAYING],1
		jmp	..@j128
	ALIGN 2
..@j127:
		mov	ax,3
		push	ax
		mov	ax,0
		push	ax
		call	DOORKIT86_$$_DOORANSICOLOR$BYTE$BYTE
		mov	ax,word _$DOORDEMO$_Ld17
		push	ax
		call	DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		mov	ax,7
		push	ax
		mov	ax,0
		push	ax
		call	DOORKIT86_$$_DOORANSICOLOR$BYTE$BYTE
		mov	ax,word _$DOORDEMO$_Ld18
		push	ax
		call	DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		mov	ax,word _$DOORDEMO$_Ld19
		push	ax
		call	DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		mov	ax,word _$DOORDEMO$_Ld20
		push	ax
		call	DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		mov	ax,word _$DOORDEMO$_Ld21
		push	ax
		call	DOORKIT86_$$_DOORWRITE$SHORTSTRING
		call	DOORKIT86_$$_DOORREADKEY$$CHAR
		mov	byte [U_$P$DOORDEMO_$$_CHOICE],al
		mov	dl,byte [U_$P$DOORDEMO_$$_CHOICE]
		mov	dh,0
		mov	cl,8
		shl	dx,cl
		mov	ax,0
		or	dx,1
		mov	word [bp-256],dx
		lea	ax,[bp-256]
		push	ax
		call	DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		mov	al,byte [U_$P$DOORDEMO_$$_CHOICE]
		cmp	al,71
		jb	..@j153
		sub	al,71
		je	..@j154
		sub	al,10
		je	..@j156
		sub	al,2
		je	..@j155
		sub	al,20
		je	..@j154
		sub	al,10
		je	..@j156
		sub	al,2
		je	..@j155
		jmp	..@j153
..@j154:
		mov	ax,word U_$P$DOORDEMO_$$_Y
		push	ax
		mov	ax,word U_$P$DOORDEMO_$$_M
		push	ax
		mov	ax,word U_$P$DOORDEMO_$$_D
		push	ax
		mov	ax,word U_$P$DOORDEMO_$$_DOW
		push	ax
		call	DOS_$$_GETTIME$WORD$WORD$WORD$WORD
		mov	ax,word [U_$P$DOORDEMO_$$_D]
		xor	dx,dx
		mov	cx,10
		div	cx
		inc	dx
		mov	word [U_$P$DOORDEMO_$$_TARGET],dx
		mov	ax,word _$DOORDEMO$_Ld22
		push	ax
		call	DOORKIT86_$$_DOORWRITE$SHORTSTRING
		call	DOORKIT86_$$_DOORREADKEY$$CHAR
		mov	ah,0
		sub	ax,48
		mov	word [U_$P$DOORDEMO_$$_GUESS],ax
		lea	ax,[bp-256]
		push	ax
		mov	ax,word [U_$P$DOORDEMO_$$_GUESS]
		cwd
		push	dx
		push	ax
		call	DOORKIT86_$$_INTTOSTR$LONGINT$$SHORTSTRING
		lea	ax,[bp-256]
		push	ax
		call	DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		mov	ax,word [U_$P$DOORDEMO_$$_GUESS]
		cmp	ax,word [U_$P$DOORDEMO_$$_TARGET]
		je	..@j177
		jmp	..@j178
..@j177:
		mov	ax,10
		push	ax
		mov	ax,0
		push	ax
		call	DOORKIT86_$$_DOORANSICOLOR$BYTE$BYTE
		mov	ax,word _$DOORDEMO$_Ld23
		push	ax
		call	DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		add	word [U_$P$DOORDEMO_$$_SCORE],10
		jmp	..@j185
..@j178:
		mov	ax,12
		push	ax
		mov	ax,0
		push	ax
		call	DOORKIT86_$$_DOORANSICOLOR$BYTE$BYTE
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word _$DOORDEMO$_Ld24
		push	ax
		lea	ax,[bp-512]
		push	ax
		mov	ax,word [U_$P$DOORDEMO_$$_TARGET]
		cwd
		push	dx
		push	ax
		call	DOORKIT86_$$_INTTOSTR$LONGINT$$SHORTSTRING
		lea	ax,[bp-512]
		push	ax
		call	fpc_shortstr_concat
		lea	ax,[bp-256]
		push	ax
		call	DOORKIT86_$$_DOORWRITELN$SHORTSTRING
..@j185:
		mov	ax,7
		push	ax
		mov	ax,0
		push	ax
		call	DOORKIT86_$$_DOORANSICOLOR$BYTE$BYTE
		jmp	..@j152
..@j155:
		mov	ax,15
		push	ax
		mov	ax,1
		push	ax
		call	DOORKIT86_$$_DOORANSICOLOR$BYTE$BYTE
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word _$DOORDEMO$_Ld25
		mov	word [bp-262],ax
		lea	ax,[bp-518]
		push	ax
		mov	ax,word [U_$P$DOORDEMO_$$_SCORE]
		cwd
		push	dx
		push	ax
		call	DOORKIT86_$$_INTTOSTR$LONGINT$$SHORTSTRING
		lea	ax,[bp-518]
		mov	word [bp-260],ax
		mov	ax,word _$DOORDEMO$_Ld26
		mov	word [bp-258],ax
		lea	ax,[bp-262]
		push	ax
		mov	ax,2
		push	ax
		call	fpc_shortstr_concat_multi
		lea	ax,[bp-256]
		push	ax
		call	DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		mov	ax,7
		push	ax
		mov	ax,0
		push	ax
		call	DOORKIT86_$$_DOORANSICOLOR$BYTE$BYTE
		jmp	..@j152
..@j156:
		mov	byte [U_$P$DOORDEMO_$$_PLAYING],0
		jmp	..@j152
..@j153:
..@j152:
..@j128:
		cmp	byte [U_$P$DOORDEMO_$$_PLAYING],0
		jne	..@j127
		jmp	..@j129
..@j129:
		mov	ax,word _$DOORDEMO$_Ld6
		push	ax
		call	DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		mov	ax,14
		push	ax
		mov	ax,0
		push	ax
		call	DOORKIT86_$$_DOORANSICOLOR$BYTE$BYTE
		lea	ax,[bp-256]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word _$DOORDEMO$_Ld27
		push	ax
		lea	ax,[bp-512]
		push	ax
		mov	ax,word [U_$P$DOORDEMO_$$_SCORE]
		cwd
		push	dx
		push	ax
		call	DOORKIT86_$$_INTTOSTR$LONGINT$$SHORTSTRING
		lea	ax,[bp-512]
		push	ax
		call	fpc_shortstr_concat
		lea	ax,[bp-256]
		push	ax
		call	DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		mov	ax,word _$DOORDEMO$_Ld28
		push	ax
		call	DOORKIT86_$$_DOORWRITELN$SHORTSTRING
		mov	ax,7
		push	ax
		mov	ax,0
		push	ax
		call	DOORKIT86_$$_DOORANSICOLOR$BYTE$BYTE
		call	DOORKIT86_$$_DOORCLOSE
		call	FPC_DO_EXIT
		mov	sp,bp
		pop	bp
		ret
; End asmlist al_procedures
; Begin asmlist al_globals

SECTION bss
U_$P$DOORDEMO_$$_CHOICE:	RESB	1

SECTION bss
	ALIGNB 2
U_$P$DOORDEMO_$$_SCORE:	RESB	2

SECTION bss
U_$P$DOORDEMO_$$_PLAYING:	RESB	1

SECTION bss
	ALIGNB 2
U_$P$DOORDEMO_$$_GUESS:	RESB	2

SECTION bss
	ALIGNB 2
U_$P$DOORDEMO_$$_TARGET:	RESB	2

SECTION bss
	ALIGNB 2
U_$P$DOORDEMO_$$_Y:	RESB	2

SECTION bss
	ALIGNB 2
U_$P$DOORDEMO_$$_M:	RESB	2

SECTION bss
	ALIGNB 2
U_$P$DOORDEMO_$$_D:	RESB	2

SECTION bss
	ALIGNB 2
U_$P$DOORDEMO_$$_DOW:	RESB	2

SECTION data
	ALIGN 2
	GLOBAL INITFINAL
INITFINAL	DW	1,0,INIT$_$SYSTEM,0

SECTION data
	ALIGN 2
	GLOBAL FPC_THREADVARTABLES
FPC_THREADVARTABLES	DD	2
	DW	THREADVARLIST_$SYSTEM,THREADVARLIST_$DOS

SECTION data
	ALIGN 2
	GLOBAL FPC_RESOURCESTRINGTABLES
FPC_RESOURCESTRINGTABLES	DW	0

SECTION data
	ALIGN 2
	GLOBAL FPC_WIDEINITTABLES
FPC_WIDEINITTABLES	DW	0

SECTION data
	ALIGN 2
	GLOBAL FPC_RESSTRINITTABLES
FPC_RESSTRINITTABLES	DW	0

SECTION fpc
	ALIGN 2
		DB	"FPC 3.0.4 [2026/07/17] for i8086 - MSDOS"

SECTION data
	ALIGN 2
	GLOBAL __stklen
__stklen	DW	4096

SECTION data
	ALIGN 2
	GLOBAL __heapsize
__heapsize	DW	0

SECTION data
	GLOBAL __fpc_valgrind
__fpc_valgrind	DB	0

SECTION .stack
	ALIGN 16
	GLOBAL ___stack
___stack:
___stackblock0:	RESB	4096
	GLOBAL ___stacktop
___stacktop:

SECTION .heap
	ALIGN 16
	GLOBAL ___heap
___heap:
	GLOBAL ___heaptop
___heaptop:

SECTION data
	ALIGN 2
	GLOBAL __fpc_stackplusmaxheap_in_para
__fpc_stackplusmaxheap_in_para	DW	4096
; End asmlist al_globals
; Begin asmlist al_typedconsts

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld1:
		DB	8,"DOOR.SYS",0

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld2:
		DB	34,"ERROR: Door initialization failed.",0

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld3:
		DB	"'=======================================",0

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld4:
		DB	"#   DOORKIT86 DEMO - Number Guessing",0

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld5:
		DB	"    Built with FPC 2.6.4irc i8086",0

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld6:
		DB	0,0

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld7:
		DB	9,"Welcome, ",0

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld8:
		DB	1,"!",0

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld9:
		DB	6,"Date: ",0

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld10:
		DB	1,"-",0

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld11:
		DB	4,"DOS ",0

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld12:
		DB	1,".",0

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld13:
		DB	11,"Mode: LOCAL",0

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld14:
		DB	16,"Mode: REMOTE COM",0

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld15:
		DB	9," (FOSSIL)",0

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld16:
		DB	12," (no FOSSIL)",0

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld17:
		DB	12,"--- MENU ---",0

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld18:
		DB	25,"[G] Guess a number (1-10)",0

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld19:
		DB	14,"[S] Show score",0

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld20:
		DB	8,"[Q] Quit",0

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld21:
		DB	2,"> ",0

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld22:
		DB	12,"Guess 1-10: ",0

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld23:
		DB	19,"CORRECT! +10 points",0

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld24:
		DB	14,"Wrong! It was ",0

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld25:
		DB	8," Score: ",0

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld26:
		DB	1," ",0

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld27:
		DB	13,"Final score: ",0

SECTION rodata
	ALIGN 2
_$DOORDEMO$_Ld28:
		DB	"'Thanks for playing! Returning to BBS...",0
; End asmlist al_typedconsts

