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

EXTERN	FPC_INTR
EXTERN	RTTI_$SYSTEM_$$_SMALLINT
EXTERN	RTTI_$SYSTEM_$$_BOOLEAN
; Begin asmlist al_procedures

SECTION .text
	ALIGN 2
	GLOBAL UTEXTMOUSE_$$_TEXTMOUSEINIT$$BOOLEAN
UTEXTMOUSE_$$_TEXTMOUSEINIT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	word [bp-22],0
		mov	ax,51
		push	ax
		lea	ax,[bp-22]
		push	ax
		call	FPC_INTR
		cmp	word [bp-22],-1
		mov	al,0
		jne	..@j13
		inc	ax
..@j13:
		mov	byte [TC_$UTEXTMOUSE_$$_MOUSEACTIVE],al
		cmp	byte [TC_$UTEXTMOUSE_$$_MOUSEACTIVE],0
		jne	..@j14
		jmp	..@j15
..@j14:
		mov	word [bp-22],1
		mov	ax,51
		push	ax
		lea	ax,[bp-22]
		push	ax
		call	FPC_INTR
..@j15:
		mov	al,byte [TC_$UTEXTMOUSE_$$_MOUSEACTIVE]
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret

SECTION .text
	ALIGN 2
	GLOBAL UTEXTMOUSE_$$_TEXTMOUSEDONE
UTEXTMOUSE_$$_TEXTMOUSEDONE:
		push	bp
		mov	bp,sp
		sub	sp,20
		cmp	byte [TC_$UTEXTMOUSE_$$_MOUSEACTIVE],0
		jne	..@j26
		jmp	..@j27
..@j26:
		mov	word [bp-20],2
		mov	ax,51
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_INTR
		mov	byte [TC_$UTEXTMOUSE_$$_MOUSEACTIVE],0
..@j27:
		mov	sp,bp
		pop	bp
		ret

SECTION .text
	ALIGN 2
	GLOBAL UTEXTMOUSE_$$_TEXTMOUSEPOLL$TMOUSEEVENT$$BOOLEAN
UTEXTMOUSE_$$_TEXTMOUSEPOLL$TMOUSEEVENT$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,24
		mov	byte [bp-1],0
		mov	bx,word [bp+4]
		mov	word [bx],0
		mov	word [bx+2],0
		mov	bx,word [bp+4]
		mov	word [bx+4],5
		mov	word [bx+6],0
		mov	bx,word [bp+4]
		mov	byte [bx+12],0
		mov	bx,word [bp+4]
		mov	byte [bx+13],0
		mov	bx,word [bp+4]
		mov	byte [bx+14],0
		cmp	byte [TC_$UTEXTMOUSE_$$_MOUSEACTIVE],0
		je	..@j50
		jmp	..@j51
..@j50:
		jmp	..@j36
..@j51:
		mov	word [bp-22],3
		mov	ax,51
		push	ax
		lea	ax,[bp-22]
		push	ax
		call	FPC_INTR
		mov	ax,word [bp-18]
		mov	cl,3
		shr	ax,cl
		inc	ax
		mov	bx,word [bp+4]
		mov	word [bx+8],ax
		mov	ax,word [bp-16]
		mov	cl,3
		shr	ax,cl
		inc	ax
		mov	bx,word [bp+4]
		mov	word [bx+10],ax
		mov	ax,word [bp-20]
		mov	word [bp-24],ax
		mov	ax,word [bp-24]
		cmp	ax,word [TC_$UTEXTMOUSE_$$_LASTBUTTONS]
		jne	..@j64
		jmp	..@j65
..@j64:
		mov	ax,word [bp-24]
		and	ax,1
		test	ax,ax
		jne	..@j66
		jmp	..@j67
..@j66:
		mov	bx,word [bp+4]
		mov	word [bx],1
		mov	word [bx+2],0
		mov	bx,word [bp+4]
		mov	word [bx+4],0
		mov	word [bx+6],0
		jmp	..@j72
