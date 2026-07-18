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
	GLOBAL SYSTEM_$$_STR_REAL$SMALLINT$SMALLINT$EXTENDED$TREAL_TYPE$OPENSTRING
SYSTEM_$$_STR_REAL$SMALLINT$SMALLINT$EXTENDED$TREAL_TYPE$OPENSTRING:
		push	bp
		mov	bp,sp
		sub	sp,182
		cmp	word [bp+22],216
		jg	..@j4710
		jmp	..@j4711
..@j4710:
		mov	word [bp+22],216
..@j4711:
		cmp	word [bp+24],-32767
		jle	..@j4714
		jmp	..@j4715
..@j4714:
		mov	word [bp+24],-1
		jmp	..@j4718
..@j4715:
		cmp	word [bp+24],0
		jl	..@j4719
		jmp	..@j4720
..@j4719:
		mov	word [bp+24],0
		jmp	..@j4723
..@j4720:
		cmp	word [bp+24],255
		jg	..@j4724
		jmp	..@j4725
..@j4724:
		mov	word [bp+24],255
..@j4725:
..@j4723:
..@j4718:
		mov	ax,word [bp+8]
		mov	bx,ax
		mov	cl,2
		shl	bx,cl
		mov	ax,word [TC_$SYSTEM_$$_FLOAT_FORMAT+bx]
		mov	word [bp-58],ax
		mov	bx,word [bp+8]
		mov	cl,2
		shl	bx,cl
		mov	ax,word [TC_$SYSTEM_$$_FLOAT_FORMAT+bx+2]
		mov	word [bp-52],ax
		mov	ax,word [TC_$SYSTEM_$$_FLOAT_FORMAT+8]
		mov	word [bp-54],ax
		mov	ax,word [bp-58]
		cmp	ax,word [bp-54]
		jl	..@j4734
		jmp	..@j4735
..@j4734:
		mov	ax,word [bp-58]
		mov	word [bp-54],ax
..@j4735:
		cmp	word [bp+24],0
		jl	..@j4738
		jmp	..@j4739
..@j4738:
		mov	ax,word [bp-58]
		mov	word [bp-60],ax
		jmp	..@j4742
..@j4739:
		mov	dx,word [bp+24]
		dec	dx
		dec	dx
		dec	dx
		dec	dx
		mov	ax,word [bp-52]
		sub	dx,ax
		mov	word [bp-60],dx
		cmp	word [bp-60],2
		jl	..@j4745
		jmp	..@j4746
..@j4745:
		mov	word [bp-60],2
..@j4746:
		mov	ax,word [bp-60]
		cmp	ax,word [bp-58]
		jg	..@j4749
		jmp	..@j4750
..@j4749:
		mov	ax,word [bp-58]
		mov	word [bp-60],ax
..@j4750:
..@j4742:
		mov	word [bp-164],bp
		lea	di,[bp-174]
		push	ss
		pop	es
		lea	si,[bp+12]
		cld
		mov	cx,5
		rep
		movsw
		mov	al,byte [bp-165]
		and	al,128
		test	al,al
		mov	al,0
		je	..@j4762
		inc	ax
..@j4762:
		mov	byte [bp-61],al
		mov	ax,word [bp-166]
		and	ax,32767
		mov	word [bp-150],ax
		lea	di,[bp-162]
		push	ss
		pop	es
		lea	si,[bp-174]
		cld
		mov	cx,4
		rep
		movsw
		mov	word [bp-154],0
		mov	word [bp-152],0
		lea	di,[bp-14]
		push	ss
		pop	es
		lea	si,[bp-162]
		cld
		mov	cx,7
		rep
		movsw
		cmp	word [bp-2],0
		je	..@j4771
		jmp	..@j4770
..@j4771:
		mov	dx,word [bp-14]
		mov	cx,word [bp-12]
		mov	ax,word [bp-10]
		mov	bx,word [bp-8]
		cmp	bx,0
		jne	..@j4770
		cmp	ax,0
		jne	..@j4770
		cmp	cx,0
		jne	..@j4770
		cmp	dx,0
		jne	..@j4770
		jmp	..@j4769
..@j4769:
		mov	byte [bp-148],0
		cmp	word [bp+22],0
		jge	..@j4774
		jmp	..@j4775
..@j4774:
		push	bp
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		mov	al,byte [bp-61]
		mov	ah,0
		push	ax
		lea	ax,[bp-148]
		push	ax
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		push	word [bp+24]
		push	word [bp+22]
		call	SYSTEM$_$STR_REAL$crcEDBAA446_$$_TRY_RETURN_FIXED$crc15F54820
		test	al,al
		jne	..@j4776
		jmp	..@j4777
