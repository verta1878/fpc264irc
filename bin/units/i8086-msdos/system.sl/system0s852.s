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
	GLOBAL SYSTEM_$$_DUMPEXCEPTIONBACKTRACE$TEXT
SYSTEM_$$_DUMPEXCEPTIONBACKTRACE$TEXT:
		push	bp
		mov	bp,sp
		sub	sp,270
		call	SYSTEM_$$_RAISELIST$$PEXCEPTOBJECT
		test	ax,ax
		je	..@j18074
		jmp	..@j18075
..@j18074:
		jmp	..@j18072
..@j18075:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-266]
		push	ax
		call	SYSTEM_$$_RAISELIST$$PEXCEPTOBJECT
		mov	bx,ax
		push	word [bx+2]
		mov	ax,word [TC_$SYSTEM_$$_BACKTRACESTRFUNC]
		call	ax
		lea	ax,[bp-266]
		push	ax
		call	fpc_write_text_shortstr
		mov	ax,word [bp+4]
		push	ax
		call	fpc_writeln_end
		call	SYSTEM_$$_RAISELIST$$PEXCEPTOBJECT
		mov	bx,ax
		mov	ax,word [bx+10]
		mov	word [bp-8],ax
		mov	ax,word [bx+12]
		mov	word [bp-6],ax
		call	SYSTEM_$$_RAISELIST$$PEXCEPTOBJECT
		mov	bx,ax
		mov	ax,word [bx+14]
		mov	word [bp-10],ax
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		sub	ax,1
		sbb	dx,0
		mov	word [bp-270],ax
		mov	word [bp-268],dx
		mov	word [bp-4],0
		mov	word [bp-2],0
		mov	ax,word [bp-268]
		cmp	ax,word [bp-2]
		jl	..@j18095
		jg	..@j18097
		mov	ax,word [bp-270]
		cmp	ax,word [bp-4]
		jb	..@j18095
..@j18097:
		sub	word [bp-4],1
		sbb	word [bp-2],0
	ALIGN 2
..@j18096:
		add	word [bp-4],1
		adc	word [bp-2],0
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+4]
		push	ax
		lea	ax,[bp-266]
		push	ax
		mov	bx,word [bp-10]
		mov	ax,word [bp-4]
		mov	si,ax
		shl	si,1
		push	word [bx+si]
		mov	ax,word [TC_$SYSTEM_$$_BACKTRACESTRFUNC]
		call	ax
		lea	ax,[bp-266]
		push	ax
		call	fpc_write_text_shortstr
		mov	ax,word [bp+4]
		push	ax
		call	fpc_writeln_end
		mov	ax,word [bp-268]
		cmp	ax,word [bp-2]
		jg	..@j18096
		jl	..@j18110
		mov	ax,word [bp-270]
		cmp	ax,word [bp-4]
		ja	..@j18096
..@j18110:
..@j18095:
..@j18072:
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	fpc_writeln_end
EXTERN	fpc_write_text_shortstr
EXTERN	TC_$SYSTEM_$$_BACKTRACESTRFUNC
EXTERN	SYSTEM_$$_RAISELIST$$PEXCEPTOBJECT