..@j67:
		mov	ax,word [bp-24]
		and	ax,2
		test	ax,ax
		jne	..@j73
		jmp	..@j74
..@j73:
		mov	bx,word [bp+4]
		mov	word [bx],1
		mov	word [bx+2],0
		mov	bx,word [bp+4]
		mov	word [bx+4],2
		mov	word [bx+6],0
		jmp	..@j79
..@j74:
		mov	ax,word [bp-24]
		and	ax,4
		test	ax,ax
		jne	..@j80
		jmp	..@j81
..@j80:
		mov	bx,word [bp+4]
		mov	word [bx],1
		mov	word [bx+2],0
		mov	bx,word [bp+4]
		mov	word [bx+4],1
		mov	word [bx+6],0
		jmp	..@j86
..@j81:
		mov	bx,word [bp+4]
		mov	word [bx],2
		mov	word [bx+2],0
		mov	bx,word [bp+4]
		mov	word [bx+4],5
		mov	word [bx+6],0
..@j86:
..@j79:
..@j72:
		mov	ax,word [bp-24]
		mov	word [TC_$UTEXTMOUSE_$$_LASTBUTTONS],ax
		mov	byte [bp-1],1
..@j65:
..@j36:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	2

SECTION .text
	ALIGN 2
	GLOBAL UTEXTMOUSE_$$_TEXTMOUSESUPPORTED$$BOOLEAN
UTEXTMOUSE_$$_TEXTMOUSESUPPORTED$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,22
		mov	word [bp-22],0
		mov	ax,51
		push	ax
		lea	ax,[bp-22]
		push	ax
		call	FPC_INTR
		cmp	word [bp-22],-1
		mov	al,0
		jne	..@j105
		inc	ax
..@j105:
		mov	byte [bp-1],al
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret

SECTION .text
	ALIGN 2
	GLOBAL UTEXTMOUSE_$$_TEXTMOUSESHOW
UTEXTMOUSE_$$_TEXTMOUSESHOW:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	word [bp-20],1
		mov	ax,51
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_INTR
		mov	sp,bp
		pop	bp
		ret

SECTION .text
	ALIGN 2
	GLOBAL UTEXTMOUSE_$$_TEXTMOUSEHIDE
UTEXTMOUSE_$$_TEXTMOUSEHIDE:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	word [bp-20],2
		mov	ax,51
		push	ax
		lea	ax,[bp-20]
		push	ax
		call	FPC_INTR
		mov	sp,bp
		pop	bp
		ret
; End asmlist al_procedures
; Begin asmlist al_typedconsts

SECTION .data
TC_$UTEXTMOUSE_$$_MOUSEACTIVE	DB	0

SECTION .data
	ALIGN 2
TC_$UTEXTMOUSE_$$_LASTBUTTONS	DW	0
; End asmlist al_typedconsts
; Begin asmlist al_rtti

SECTION .data
	ALIGN 2
	GLOBAL RTTI_$UTEXTMOUSE_$$_TMOUSEACTION
RTTI_$UTEXTMOUSE_$$_TMOUSEACTION	DB	3,12
		DB	"TMouseAction"
	DB	5
	DD	0,3
	DW	0
	DB	5
		DB	"mNone"
	DB	6
		DB	"mPress"
	DB	8
		DB	"mRelease"
	DB	5
		DB	"mMove"
	DB	10
		DB	"utextmouse"
	DB	0

SECTION .data
	ALIGN 2
	GLOBAL RTTI_$UTEXTMOUSE_$$_TMOUSEACTION_s2o
RTTI_$UTEXTMOUSE_$$_TMOUSEACTION_s2o	DD	4,3
	DW	RTTI_$UTEXTMOUSE_$$_TMOUSEACTION+47
	DD	0
	DW	RTTI_$UTEXTMOUSE_$$_TMOUSEACTION+25
	DD	1
	DW	RTTI_$UTEXTMOUSE_$$_TMOUSEACTION+31
	DD	2
	DW	RTTI_$UTEXTMOUSE_$$_TMOUSEACTION+38