..@j4776:
		jmp	..@j4684
..@j4777:
..@j4775:
		push	bp
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		mov	al,byte [bp-61]
		mov	ah,0
		push	ax
		lea	ax,[bp-148]
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-60]
		mov	ax,0
		push	ax
		push	word [bp-52]
		push	word [bp+24]
		call	SYSTEM$_$STR_REAL$crcEDBAA446_$$_RETURN_EXPONENTIAL$crcC3D7D0D1
		jmp	..@j4684
..@j4770:
		cmp	word [bp-2],0
		jne	..@j4818
		jmp	..@j4817
..@j4818:
		cmp	word [bp-2],32767
		jne	..@j4816
		jmp	..@j4817
..@j4816:
		mov	bx,word [bp-14]
		mov	ax,word [bp-12]
		mov	dx,word [bp-10]
		mov	cx,word [bp-8]
		mov	bx,0
		mov	ax,0
		mov	dx,0
		and	cx,-32768
		cmp	cx,0
		jne	..@j4820
		cmp	dx,0
		jne	..@j4820
		cmp	ax,0
		jne	..@j4820
		cmp	bx,0
		jne	..@j4820
		jmp	..@j4819
..@j4819:
		mov	word [bp-14],-1
		mov	word [bp-12],-1
		mov	word [bp-10],-1
		mov	word [bp-8],-1
		mov	word [bp-2],32767
..@j4820:
..@j4817:
		cmp	word [bp-2],32767
		je	..@j4825
		jmp	..@j4826
..@j4825:
		cmp	word [bp+24],0
		jl	..@j4827
		jmp	..@j4828
..@j4827:
		mov	bx,word [bp+8]
		mov	cl,2
		shl	bx,cl
		mov	si,word [bp+8]
		mov	cl,2
		shl	si,cl
		mov	dx,word [TC_$SYSTEM_$$_FLOAT_FORMAT+bx]
		mov	ax,word [TC_$SYSTEM_$$_FLOAT_FORMAT+si+2]
		add	ax,dx
		add	ax,4
		mov	word [bp+24],ax
..@j4828:
		mov	dl,byte [bp-61]
		mov	dh,0
		shl	dx,1
		mov	ax,1
		sub	ax,dx
		mov	word [bp-46],ax
		mov	cx,word [bp-14]
		mov	dx,word [bp-12]
		mov	bx,word [bp-10]
		mov	ax,word [bp-8]
		cmp	ax,-32768
		jne	..@j4836
		cmp	bx,0
		jne	..@j4836
		cmp	dx,0
		jne	..@j4836
		cmp	cx,0
		jne	..@j4836
		jmp	..@j4835
..@j4835:
		push	bp
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		push	word [bp-46]
		mov	ax,word TC_$SYSTEM_$$_C_STR_INF
		push	ax
		push	word [bp+24]
		call	SYSTEM$_$STR_REAL$crcEDBAA446_$$_RETURN_SPECIAL$OPENSTRING$SMALLINT$SHORTSTRING$SMALLINT
		jmp	..@j4849
..@j4836:
		mov	word [bp-46],0
		push	bp
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		push	word [bp-46]
		mov	ax,word TC_$SYSTEM_$$_C_STR_QNAN
		push	ax
		push	word [bp+24]
		call	SYSTEM$_$STR_REAL$crcEDBAA446_$$_RETURN_SPECIAL$OPENSTRING$SMALLINT$SHORTSTRING$SMALLINT
..@j4849:
		jmp	..@j4684
..@j4826:
		cmp	word [bp-2],0
		jne	..@j4864
		jmp	..@j4865
..@j4864:
		mov	word [bp-46],32
		jmp	..@j4868
..@j4865:
		lea	di,[bp-156]
		push	ss
		pop	es
		lea	si,[bp-14]
		cld
		mov	cx,4
		rep
		movsw
		mov	word [bp-158],bp
		push	word [bp-150]
		push	word [bp-152]
		push	word [bp-154]
		push	word [bp-156]
		call	SYSTEM_$$_BSRQWORD$QWORD$$BYTE
		mov	ah,0
		mov	dx,63
		sub	dx,ax
		add	dx,32
		mov	word [bp-46],dx
		inc	word [bp-2]
