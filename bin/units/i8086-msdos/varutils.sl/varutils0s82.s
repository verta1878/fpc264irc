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
	GLOBAL VARUTILS_$$_SAFEARRAYCREATE$LONGWORD$LONGWORD$TVARARRAYBOUNDARRAY$$PVARARRAY
VARUTILS_$$_SAFEARRAYCREATE$LONGWORD$LONGWORD$TVARARRAYBOUNDARRAY$$PVARARRAY:
		push	bp
		mov	bp,sp
		sub	sp,20
		mov	word [bp-2],0
		mov	ax,word [bp+4]
		sub	ax,2
		cmp	ax,12
		jb	..@j4948
		sub	ax,14
		cmp	ax,6
		jb	..@j4948
..@j4948:
		jnc	..@j4946
		jmp	..@j4947
..@j4946:
		jmp	..@j4942
..@j4947:
		lea	ax,[bp-2]
		push	ax
		push	word [bp+10]
		push	word [bp+8]
		call	VARUTILS_$$_SAFEARRAYALLOCDESCRIPTOR$LONGWORD$PVARARRAY$$HRESULT
		mov	word [bp-6],ax
		mov	word [bp-4],dx
		mov	ax,word [bp-6]
		mov	dx,word [bp-4]
		cmp	dx,0
		jne	..@j4955
		cmp	ax,0
		jne	..@j4955
		jmp	..@j4956
..@j4955:
		jmp	..@j4942
..@j4956:
		mov	bx,word [bp-2]
		mov	ax,word [bp+8]
		mov	word [bx],ax
		mov	bx,word [bp-2]
		mov	si,word [bp+4]
		mov	cl,2
		shl	si,cl
		mov	ax,word [TC_$VARUTILS_$$_PSAELEMENTFLAGS+si]
		mov	word [bx+2],ax
		mov	bx,word [bp-2]
		mov	si,word [bp+4]
		mov	ax,0
		mov	dl,byte [TC_$VARUTILS_$$_PSAELEMENTSIZES+si]
		mov	dh,0
		mov	word [bx+4],dx
		mov	word [bx+6],ax
		mov	bx,word [bp-2]
		mov	word [bx+8],0
		mov	word [bx+10],0
		mov	ax,word [bp+8]
		mov	dx,word [bp+10]
		sub	ax,1
		sbb	dx,0
		mov	word [bp-16],ax
		mov	ax,dx
		mov	word [bp-10],0
		mov	word [bp-8],0
		cmp	ax,word [bp-8]
		jb	..@j4968
		ja	..@j4970
		mov	dx,word [bp-16]
		cmp	dx,word [bp-10]
		jb	..@j4968
..@j4970:
		sub	word [bp-10],1
		sbb	word [bp-8],0
	ALIGN 2
..@j4969:
		add	word [bp-10],1
		adc	word [bp-8],0
		mov	dx,word [bp+12]
		mov	word [bp-14],dx
		mov	dx,word [bp+8]
		mov	si,word [bp+10]
		mov	cx,word [bp-10]
		mov	bx,word [bp-8]
		mov	di,dx
		mov	dx,si
		sub	di,cx
		sbb	dx,bx
		mov	cx,di
		sub	cx,1
		sbb	dx,0
		mov	di,cx
		mov	cl,3
		shl	di,cl
		mov	dx,word [bp-2]
		mov	word [bp-18],dx
		mov	dx,word [bp-10]
		mov	si,dx
		mov	cl,3
		shl	si,cl
		mov	bx,word [bp-14]
		mov	dx,word [bx+di+4]
		mov	bx,word [bp-18]
		mov	word [bx+si+18],dx
		mov	bx,word [bp-14]
		mov	dx,word [bx+di+6]
		mov	bx,word [bp-18]
		mov	word [bx+si+20],dx
		mov	dx,word [bp+12]
		mov	word [bp-12],dx
		mov	dx,word [bp+8]
		mov	cx,word [bp+10]
		mov	bx,word [bp-10]
		mov	si,word [bp-8]
		mov	di,cx
		sub	dx,bx
		sbb	di,si
		mov	cx,dx
		mov	dx,di
		sub	cx,1
		sbb	dx,0
		mov	di,cx
		mov	cl,3
		shl	di,cl
		mov	dx,word [bp-2]
		mov	word [bp-20],dx
		mov	dx,word [bp-10]
		mov	si,dx
		mov	cl,3
		shl	si,cl
		mov	bx,word [bp-12]
		mov	dx,word [bx+di]
		mov	bx,word [bp-20]
		mov	word [bx+si+14],dx
		mov	bx,word [bp-12]
		mov	dx,word [bx+di+2]
		mov	bx,word [bp-20]
		mov	word [bx+si+16],dx
		cmp	ax,word [bp-8]
		ja	..@j4969
		jb	..@j4975
		mov	dx,word [bp-16]
		cmp	dx,word [bp-10]
		ja	..@j4969
..@j4975:
..@j4968:
		push	word [bp-2]
		call	VARUTILS_$$_SAFEARRAYALLOCDATA$PVARARRAY$$HRESULT
		mov	word [bp-6],ax
		mov	word [bp-4],dx
		mov	ax,word [bp-6]
		mov	dx,word [bp-4]
		cmp	dx,0
		jne	..@j4980
		cmp	ax,0
		jne	..@j4980
		jmp	..@j4981
..@j4980:
		push	word [bp-2]
		call	VARUTILS_$$_SAFEARRAYDESTROYDESCRIPTOR$PVARARRAY$$HRESULT
		mov	word [bp-2],0
..@j4981:
..@j4942:
		mov	ax,word [bp-2]
		mov	sp,bp
		pop	bp
		ret	10
EXTERN	VARUTILS_$$_SAFEARRAYDESTROYDESCRIPTOR$PVARARRAY$$HRESULT
EXTERN	VARUTILS_$$_SAFEARRAYALLOCDATA$PVARARRAY$$HRESULT
EXTERN	TC_$VARUTILS_$$_PSAELEMENTSIZES
EXTERN	TC_$VARUTILS_$$_PSAELEMENTFLAGS
EXTERN	VARUTILS_$$_SAFEARRAYALLOCDESCRIPTOR$LONGWORD$PVARARRAY$$HRESULT
