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
	GLOBAL SYSTEM_$$_SYSGETMEM_VAR$WORD$$POINTER
SYSTEM_$$_SYSGETMEM_VAR$WORD$$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,12
		mov	word [bp-2],0
		cmp	word [bp+4],0
		ja	..@j19123
		jmp	..@j19124
..@j19123:
		cmp	byte [U_$SYSTEM_$$_RETURNNILIFGROWHEAPFAILS],0
		jne	..@j19125
		jmp	..@j19126
..@j19125:
		jmp	..@j19119
		jmp	..@j19127
..@j19126:
		mov	ax,0
		push	ax
		mov	ax,204
		push	ax
		call	FPC_HANDLEERROR
..@j19127:
..@j19124:
		mov	ax,word [FPC_THREADVAR_RELOCATE]
		test	ax,ax
		je	..@j19132
		push	word [U_$SYSTEM_$$_FREELISTS+2]
		push	word [U_$SYSTEM_$$_FREELISTS]
		call	ax
		jmp	..@j19133
..@j19132:
		mov	ax,word U_$SYSTEM_$$_FREELISTS+2
..@j19133:
		mov	word [bp-8],ax
		push	word [bp-8]
		call	SYSTEM_$$_TRY_FINISH_WAITVARLIST$PFREELISTS
		mov	word [bp-6],0
		mov	bx,word [bp-8]
		mov	ax,word [bx+80]
		mov	word [bp-4],ax
		mov	word [bp-12],-1
		mov	word [bp-10],-1
		jmp	..@j19143
	ALIGN 2
..@j19142:
		mov	bx,word [bp-4]
		mov	ax,word [bx+4]
		cmp	ax,word [bp+4]
		jae	..@j19145
		jmp	..@j19146
..@j19145:
		cmp	word [bp-6],0
		je	..@j19147
		jmp	..@j19149
..@j19149:
		mov	bx,word [bp-4]
		mov	si,word [bp-6]
		mov	ax,word [bx+4]
		cmp	ax,word [si+4]
		jb	..@j19147
		jmp	..@j19148
..@j19147:
		mov	ax,word [bp-4]
		mov	word [bp-6],ax
		mov	bx,word [bp-4]
		mov	ax,word [bx+4]
		cmp	ax,word [bp+4]
		je	..@j19152
		jmp	..@j19153
..@j19152:
		jmp	..@j19144
..@j19153:
		mov	word [bp-12],10
		mov	word [bp-10],0
..@j19148:
..@j19146:
		mov	bx,word [bp-4]
		mov	ax,word [bx+6]
		mov	word [bp-4],ax
		sub	word [bp-12],1
		sbb	word [bp-10],0
..@j19143:
		cmp	word [bp-4],0
		jne	..@j19158
		jmp	..@j19144
..@j19158:
		mov	ax,word [bp-12]
		mov	dx,word [bp-10]
		cmp	dx,0
		ja	..@j19142
		jb	..@j19144
		cmp	ax,0
		ja	..@j19142
		jmp	..@j19144
..@j19144:
		mov	ax,word [bp-6]
		mov	word [bp-4],ax
		cmp	word [bp-4],0
		je	..@j19161
		jmp	..@j19162
..@j19161:
		push	word [bp-8]
		mov	ax,0
		push	ax
		push	word [bp+4]
		call	SYSTEM_$$_ALLOC_OSCHUNK$PFREELISTS$WORD$WORD$$POINTER
		mov	word [bp-4],ax
		cmp	word [bp-4],0
		je	..@j19171
		jmp	..@j19172
..@j19171:
		jmp	..@j19119
..@j19172:
..@j19162:
		mov	ax,word [bp-4]
		add	ax,6
		mov	word [bp-2],ax
		mov	bx,word [bp-4]
		cmp	word [bx+6],0
		jne	..@j19176
		jmp	..@j19177
..@j19176:
		mov	bx,word [bp-4]
		mov	si,word [bx+6]
		mov	bx,word [bp-4]
		mov	ax,word [bx+8]
		mov	word [si+8],ax
..@j19177:
		mov	bx,word [bp-4]
		cmp	word [bx+8],0
		jne	..@j19180
		jmp	..@j19181
..@j19180:
		mov	bx,word [bp-4]
		mov	si,word [bx+8]
		mov	bx,word [bp-4]
		mov	ax,word [bx+6]
		mov	word [si+6],ax
		jmp	..@j19184
..@j19181:
		mov	bx,word [bp-4]
		mov	si,word [bx+2]
		mov	bx,word [bp-4]
		mov	ax,word [bx+6]
		mov	word [si+80],ax
..@j19184:
		push	word [bp-4]
		push	word [bp+4]
		call	SYSTEM_$$_SPLIT_BLOCK$PMEMCHUNK_VAR$WORD$$WORD
		mov	word [bp+4],ax
		mov	bx,word [bp-4]
		mov	ax,word [bx+4]
		or	ax,2
		mov	bx,word [bp-4]
		mov	word [bx+4],ax
		mov	bx,word [bp-8]
		lea	bx,[bx+86]
		mov	ax,word [bp+4]
		add	word [bx+6],ax
		mov	ax,word [bx+6]
		cmp	ax,word [bx+2]
		ja	..@j19197
		jmp	..@j19198
..@j19197:
		mov	ax,word [bx+6]
		mov	word [bx+2],ax
..@j19198:
..@j19119:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	2
EXTERN	SYSTEM_$$_SPLIT_BLOCK$PMEMCHUNK_VAR$WORD$$WORD
EXTERN	SYSTEM_$$_ALLOC_OSCHUNK$PFREELISTS$WORD$WORD$$POINTER
EXTERN	SYSTEM_$$_TRY_FINISH_WAITVARLIST$PFREELISTS
EXTERN	U_$SYSTEM_$$_FREELISTS
EXTERN	FPC_THREADVAR_RELOCATE
EXTERN	FPC_HANDLEERROR
EXTERN	U_$SYSTEM_$$_RETURNNILIFGROWHEAPFAILS