..@j4868:
		lea	ax,[bp-6]
		push	ax
		lea	ax,[bp-14]
		push	ax
		push	word [bp-46]
		call	SYSTEM_$$_DIY_UTIL_SHL$LONGWORD$QWORD$SMALLINT
		mov	ax,word [bp-46]
		add	ax,16383
		add	ax,63
		sub	word [bp-2],ax
		cmp	word [bp-2],-93
		jge	..@j4887
		jmp	..@j4886
..@j4887:
		cmp	word [bp-2],30
		jle	..@j4885
		jmp	..@j4886
..@j4885:
		lea	di,[bp-28]
		push	ss
		pop	es
		lea	si,[bp-14]
		cld
		mov	cx,7
		rep
		movsw
		mov	word [bp-30],0
		jmp	..@j4892
..@j4886:
		push	bp
		push	word [bp-2]
		mov	ax,-93
		push	ax
		call	SYSTEM$_$STR_REAL$crcEDBAA446_$$_K_COMP$SMALLINT$SMALLINT$$SMALLINT
		mov	word [bp-48],ax
		push	word [bp-48]
		lea	ax,[bp-44]
		push	ax
		call	SYSTEM_$$_DIY_FP_CACHED_POWER10$SMALLINT$TDIY_FP_POWER_OF_10
		cmp	word [bp-30],0
		je	..@j4905
		jmp	..@j4906
..@j4905:
		lea	di,[bp-28]
		push	ss
		pop	es
		lea	si,[bp-14]
		cld
		mov	cx,7
		rep
		movsw
		jmp	..@j4909
..@j4906:
		lea	ax,[bp-28]
		push	ax
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-44]
		push	ax
		mov	ax,0
		push	ax
		call	SYSTEM_$$_DIY_FP_MULTIPLY$TDIY_FP$TDIY_FP$BOOLEAN$$TDIY_FP
..@j4909:
..@j4892:
		lea	di,[bp-70]
		push	ss
		pop	es
		lea	si,[bp-28]
		cld
		mov	cx,4
		rep
		movsw
		mov	ax,word [bp-20]
		mov	word [bp-90],ax
		mov	ax,word [bp-18]
		mov	word [bp-88],ax
		cmp	word [bp-16],0
		jg	..@j4922
		jmp	..@j4923
..@j4922:
		mov	ax,word [bp-90]
		mov	si,word [bp-88]
		mov	bx,0
		mov	dx,0
		mov	cx,word [bp-16]
		cmp	cx,64
		jl	..@j4926
		xor	ax,ax
		xor	si,si
		xor	bx,bx
		xor	dx,dx
		jmp	..@j4928
..@j4926:
		test	cx,cx
		je	..@j4928
..@j4927:
		shl	ax,1
		rcl	si,1
		rcl	bx,1
		rcl	dx,1
		loop	..@j4927
..@j4928:
		mov	ax,0
		mov	si,0
		mov	word [bp-86],ax
		mov	word [bp-84],si
		mov	word [bp-82],bx
		mov	word [bp-80],dx
		lea	ax,[bp-90]
		push	ax
		lea	ax,[bp-70]
		push	ax
		push	word [bp-16]
		call	SYSTEM_$$_DIY_UTIL_SHL$LONGWORD$QWORD$SMALLINT
		mov	dx,word [bp-90]
		mov	cx,word [bp-88]
		mov	ax,0
		mov	bx,0
		mov	word [bp-182],dx
		mov	word [bp-178],cx
		mov	si,ax
		mov	ax,bx
		mov	cx,word [bp-86]
		mov	bx,word [bp-84]
		mov	dx,word [bp-82]
		mov	di,word [bp-80]
		add	cx,word [bp-182]
		adc	bx,word [bp-178]
		adc	dx,si
		adc	di,ax
		mov	word [bp-86],cx
		mov	word [bp-84],bx
		mov	word [bp-82],dx
		mov	word [bp-80],di
		jmp	..@j4935
..@j4923:
		lea	ax,[bp-90]
		push	ax
		lea	ax,[bp-70]
		push	ax
		mov	ax,word [bp-16]
		neg	ax
		push	ax
		call	SYSTEM_$$_DIY_UTIL_SHR$LONGWORD$QWORD$SMALLINT
		mov	dx,word [bp-90]
		mov	cx,word [bp-88]
		mov	bx,0
		mov	ax,0
		mov	word [bp-86],dx
		mov	word [bp-84],cx
		mov	word [bp-82],bx
		mov	word [bp-80],ax
