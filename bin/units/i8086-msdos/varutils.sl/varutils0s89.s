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
	GLOBAL VARUTILS_$$_SAFEARRAYCOPY$PVARARRAY$PVARARRAY$$HRESULT
VARUTILS_$$_SAFEARRAYCOPY$PVARARRAY$PVARARRAY$$HRESULT:
		push	bp
		mov	bp,sp
		sub	sp,42
		push	word [bp+4]
		call	VARUTILS_$$_CHECKVARARRAY$PVARARRAY$$HRESULT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		jne	..@j5282
		cmp	ax,0
		jne	..@j5282
		jmp	..@j5283
..@j5282:
		jmp	..@j5276
..@j5283:
		push	word [bp+4]
		call	VARUTILS_$$_SAFEARRAYLOCK$PVARARRAY$$HRESULT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		cmp	ax,0
		jne	..@j5288
		cmp	dx,0
		jne	..@j5288
		jmp	..@j5289
..@j5288:
		jmp	..@j5276
..@j5289:
		mov	ax,1
		push	ax
		lea	ax,[bp-18]
		push	ax
		lea	ax,[bp-12]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j5292
		mov	ax,word [bp+6]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	dx,0
		push	dx
		push	ax
		call	VARUTILS_$$_SAFEARRAYALLOCDESCRIPTOR$LONGWORD$PVARARRAY$$HRESULT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		jne	..@j5302
		cmp	ax,0
		jne	..@j5302
		jmp	..@j5303
..@j5302:
		jmp	..@j5290
..@j5303:
		mov	ax,1
		push	ax
		lea	ax,[bp-32]
		push	ax
		lea	ax,[bp-26]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j5304
		mov	bx,word [bp+6]
		mov	ax,word [bx]
		mov	word [bp-38],ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+2]
		mov	bx,word [bp-38]
		mov	word [bx+2],ax
		mov	si,word [bp+4]
		mov	ax,word [si+4]
		mov	bx,word [bp-38]
		mov	word [bx+4],ax
		mov	ax,word [si+6]
		mov	bx,word [bp-38]
		mov	word [bx+6],ax
		mov	bx,word [bp-38]
		mov	word [bx+8],0
		mov	bx,word [bp-38]
		mov	word [bx+10],0
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		mov	bx,word [bp-38]
		mov	word [bx],ax
		mov	bx,word [bp-38]
		mov	dx,word [bx]
		mov	ax,0
		sub	dx,1
		sbb	ax,0
		mov	ax,dx
		mov	word [bp-6],0
		cmp	ax,word [bp-6]
		jl	..@j5320
		dec	word [bp-6]
	ALIGN 2
..@j5321:
		inc	word [bp-6]
		mov	dx,word [bp+4]
		mov	word [bp-42],dx
		mov	dx,word [bp-6]
		mov	si,dx
		mov	cl,3
		shl	si,cl
		mov	dx,word [bp-6]
		mov	di,dx
		mov	cl,3
		shl	di,cl
		mov	bx,word [bp-42]
		mov	dx,word [bx+si+14]
		mov	bx,word [bp-38]
		mov	word [bx+di+14],dx
		mov	bx,word [bp-42]
		mov	dx,word [bx+si+16]
		mov	bx,word [bp-38]
		mov	word [bx+di+16],dx
		mov	dx,word [bp+4]
		mov	word [bp-40],dx
		mov	dx,word [bp-6]
		mov	si,dx
		mov	cl,3
		shl	si,cl
		mov	dx,word [bp-6]
		mov	di,dx
		mov	cl,3
		shl	di,cl
		mov	bx,word [bp-40]
		mov	dx,word [bx+si+18]
		mov	bx,word [bp-38]
		mov	word [bx+di+18],dx
		mov	bx,word [bp-40]
		mov	dx,word [bx+si+20]
		mov	bx,word [bp-38]
		mov	word [bx+di+20],dx
		cmp	ax,word [bp-6]
		jg	..@j5321