SECTION .data
	ALIGN 2
	GLOBAL RTTI_$UTEXTMOUSE_$$_TMOUSEACTION_o2s
RTTI_$UTEXTMOUSE_$$_TMOUSEACTION_o2s	DD	0
	DW	RTTI_$UTEXTMOUSE_$$_TMOUSEACTION+25,RTTI_$UTEXTMOUSE_$$_TMOUSEACTION+31
	DW	RTTI_$UTEXTMOUSE_$$_TMOUSEACTION+38,RTTI_$UTEXTMOUSE_$$_TMOUSEACTION+47

SECTION .data
	ALIGN 2
	GLOBAL RTTI_$UTEXTMOUSE_$$_TMOUSEBUTTON
RTTI_$UTEXTMOUSE_$$_TMOUSEBUTTON	DB	3,12
		DB	"TMouseButton"
	DB	5
	DD	0,5
	DW	0
	DB	6
		DB	"mbLeft"
	DB	8
		DB	"mbMiddle"
	DB	7
		DB	"mbRight"
	DB	9
		DB	"mbWheelUp"
	DB	11
		DB	"mbWheelDown"
	DB	6
		DB	"mbNone"
	DB	10
		DB	"utextmouse"
	DB	0

SECTION .data
	ALIGN 2
	GLOBAL RTTI_$UTEXTMOUSE_$$_TMOUSEBUTTON_s2o
RTTI_$UTEXTMOUSE_$$_TMOUSEBUTTON_s2o	DD	6,0
	DW	RTTI_$UTEXTMOUSE_$$_TMOUSEBUTTON+25
	DD	1
	DW	RTTI_$UTEXTMOUSE_$$_TMOUSEBUTTON+32
	DD	5
	DW	RTTI_$UTEXTMOUSE_$$_TMOUSEBUTTON+71
	DD	2
	DW	RTTI_$UTEXTMOUSE_$$_TMOUSEBUTTON+41
	DD	4
	DW	RTTI_$UTEXTMOUSE_$$_TMOUSEBUTTON+59
	DD	3
	DW	RTTI_$UTEXTMOUSE_$$_TMOUSEBUTTON+49

SECTION .data
	ALIGN 2
	GLOBAL RTTI_$UTEXTMOUSE_$$_TMOUSEBUTTON_o2s
RTTI_$UTEXTMOUSE_$$_TMOUSEBUTTON_o2s	DD	0
	DW	RTTI_$UTEXTMOUSE_$$_TMOUSEBUTTON+25,RTTI_$UTEXTMOUSE_$$_TMOUSEBUTTON+32
	DW	RTTI_$UTEXTMOUSE_$$_TMOUSEBUTTON+41,RTTI_$UTEXTMOUSE_$$_TMOUSEBUTTON+49
	DW	RTTI_$UTEXTMOUSE_$$_TMOUSEBUTTON+59,RTTI_$UTEXTMOUSE_$$_TMOUSEBUTTON+71

SECTION .data
	ALIGN 2
	GLOBAL INIT_$UTEXTMOUSE_$$_TMOUSEEVENT
INIT_$UTEXTMOUSE_$$_TMOUSEEVENT	DB	13,11
		DB	"TMouseEvent"
	DD	15,0

SECTION .data
	ALIGN 2
	GLOBAL RTTI_$UTEXTMOUSE_$$_TMOUSEEVENT
RTTI_$UTEXTMOUSE_$$_TMOUSEEVENT	DB	13,11
		DB	"TMouseEvent"
	DD	15,7
	DW	RTTI_$UTEXTMOUSE_$$_TMOUSEACTION,0,RTTI_$UTEXTMOUSE_$$_TMOUSEBUTTON
	DW	4,RTTI_$SYSTEM_$$_SMALLINT,8,RTTI_$SYSTEM_$$_SMALLINT,10,RTTI_$SYSTEM_$$_BOOLEAN
	DW	12,RTTI_$SYSTEM_$$_BOOLEAN,13,RTTI_$SYSTEM_$$_BOOLEAN,14
; End asmlist al_rtti