..@j4935:
		mov	bx,word [bp-86]
		mov	ax,word [bp-84]
		mov	dx,word [bp-82]
		mov	cx,word [bp-80]
		cmp	cx,0
		jne	..@j4945
		cmp	dx,0
		jne	..@j4945
		cmp	ax,0
		jne	..@j4945
		cmp	bx,0
		jne	..@j4945
		jmp	..@j4944
..@j4944:
		push	bp
		lea	ax,[bp-148]
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-64]
		push	word [bp-66]
		push	word [bp-68]
		push	word [bp-70]
		mov	ax,0
		push	ax
		call	SYSTEM$_$STR_REAL$crcEDBAA446_$$_GEN_DIGITS_64$TASCIIDIGITS$SMALLINT$QWORD$BOOLEAN$$SMALLINT
		mov	word [bp-56],ax
		jmp	..@j4958
..@j4945:
		push	bp
		push	word [bp-80]
		push	word [bp-82]
		push	word [bp-84]
		push	word [bp-86]
		push	word [bp-64]
		push	word [bp-66]
		push	word [bp-68]
		push	word [bp-70]
		mov	ax,-30009
		push	ax
		mov	ax,8964
		push	ax
		mov	ax,-30232
		push	ax
		mov	ax,0
		push	ax
		lea	ax,[bp-86]
		push	ax
		lea	ax,[bp-70]
		push	ax
		call	SYSTEM$_$STR_REAL$crcEDBAA446_$$_U128_DIV_U64_TO_U64$QWORD$QWORD$QWORD$QWORD$QWORD$$BOOLEAN
		test	al,al
		je	..@j4959
		jmp	..@j4960
..@j4960:
..@j4959:
		push	bp
		lea	ax,[bp-148]
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-80]
		push	word [bp-82]
		push	word [bp-84]
		push	word [bp-86]
		mov	ax,0
		push	ax
		call	SYSTEM$_$STR_REAL$crcEDBAA446_$$_GEN_DIGITS_64$TASCIIDIGITS$SMALLINT$QWORD$BOOLEAN$$SMALLINT
		mov	word [bp-56],ax
		push	bp
		lea	ax,[bp-148]
		push	ax
		push	word [bp-56]
		push	word [bp-64]
		push	word [bp-66]
		push	word [bp-68]
		push	word [bp-70]
		cmp	word [bp-56],0
		mov	al,0
		jle	..@j4995
		inc	ax
..@j4995:
		push	ax
		call	SYSTEM$_$STR_REAL$crcEDBAA446_$$_GEN_DIGITS_64$TASCIIDIGITS$SMALLINT$QWORD$BOOLEAN$$SMALLINT
		add	word [bp-56],ax
..@j4958:
		mov	ax,word [bp-56]
		mov	word [bp-50],ax
		mov	word [bp-108],0
		mov	word [bp-106],0
		cmp	word [bp-16],0
		jl	..@j5000
		jmp	..@j5001
..@j5000:
	ALIGN 2
		mov	ax,word [bp-16]
		mov	word [bp-100],ax
		lea	di,[bp-16]
		mov	word [bp-150],bp
		cmp	word [di],-64
		jle	..@j5011
		jmp	..@j5012
..@j5011:
		mov	word [bp-78],-1
		mov	word [bp-76],-1
		mov	word [bp-74],-1
		mov	word [bp-72],-1
		mov	cx,word [di]
		neg	cx
		sub	cx,64
		mov	dx,1
		mov	ax,0
		and	cx,31
		jz	..@j5017
..@j5018:
		shl	dx,1
		rcl	ax,1
		loop	..@j5018
..@j5017:
		sub	dx,1
		sbb	ax,0
		mov	word [bp-94],dx
		mov	word [bp-92],ax
		jmp	..@j5019
..@j5012:
		mov	cx,word [di]
		neg	cx
		mov	si,1
		mov	ax,0
		mov	dx,0
		mov	bx,0
		cmp	cx,64
		jl	..@j5022
		xor	si,si
		xor	ax,ax
		xor	dx,dx
		xor	bx,bx
		jmp	..@j5024
..@j5022:
		test	cx,cx
		je	..@j5024
..@j5023:
		shl	si,1
		rcl	ax,1
		rcl	dx,1
		rcl	bx,1
		loop	..@j5023
..@j5024:
		sub	si,1
		sbb	ax,0
		sbb	dx,0
		sbb	bx,0
		mov	word [bp-78],si
		mov	word [bp-76],ax
		mov	word [bp-74],dx
		mov	word [bp-72],bx
		mov	word [bp-94],0
		mov	word [bp-92],0