..@j5320:
		mov	bx,word [bp+6]
		push	word [bx]
		call	VARUTILS_$$_SAFEARRAYALLOCDATA$PVARARRAY$$HRESULT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
		mov	dx,word [bp-4]
		mov	ax,word [bp-2]
		cmp	ax,0
		jne	..@j5330
		cmp	dx,0
		jne	..@j5330
		jmp	..@j5331
..@j5330:
		jmp	..@j5306
..@j5331:
		push	word [bp+4]
		mov	bx,word [bp+6]
		push	word [bx]
		call	VARUTILS_$$_SAFEARRAYCOPYDATASPACE$PVARARRAY$PVARARRAY$$HRESULT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
..@j5304:
		call	FPC_POPADDRSTACK
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		cmp	dx,0
		jne	..@j5338
		cmp	ax,0
		jne	..@j5338
		jmp	..@j5339
..@j5338:
		mov	bx,word [bp+6]
		push	word [bx]
		call	VARUTILS_$$_SAFEARRAYDESTROYDESCRIPTOR$PVARARRAY$$HRESULT
		mov	bx,word [bp+6]
		mov	word [bx],0
..@j5339:
		pop	ax
		test	ax,ax
		je	..@j5305
		cmp	ax,2
		je	..@j5290
		call	FPC_RERAISE
..@j5306:
		pop	ax
		mov	dx,2
		push	dx
		jmp	..@j5304
..@j5305:
..@j5292:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j5294
		mov	ax,word VMT_$SYSUTILS_$$_EXCEPTION
		push	ax
		call	fpc_catches
		test	ax,ax
		je	..@j5344
		mov	word [bp-22],ax
		mov	ax,1
		push	ax
		lea	ax,[bp-34]
		push	ax
		lea	ax,[bp-28]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j5345
		push	word [bp-22]
		call	VARUTILS_$$_EXCEPTIONTOVARIANTERROR$EXCEPTION$$HRESULT
		mov	word [bp-4],ax
		mov	word [bp-2],dx
..@j5345:
		call	FPC_POPADDRSTACK
		pop	ax
		test	ax,ax
		je	..@j5351
		call	FPC_RAISE_NESTED
..@j5351:
		call	FPC_DONEEXCEPTION
		jmp	..@j5294
..@j5344:
		call	FPC_RERAISE
..@j5290:
		call	FPC_POPADDRSTACK
		pop	ax
		jmp	..@j5276
..@j5294:
		push	word [bp+4]
		push	word [bp-2]
		push	word [bp-4]
		call	VARUTILS_$$_SETUNLOCKRESULT$PVARARRAY$HRESULT
..@j5276:
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	VARUTILS_$$_SETUNLOCKRESULT$PVARARRAY$HRESULT
EXTERN	FPC_DONEEXCEPTION
EXTERN	FPC_RAISE_NESTED
EXTERN	VARUTILS_$$_EXCEPTIONTOVARIANTERROR$EXCEPTION$$HRESULT
EXTERN	fpc_catches
EXTERN	VMT_$SYSUTILS_$$_EXCEPTION
EXTERN	FPC_RERAISE
EXTERN	VARUTILS_$$_SAFEARRAYDESTROYDESCRIPTOR$PVARARRAY$$HRESULT
EXTERN	FPC_POPADDRSTACK
EXTERN	VARUTILS_$$_SAFEARRAYCOPYDATASPACE$PVARARRAY$PVARARRAY$$HRESULT
EXTERN	VARUTILS_$$_SAFEARRAYALLOCDATA$PVARARRAY$$HRESULT
EXTERN	VARUTILS_$$_SAFEARRAYALLOCDESCRIPTOR$LONGWORD$PVARARRAY$$HRESULT
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
EXTERN	VARUTILS_$$_SAFEARRAYLOCK$PVARARRAY$$HRESULT
EXTERN	VARUTILS_$$_CHECKVARARRAY$PVARARRAY$$HRESULT
