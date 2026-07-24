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
	GLOBAL SYSTEM$_$TOBJECT_$__$$_GETINTERFACEWEAK$TGUID$formal$$BOOLEAN
SYSTEM$_$TOBJECT_$__$$_GETINTERFACEWEAK$TGUID$formal$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	ax,word TC_$SYSTEM_$$_IOBJECTINSTANCE
		push	ax
		mov	ax,word [bp+6]
		push	ax
		call	SYSTEM_$$_ISGUIDEQUAL$TGUID$TGUID$$BOOLEAN
		test	al,al
		jne	..@j15087
		jmp	..@j15088
..@j15087:
		mov	bx,word [bp+4]
		mov	ax,word [bp+8]
		mov	word [bx],ax
		mov	byte [bp-1],1
		jmp	..@j15085
..@j15088:
		mov	ax,word [bp+8]
		mov	word [bp-6],ax
	ALIGN 2
..@j15099:
		mov	bx,word [bp-6]
		mov	ax,word [bx]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_GETINTERFACEENTRY$TGUID$$PINTERFACEENTRY
		mov	word [bp-4],ax
		push	word [bp-6]
		push	word [bp-4]
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM_$$_GETINTERFACEBYENTRY$POINTER$PINTERFACEENTRY$formal$$BOOLEAN
		mov	byte [bp-1],al
		cmp	byte [bp-1],0
		je	..@j15116
		jmp	..@j15118
..@j15118:
		mov	bx,word [bp-4]
		mov	ax,word [bx+8]
		cmp	ax,4
		jb	..@j15119
..@j15119:
		jc	..@j15116
		jmp	..@j15117
..@j15116:
		jmp	..@j15101
..@j15117:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	word [bp-6],ax
		jmp	..@j15099
..@j15101:
		cmp	byte [bp-1],0
		jne	..@j15124
		jmp	..@j15123
..@j15124:
		mov	bx,word [bp-4]
		mov	ax,word [bx+8]
		cmp	ax,0
		je	..@j15125
		cmp	ax,3
		je	..@j15125
..@j15125:
		jne	..@j15122
		jmp	..@j15123
..@j15122:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	bx,word [bx]
		call	[bx+4]
		pop	word [bp-8]
..@j15123:
..@j15085:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_GETINTERFACEBYENTRY$POINTER$PINTERFACEENTRY$formal$$BOOLEAN
EXTERN	SYSTEM$_$TOBJECT_$__$$_GETINTERFACEENTRY$TGUID$$PINTERFACEENTRY
EXTERN	SYSTEM_$$_ISGUIDEQUAL$TGUID$TGUID$$BOOLEAN
EXTERN	TC_$SYSTEM_$$_IOBJECTINSTANCE