..@j5019:
		mov	cx,word [bp-28]
		mov	dx,word [bp-26]
		mov	ax,word [bp-24]
		mov	bx,word [bp-22]
		and	cx,word [bp-78]
		and	dx,word [bp-76]
		and	ax,word [bp-74]
		and	bx,word [bp-72]
		mov	word [bp-70],cx
		mov	word [bp-68],dx
		mov	word [bp-66],ax
		mov	word [bp-64],bx
		mov	cx,word [bp-20]
		mov	bx,word [bp-18]
		mov	ax,word [bp-94]
		mov	dx,word [bp-92]
		and	ax,cx
		and	dx,bx
		mov	word [bp-90],ax
		mov	word [bp-88],dx
		jmp	..@j5032
	ALIGN 2
..@j5031:
		lea	di,[bp-86]
		push	ss
		pop	es
		lea	si,[bp-70]
		cld
		mov	cx,4
		rep
		movsw
		mov	ax,word [bp-90]
		mov	word [bp-98],ax
		mov	ax,word [bp-88]
		mov	word [bp-96],ax
		lea	ax,[bp-90]
		push	ax
		lea	ax,[bp-70]
		push	ax
		mov	ax,2
		push	ax
		call	SYSTEM_$$_DIY_UTIL_SHL$LONGWORD$QWORD$SMALLINT
		lea	di,[bp-156]
		push	ss
		pop	es
		lea	si,[bp-86]
		cld
		mov	cx,4
		rep
		movsw
		mov	ax,word [bp-98]
		mov	word [bp-160],ax
		mov	ax,word [bp-96]
		mov	word [bp-158],ax
		mov	ax,word [bp-70]
		mov	dx,word [bp-68]
		mov	cx,word [bp-66]
		mov	bx,word [bp-64]
		add	ax,word [bp-156]
		adc	dx,word [bp-154]
		adc	cx,word [bp-152]
		adc	bx,word [bp-150]
		mov	word [bp-168],ax
		mov	word [bp-166],dx
		mov	word [bp-164],cx
		mov	word [bp-162],bx
		mov	bx,word [bp-168]
		mov	ax,word [bp-166]
		mov	dx,word [bp-164]
		mov	cx,word [bp-162]
		cmp	cx,word [bp-64]
		jb	..@j5053
		ja	..@j5054
		cmp	dx,word [bp-66]
		jb	..@j5053
		ja	..@j5054
		cmp	ax,word [bp-68]
		jb	..@j5053
		ja	..@j5054
		cmp	bx,word [bp-70]
		jb	..@j5053
		jmp	..@j5054
		jmp	..@j5054
..@j5053:
		mov	dl,1
		jmp	..@j5055
..@j5054:
		mov	dl,0
..@j5055:
		mov	cx,0
		mov	dh,0
		mov	si,word [bp-90]
		mov	ax,word [bp-88]
		mov	bx,word [bp-160]
		mov	di,word [bp-158]
		add	bx,si
		adc	di,ax
		mov	ax,bx
		add	ax,dx
		adc	di,cx
		mov	word [bp-90],ax
		mov	word [bp-88],di
		lea	di,[bp-70]
		push	ss
		pop	es
		lea	si,[bp-168]
		cld
		mov	cx,4
		rep
		movsw
		lea	ax,[bp-94]
		push	ax
		lea	ax,[bp-78]
		push	ax
		mov	ax,1
		push	ax
		call	SYSTEM_$$_DIY_UTIL_SHR$LONGWORD$QWORD$SMALLINT
		inc	word [bp-100]
		lea	di,[bp-86]
		push	ss
		pop	es
		lea	si,[bp-70]
		cld
		mov	cx,4
		rep
		movsw
		mov	ax,word [bp-90]
		mov	word [bp-98],ax
		mov	ax,word [bp-88]
		mov	word [bp-96],ax
		lea	ax,[bp-98]
		push	ax
		lea	ax,[bp-86]
		push	ax
		mov	ax,word [bp-100]
		neg	ax
		push	ax
		call	SYSTEM_$$_DIY_UTIL_SHR$LONGWORD$QWORD$SMALLINT
		mov	si,word [bp-56]
		mov	al,byte [bp-86]
		mov	byte [bp+si-148],al
		mov	dx,word [bp-70]
		mov	cx,word [bp-68]
		mov	ax,word [bp-66]
		mov	bx,word [bp-64]
		and	dx,word [bp-78]
		and	cx,word [bp-76]
		and	ax,word [bp-74]
		and	bx,word [bp-72]
		mov	word [bp-70],dx
		mov	word [bp-68],cx
		mov	word [bp-66],ax
		mov	word [bp-64],bx
		mov	cx,word [bp-90]
		mov	bx,word [bp-88]
		mov	ax,word [bp-94]
		mov	dx,word [bp-92]
		and	ax,cx
		and	dx,bx
		mov	word [bp-90],ax
		mov	word [bp-88],dx
		inc	word [bp-56]
