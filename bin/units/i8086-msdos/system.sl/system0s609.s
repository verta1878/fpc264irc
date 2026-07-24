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
	GLOBAL SYSTEM$_$TOBJECT_$__$$_GETINTERFACEBYSTR$SHORTSTRING$formal$$BOOLEAN
SYSTEM$_$TOBJECT_$__$$_GETINTERFACEBYSTR$SHORTSTRING$formal$$BOOLEAN:
		push	bp
		mov	bp,sp
		sub	sp,8
		mov	ax,word [bp+8]
		mov	word [bp-6],ax
	ALIGN 2
..@j15132:
		mov	bx,word [bp-6]
		mov	ax,word [bx]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		call	SYSTEM$_$TOBJECT_$__$$_GETINTERFACEENTRYBYSTR$SHORTSTRING$$PINTERFACEENTRY
		mov	word [bp-4],ax
		push	word [bp-6]
		push	word [bp-4]
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM_$$_GETINTERFACEBYENTRY$POINTER$PINTERFACEENTRY$formal$$BOOLEAN
		mov	byte [bp-1],al
		cmp	byte [bp-1],0
		je	..@j15149
		jmp	..@j15151
..@j15151:
		mov	bx,word [bp-4]
		mov	ax,word [bx+8]
		cmp	ax,4
		jb	..@j15152
..@j15152:
		jc	..@j15149
		jmp	..@j15150
..@j15149:
		jmp	..@j15134
..@j15150:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	word [bp-6],ax
		jmp	..@j15132
..@j15134:
		cmp	byte [bp-1],0
		jne	..@j15158
		jmp	..@j15156
..@j15158:
		mov	bx,word [bp-4]
		cmp	word [bx],0
		jne	..@j15157
		jmp	..@j15156
..@j15157:
		mov	bx,word [bp-4]
		mov	ax,word [bx+8]
		cmp	ax,0
		je	..@j15159
		cmp	ax,3
		je	..@j15159
..@j15159:
		je	..@j15155
		jmp	..@j15156
..@j15155:
		mov	bx,word [bp+4]
		push	word [bx]
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		mov	bx,word [bx]
		call	[bx+2]
		pop	word [bp-8]
..@j15156:
		mov	al,byte [bp-1]
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	SYSTEM_$$_GETINTERFACEBYENTRY$POINTER$PINTERFACEENTRY$formal$$BOOLEAN
EXTERN	SYSTEM$_$TOBJECT_$__$$_GETINTERFACEENTRYBYSTR$SHORTSTRING$$PINTERFACEENTRY
