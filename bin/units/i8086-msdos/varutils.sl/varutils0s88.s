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
	GLOBAL VARUTILS_$$_SAFEARRAYREDIM$PVARARRAY$TVARARRAYBOUND$$HRESULT
VARUTILS_$$_SAFEARRAYREDIM$PVARARRAY$TVARARRAYBOUND$$HRESULT:
		push	bp
		mov	bp,sp
		sub	sp,54
		push	word [bp+4]
		call	VARUTILS_$$_CHECKVARARRAY$PVARARRAY$$HRESULT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		cmp	ax,0
		jne	..@j5156
		cmp	dx,0
		jne	..@j5156
		jmp	..@j5157
..@j5156:
		jmp	..@j5150
..@j5157:
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		and	ax,16
		test	ax,ax
		jne	..@j5158
		jmp	..@j5159
..@j5158:
		mov	word [bp-4],87
		mov	word [bp-2],-32761
		jmp	..@j5150
..@j5159:
		push	word [bp+4]
		call	VARUTILS_$$_SAFEARRAYLOCK$PVARARRAY$$HRESULT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		jne	..@j5166
		cmp	ax,0
		jne	..@j5166
		jmp	..@j5167
..@j5166:
		jmp	..@j5150
..@j5167:
		mov	ax,1
		push	ax
		lea	ax,[bp-30]
		push	ax
		lea	ax,[bp-24]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j5170
		mov	bx,word [bp+6]
		mov	si,word [bp+4]
		mov	ax,word [bx]
		mov	cx,word [bx+2]
		mov	dx,word [si+14]
		mov	bx,word [si+16]
		sub	ax,dx
		sbb	cx,bx
		mov	word [bp-12],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	dx,0
		sub	ax,1
		sbb	dx,0
		mov	word [bp-54],ax
		mov	word [bp-10],1
		mov	ax,word [bp-54]
		cmp	ax,word [bp-10]
		jl	..@j5179
		dec	word [bp-10]
	ALIGN 2
..@j5180:
		inc	word [bp-10]
		mov	ax,word [bp-12]
		cwd
		push	dx
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bp-10]
		mov	si,ax
		mov	cl,3
		shl	si,cl
		push	word [bx+si+16]
		push	word [bx+si+14]
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		mov	word [bp-12],ax
		mov	ax,word [bp-54]
		cmp	ax,word [bp-10]
		jg	..@j5180
..@j5179:
		cmp	word [bp-12],0
		jne	..@j5189
		jmp	..@j5190
..@j5189:
		push	word [bp+4]
		call	VARUTILS_$$_SAFEARRAYELEMENTTOTAL$PVARARRAY$$SMALLINT
		mov	word [bp-16],ax
		cmp	word [bp-12],0
		jl	..@j5195
		jmp	..@j5196
..@j5195:
		push	word [bp+4]
		call	VARUTILS_$$_VARIANTARRAYTYPE$PVARARRAY$$TVARIANTARRAYTYPE
		mov	word [bp-8],ax
		mov	word [bp-6],dx
		mov	dx,word [bp-16]
		mov	ax,word [bp-12]
		add	ax,dx
		mov	word [bp-52],ax
		mov	ax,word [bp-16]
		dec	ax
		mov	word [bp-14],ax
		mov	ax,word [bp-52]
		cmp	ax,word [bp-14]
		jg	..@j5204
		inc	word [bp-14]
	ALIGN 2
..@j5205:
		dec	word [bp-14]
		push	word [bp+4]
		push	word [bp-14]
		call	VARUTILS_$$_SAFEARRAYCALCULATEELEMENTADDRESS$PVARARRAY$SMALLINT$$POINTER
		mov	word [bp-18],ax
		cmp	word [bp-8],1
		je	..@j5212
		jmp	..@j5213
..@j5212:
		mov	ax,word [bp-18]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_intf_assign
		jmp	..@j5218
..@j5213:
		cmp	word [bp-8],2
		je	..@j5219
		jmp	..@j5220
..@j5219:
		mov	ax,word [bp-18]
		push	ax
		mov	ax,0
		push	ax
		call	fpc_unicodestr_assign
		jmp	..@j5225
..@j5220:
		cmp	word [bp-8],3
		je	..@j5226
		jmp	..@j5227