..@j5032:
		cmp	word [bp-100],-61
		jl	..@j5081
		jmp	..@j5033
..@j5081:
		mov	ax,word [bp-54]
		inc	ax
		cmp	ax,word [bp-56]
		jg	..@j5080
		jmp	..@j5033
..@j5080:
		mov	ax,word [bp-90]
		mov	bx,word [bp-88]
		mov	dx,0
		mov	cx,0
		or	ax,word [bp-70]
		or	bx,word [bp-68]
		or	dx,word [bp-66]
		or	cx,word [bp-64]
		cmp	cx,0
		jne	..@j5031
		cmp	dx,0
		jne	..@j5031
		cmp	bx,0
		jne	..@j5031
		cmp	ax,0
		jne	..@j5031
		jmp	..@j5033
..@j5033:
		mov	ax,word [bp-54]
		inc	ax
		cmp	ax,word [bp-56]
		jle	..@j5082
		jmp	..@j5083
..@j5082:
		mov	dx,word [bp-90]
		mov	ax,word [bp-88]
		mov	cx,0
		mov	bx,0
		or	dx,word [bp-70]
		or	ax,word [bp-68]
		or	cx,word [bp-66]
		or	bx,word [bp-64]
		cmp	bx,0
		jne	..@j5086
		cmp	cx,0
		jne	..@j5086
		cmp	ax,0
		jne	..@j5086
		cmp	dx,0
		jne	..@j5086
		jmp	..@j5087
..@j5086:
		mov	dl,1
		jmp	..@j5088
..@j5087:
		mov	dl,0
..@j5088:
		mov	ax,0
		mov	dh,0
		mov	word [bp-108],dx
		mov	word [bp-106],ax
		jmp	..@j5004
..@j5083:
		jmp	..@j5090
	ALIGN 2
..@j5089:
		mov	ax,word [bp-70]
		mov	dx,word [bp-68]
		mov	bx,word [bp-66]
		mov	si,word [bp-64]
		mov	cx,2
..@j5093:
		shl	ax,1
		rcl	dx,1
		rcl	bx,1
		rcl	si,1
		loop	..@j5093
		mov	word [bp-180],ax
		mov	word [bp-176],dx
		mov	cx,si
		mov	dx,word [bp-70]
		mov	ax,word [bp-68]
		mov	si,word [bp-66]
		mov	di,word [bp-64]
		add	dx,word [bp-180]
		adc	ax,word [bp-176]
		adc	si,bx
		adc	di,cx
		mov	word [bp-70],dx
		mov	word [bp-68],ax
		mov	word [bp-66],si
		mov	word [bp-64],di
		mov	ax,word [bp-78]
		mov	cx,word [bp-76]
		mov	bx,word [bp-74]
		mov	dx,word [bp-72]
		shr	dx,1
		rcr	bx,1
		rcr	cx,1
		rcr	ax,1
		mov	word [bp-78],ax
		mov	word [bp-76],cx
		mov	word [bp-74],bx
		mov	word [bp-72],dx
		inc	word [bp-100]
		mov	cx,word [bp-100]
		neg	cx
		mov	ax,word [bp-70]
		mov	dx,word [bp-68]
		mov	bx,word [bp-66]
		mov	si,word [bp-64]
		cmp	cx,64
		jl	..@j5099
		xor	ax,ax
		xor	dx,dx
		xor	bx,bx
		xor	si,si
		jmp	..@j5101
..@j5099:
		test	cx,cx
		je	..@j5101
..@j5100:
		shr	si,1
		rcr	bx,1
		rcr	dx,1
		rcr	ax,1
		loop	..@j5100
..@j5101:
		mov	si,word [bp-56]
		mov	byte [bp+si-148],al
		mov	cx,word [bp-70]
		mov	ax,word [bp-68]
		mov	bx,word [bp-66]
		mov	dx,word [bp-64]
		and	cx,word [bp-78]
		and	ax,word [bp-76]
		and	bx,word [bp-74]
		and	dx,word [bp-72]
		mov	word [bp-70],cx
		mov	word [bp-68],ax
		mov	word [bp-66],bx
		mov	word [bp-64],dx
		inc	word [bp-56]
