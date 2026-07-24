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
	GLOBAL SYSTEM$_$TOBJECT_$__$$_GETINTERFACE$TGUID$formal$$BOOLEAN
SYSTEM$_$TOBJECT_$__$$_GETINTERFACE$TGUID$formal$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	ax,word TC_$SYSTEM_$$_IOBJECTINSTANCE
		push	ax
		mov	ax,word [bp+6]
		push	ax
		call	SYSTEM_$$_ISGUIDEQUAL$TGUID$TGUID$$BOOLEAN
		test	al,al
		jne	..@j15044
		jmp	..@j15045
..@j15044:
		mov	bx,word [bp+4]
		mov	ax,word [bp+8]
		mov	word [bx],ax
		mov	byte [bp-1],1
		jmp	..@j15042
..@j15045:
		mov	ax,word [bp+8]
		mov	word [bp-6],ax
	ALIGN 2
..@j15056:
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
		je	..@j15073
		jmp	..@j15075
..@j15075:
		mov	bx,word [bp-4]
		mov	ax,word [bx+8]
		cmp	ax,4
		jb	..@j15076
..@j15076:
		jc	..@j15073
		jmp	..@j15074
..@j15073:
		jmp	..@j15058
..@j15074:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	word [bp-6],ax
		jmp	..@j15056
..@j15058:
		cmp	byte [bp-1],0
		jne	..@j15081
		jmp	..@j15080
..@j15081:
		mov	bx,word [bp-4]
		mov	ax,word [bx+8]
		cmp	ax,0
		je	..@j15082
		cmp	ax,3
		je	..@j15082
..@j15082:
		je	..@j15079
		jmp	..@j15080
..@j15079:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	bx,word [bx]
		call	[bx+2]
		pop	word [bp-8]
..@j15080:
..@j15042:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_GETINTERFACEBYENTRY$POINTER$PINTERFACEENTRY$formal$$BOOLEAN
EXTERN	SYSTEM$_$TOBJECT_$__$$_GETINTERFACEENTRY$TGUID$$PINTERFACEENTRY
EXTERN	SYSTEM_$$_ISGUIDEQUAL$TGUID$TGUID$$BOOLEAN
EXTERN	TC_$SYSTEM_$$_IOBJECTINSTANCE
