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
	GLOBAL SYSUTILS_$$_GENERICANSISTRCOMP$PCHAR$PCHAR$$SMALLINT
SYSUTILS_$$_GENERICANSISTRCOMP$PCHAR$PCHAR$$SMALLINT:
		push	bp
		mov	bp,sp
		sub	sp,2
		mov	word [bp-2],0
		cmp	word [bp+6],0
		je	..@j3040
		jmp	..@j3041
..@j3040:
		cmp	word [bp+4],0
		je	..@j3042
		jmp	..@j3043
..@j3042:
		jmp	..@j3036
..@j3043:
		mov	word [bp-2],-1
		jmp	..@j3036
..@j3041:
		cmp	word [bp+4],0
		je	..@j3046
		jmp	..@j3047
..@j3046:
		mov	word [bp-2],1
		jmp	..@j3036
..@j3047:
		jmp	..@j3051
	ALIGN 2
..@j3050:
		mov	bx,word [bp+6]
		mov	al,byte [bx]
		mov	ah,0
		mov	bx,word [bp+4]
		mov	dl,byte [bx]
		mov	dh,0
		sub	ax,dx
		mov	word [bp-2],ax
		inc	word [bp+6]
		inc	word [bp+4]
..@j3051:
		cmp	word [bp-2],0
		je	..@j3056
		jmp	..@j3052
..@j3056:
		mov	bx,word [bp+6]
		cmp	byte [bx],0
		jne	..@j3055
		jmp	..@j3052
..@j3055:
		mov	bx,word [bp+4]
		cmp	byte [bx],0
		jne	..@j3050
		jmp	..@j3052
..@j3052:
		cmp	word [bp-2],0
		je	..@j3059
		jmp	..@j3058
..@j3059:
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	al,byte [bx]
		cmp	al,byte [si]
		jne	..@j3057
		jmp	..@j3058
..@j3057:
		mov	bx,word [bp+6]
		cmp	byte [bx],0
		je	..@j3060
		jmp	..@j3061
..@j3060:
		mov	word [bp-2],-1
		jmp	..@j3064
..@j3061:
		mov	word [bp-2],1
..@j3064:
..@j3058:
..@j3036:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