..@j5090:
		cmp	word [bp-100],-29
		jl	..@j5105
		jmp	..@j5091
..@j5105:
		mov	ax,word [bp-54]
		inc	ax
		cmp	ax,word [bp-56]
		jg	..@j5104
		jmp	..@j5091
..@j5104:
		mov	bx,word [bp-70]
		mov	ax,word [bp-68]
		mov	dx,word [bp-66]
		mov	cx,word [bp-64]
		cmp	cx,0
		jne	..@j5089
		cmp	dx,0
		jne	..@j5089
		cmp	ax,0
		jne	..@j5089
		cmp	bx,0
		jne	..@j5089
		jmp	..@j5091
..@j5091:
		mov	ax,word [bp-54]
		inc	ax
		cmp	ax,word [bp-56]
		jle	..@j5106
		jmp	..@j5107
..@j5106:
		mov	ax,word [bp-70]
		mov	bx,word [bp-68]
		mov	dx,word [bp-66]
		mov	cx,word [bp-64]
		cmp	cx,0
		jne	..@j5110
		cmp	dx,0
		jne	..@j5110
		cmp	bx,0
		jne	..@j5110
		cmp	ax,0
		jne	..@j5110
		jmp	..@j5111
..@j5110:
		mov	dl,1
		jmp	..@j5112
..@j5111:
		mov	dl,0
..@j5112:
		mov	ax,0
		mov	dh,0
		mov	word [bp-108],dx
		mov	word [bp-106],ax
		jmp	..@j5004
..@j5107:
		mov	ax,word [bp-78]
		mov	word [bp-104],ax
		mov	ax,word [bp-76]
		mov	word [bp-102],ax
		mov	ax,word [bp-70]
		mov	word [bp-108],ax
		mov	ax,word [bp-68]
		mov	word [bp-106],ax
		jmp	..@j5118
	ALIGN 2
..@j5117:
		mov	ax,word [bp-108]
		mov	dx,word [bp-106]
		shl	ax,1
		rcl	dx,1
		shl	ax,1
		rcl	dx,1
		add	word [bp-108],ax
		adc	word [bp-106],dx
		mov	ax,word [bp-104]
		mov	dx,word [bp-102]
		shr	dx,1
		rcr	ax,1
		mov	word [bp-104],ax
		mov	word [bp-102],dx
		inc	word [bp-100]
		mov	cx,word [bp-100]
		neg	cx
		mov	ax,word [bp-108]
		mov	dx,word [bp-106]
		and	cx,31
		jz	..@j5124
..@j5125:
		shr	dx,1
		rcr	ax,1
		loop	..@j5125
..@j5124:
		mov	si,word [bp-56]
		mov	byte [bp+si-148],al
		mov	cx,word [bp-108]
		mov	bx,word [bp-106]
		mov	ax,word [bp-104]
		mov	dx,word [bp-102]
		and	ax,cx
		and	dx,bx
		mov	word [bp-108],ax
		mov	word [bp-106],dx
		inc	word [bp-56]
..@j5118:
		mov	ax,word [bp-54]
		inc	ax
		cmp	ax,word [bp-56]
		jg	..@j5128
		jmp	..@j5119
..@j5128:
		mov	ax,word [bp-108]
		mov	dx,word [bp-106]
		cmp	dx,0
		jne	..@j5117
		cmp	ax,0
		jne	..@j5117
		jmp	..@j5119
..@j5119:
		jmp	..@j5004
..@j5004:
..@j5001:
		mov	dx,word [bp-108]
		mov	ax,word [bp-106]
		cmp	ax,0
		jne	..@j5131
		cmp	dx,0
		jne	..@j5131
		jmp	..@j5130
..@j5131:
		mov	ax,word [bp-54]
		inc	ax
		cmp	ax,word [bp-56]
		jle	..@j5129
		jmp	..@j5130
..@j5129:
		mov	ax,word [bp-54]
		add	ax,2
		mov	word [bp-56],ax
		mov	si,word [bp-54]
		inc	si
		mov	byte [bp+si-148],1
..@j5130:
		mov	ax,word [bp-56]
		cmp	ax,word [bp-54]
		jg	..@j5136
		jmp	..@j5137