..@j5226:
		mov	ax,word [bp-18]
		push	ax
		call	VARUTILS_$$_VARIANTCLEAR$TVARDATA$$HRESULT
..@j5227:
..@j5225:
..@j5218:
		mov	ax,word [bp-52]
		cmp	ax,word [bp-14]
		jl	..@j5205
..@j5204:
..@j5196:
		mov	bx,word [bp+4]
		lea	ax,[bx+12]
		push	ax
		mov	dx,word [bp-16]
		mov	ax,word [bp-12]
		add	ax,dx
		cwd
		mov	cx,ax
		mov	ax,dx
		push	ax
		push	cx
		mov	bx,word [bp+4]
		push	word [bx+6]
		push	word [bx+4]
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		push	ax
		call	SYSTEM_$$_REALLOCMEM$POINTER$WORD$$POINTER
		cmp	word [bp-12],0
		jg	..@j5240
		jmp	..@j5241
..@j5240:
		mov	ax,word [bp+4]
		mov	word [bp-50],ax
		mov	ax,word [bp-16]
		cwd
		push	dx
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+6]
		push	word [bx+4]
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		mov	bx,word [bp-50]
		mov	dx,word [bx+12]
		add	ax,dx
		push	ax
		mov	ax,word [bp-12]
		cwd
		push	dx
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+6]
		push	word [bx+4]
		mov	ax,0
		push	ax
		call	fpc_mul_longint
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
..@j5241:
..@j5190:
		mov	bx,word [bp+4]
		mov	si,word [bp+6]
		mov	ax,word [si]
		mov	word [bx+14],ax
		mov	ax,word [si+2]
		mov	word [bx+16],ax
		mov	bx,word [bp+4]
		mov	si,word [bp+6]
		mov	ax,word [si+4]
		mov	word [bx+18],ax
		mov	ax,word [si+6]
		mov	word [bx+20],ax
..@j5170:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j5172
		mov	ax,word VMT_$SYSUTILS_$$_EXCEPTION
		push	ax
		call	fpc_catches
		test	ax,ax
		je	..@j5264
		mov	word [bp-34],ax
		mov	ax,1
		push	ax
		lea	ax,[bp-46]
		push	ax
		lea	ax,[bp-40]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j5265
		push	word [bp-34]
		call	VARUTILS_$$_EXCEPTIONTOVARIANTERROR$EXCEPTION$$HRESULT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
..@j5265:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j5271
		call	FPC_RAISE_NESTED
..@j5271:
		call	FPC_DONEEXCEPTION
		jmp	..@j5172
..@j5264:
		call	FPC_RERAISE
..@j5172:
		push	word [bp+4]
		push	word [bp-2]
		push	word [bp-4]
		call	VARUTILS_$$_SETUNLOCKRESULT$PVARARRAY$HRESULT
..@j5150:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	VARUTILS_$$_SETUNLOCKRESULT$PVARARRAY$HRESULT
EXTERN	FPC_RERAISE
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	VARUTILS_$$_EXCEPTIONTOVARIANTERROR$EXCEPTION$$HRESULT
EXTERN	fpc_catches
EXTERN	VMT_$SYSUTILS_$$_EXCEPTION
EXTERN	FPC_POPADDRSTACK
EXTERN	SYSTEM_$$_FILLCHAR$formal$SMALLINT$BYTE
EXTERN	SYSTEM_$$_REALLOCMEM$POINTER$WORD$$POINTER
EXTERN	VARUTILS_$$_VARIANTCLEAR$TVARDATA$$HRESULT
EXTERN	fpc_unicodestr_assign
EXTERN	fpc_intf_assign
EXTERN	VARUTILS_$$_SAFEARRAYCALCULATEELEMENTADDRESS$PVARARRAY$SMALLINT$$POINTER
EXTERN	VARUTILS_$$_VARIANTARRAYTYPE$PVARARRAY$$TVARIANTARRAYTYPE
EXTERN	VARUTILS_$$_SAFEARRAYELEMENTTOTAL$PVARARRAY$$SMALLINT
EXTERN	fpc_mul_longint
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	VARUTILS_$$_SAFEARRAYLOCK$PVARARRAY$$HRESULT
EXTERN	VARUTILS_$$_CHECKVARARRAY$PVARARRAY$$HRESULT