..@j5136:
		push	bp
		lea	ax,[bp-148]
		push	ax
		lea	ax,[bp-56]
		push	ax
		push	word [bp-54]
		mov	ax,1
		push	ax
		call	SYSTEM$_$STR_REAL$crcEDBAA446_$$_ROUND_DIGITS$TASCIIDIGITS$SMALLINT$SMALLINT$BOOLEAN$$SMALLINT
		add	word [bp-50],ax
..@j5137:
		cmp	word [bp+22],0
		jge	..@j5148
		jmp	..@j5149
..@j5148:
		push	bp
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		mov	al,byte [bp-61]
		mov	ah,0
		push	ax
		lea	ax,[bp-148]
		push	ax
		push	word [bp-56]
		mov	dx,word [bp-30]
		mov	ax,word [bp-50]
		sub	ax,dx
		push	ax
		push	word [bp+24]
		push	word [bp+22]
		call	SYSTEM$_$STR_REAL$crcEDBAA446_$$_TRY_RETURN_FIXED$crc15F54820
		test	al,al
		jne	..@j5150
		jmp	..@j5151
..@j5150:
		jmp	..@j4684
..@j5151:
..@j5149:
		mov	ax,word [bp-56]
		cmp	ax,word [bp-60]
		jg	..@j5170
		jmp	..@j5171
..@j5170:
		push	bp
		lea	ax,[bp-148]
		push	ax
		lea	ax,[bp-56]
		push	ax
		push	word [bp-60]
		mov	ax,0
		push	ax
		call	SYSTEM$_$STR_REAL$crcEDBAA446_$$_ROUND_DIGITS$TASCIIDIGITS$SMALLINT$SMALLINT$BOOLEAN$$SMALLINT
		add	word [bp-50],ax
..@j5171:
		push	bp
		mov	ax,word [bp+6]
		push	ax
		push	word [bp+4]
		mov	al,byte [bp-61]
		mov	ah,0
		push	ax
		lea	ax,[bp-148]
		push	ax
		push	word [bp-56]
		push	word [bp-60]
		mov	dx,word [bp-30]
		mov	ax,word [bp-50]
		sub	ax,dx
		dec	ax
		push	ax
		push	word [bp-52]
		push	word [bp+24]
		call	SYSTEM$_$STR_REAL$crcEDBAA446_$$_RETURN_EXPONENTIAL$crcC3D7D0D1
..@j4684:
		mov	sp,bp
		pop	bp
		ret	22
EXTERN	SYSTEM$_$STR_REAL$crcEDBAA446_$$_ROUND_DIGITS$TASCIIDIGITS$SMALLINT$SMALLINT$BOOLEAN$$SMALLINT
EXTERN	SYSTEM$_$STR_REAL$crcEDBAA446_$$_U128_DIV_U64_TO_U64$QWORD$QWORD$QWORD$QWORD$QWORD$$BOOLEAN
EXTERN	SYSTEM$_$STR_REAL$crcEDBAA446_$$_GEN_DIGITS_64$TASCIIDIGITS$SMALLINT$QWORD$BOOLEAN$$SMALLINT
EXTERN	SYSTEM_$$_DIY_UTIL_SHR$LONGWORD$QWORD$SMALLINT
EXTERN	SYSTEM_$$_DIY_FP_MULTIPLY$TDIY_FP$TDIY_FP$BOOLEAN$$TDIY_FP
EXTERN	SYSTEM_$$_DIY_FP_CACHED_POWER10$SMALLINT$TDIY_FP_POWER_OF_10
EXTERN	SYSTEM$_$STR_REAL$crcEDBAA446_$$_K_COMP$SMALLINT$SMALLINT$$SMALLINT
EXTERN	SYSTEM_$$_DIY_UTIL_SHL$LONGWORD$QWORD$SMALLINT
EXTERN	SYSTEM_$$_BSRQWORD$QWORD$$BYTE
EXTERN	TC_$SYSTEM_$$_C_STR_QNAN
EXTERN	SYSTEM$_$STR_REAL$crcEDBAA446_$$_RETURN_SPECIAL$OPENSTRING$SMALLINT$SHORTSTRING$SMALLINT
EXTERN	TC_$SYSTEM_$$_C_STR_INF
EXTERN	SYSTEM$_$STR_REAL$crcEDBAA446_$$_RETURN_EXPONENTIAL$crcC3D7D0D1
EXTERN	SYSTEM$_$STR_REAL$crcEDBAA446_$$_TRY_RETURN_FIXED$crc15F54820
EXTERN	TC_$SYSTEM_$$_FLOAT_FORMAT
