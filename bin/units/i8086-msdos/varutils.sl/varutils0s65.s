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
	GLOBAL VARUTILS_$$_DUMPVARIANT$TEXT$SHORTSTRING$TVARDATA
VARUTILS_$$_DUMPVARIANT$TEXT$SHORTSTRING$TVARDATA:
		push	bp
		mov	bp,sp
		sub	sp,282
		mov	word [bp-274],0
		mov	ax,1
		push	ax
		lea	ax,[bp-14]
		push	ax
		lea	ax,[bp-8]
		push	ax
		call	FPC_PUSHEXCEPTADDR
		push	ax
		call	FPC_SETJMP
		push	ax
		test	ax,ax
		jne	..@j3577
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word _$VARUTILS$_Ld14
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word _$VARUTILS$_Ld15
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-272]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM_$$_HEXSTR$NEARPOINTER$$SHORTSTRING
		lea	ax,[bp-272]
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word _$VARUTILS$_Ld16
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_writeln_end
		call	FPC_IOCHECK
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		and	ax,16384
		cmp	ax,16384
		je	..@j3615
		jmp	..@j3616
..@j3615:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word _$VARUTILS$_Ld17
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_writeln_end
		call	FPC_IOCHECK
..@j3616:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		and	ax,8192
		cmp	ax,8192
		je	..@j3625
		jmp	..@j3626
..@j3625:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word _$VARUTILS$_Ld18
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_writeln_end
		call	FPC_IOCHECK
..@j3626:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		and	ax,-28672
		test	ax,ax
		jne	..@j3635
		jmp	..@j3636
..@j3635:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word _$VARUTILS$_Ld19
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-274]
		push	ax
		mov	bx,word [bp+4]
		mov	dx,word [bx]
		mov	ax,0
		push	ax
		push	dx
		mov	ax,4
		push	ax
		call	SYSUTILS_$$_INTTOHEX$LONGINT$SMALLINT$$ANSISTRING
		push	word [bp-274]
		call	fpc_write_text_ansistr
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_writeln_end
		call	FPC_IOCHECK
..@j3636:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		and	ax,4095
		cmp	ax,22
		jb	..@j3659
..@j3659:
		jc	..@j3657
		jmp	..@j3658
..@j3657:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word _$VARUTILS$_Ld20
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx]
		and	bx,4095
		mov	cl,8
		shl	bx,cl
		lea	ax,[TC_$VARUTILS_$$_VARTYPESTRINGS+bx]
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_writeln_end
		call	FPC_IOCHECK
		jmp	..@j3674
..@j3658:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		and	ax,4095
		cmp	ax,256
		je	..@j3675
		jmp	..@j3676
..@j3675:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word _$VARUTILS$_Ld21
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_writeln_end
		call	FPC_IOCHECK
		jmp	..@j3685
..@j3676:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		and	ax,4095
		cmp	ax,258
		je	..@j3686
		jmp	..@j3687
..@j3686:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word _$VARUTILS$_Ld22
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_writeln_end
		call	FPC_IOCHECK
		jmp	..@j3696
..@j3687:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word _$VARUTILS$_Ld23
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-274]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		and	ax,4095
		mov	dx,0
		push	dx
		push	ax
		mov	ax,4
		push	ax
		call	SYSUTILS_$$_INTTOHEX$LONGINT$SMALLINT$$ANSISTRING
		push	word [bp-274]
		call	fpc_write_text_ansistr
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_writeln_end
		call	FPC_IOCHECK
..@j3696:
..@j3685:
..@j3674:
		call	fpc_get_output
		mov	word [bp-280],ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-280]
		mov	ax,word _$VARUTILS$_Ld24
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		push	word [bp-280]
		call	fpc_write_end
		call	FPC_IOCHECK
		mov	word [bp-2],0
		dec	word [bp-2]
	ALIGN 2
..@j3729:
		inc	word [bp-2]
		call	fpc_get_output
		mov	word [bp-282],ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-282]
		lea	ax,[bp-274]
		push	ax
		mov	bx,word [bp+4]
		mov	si,word [bp-2]
		mov	ax,0
		mov	dl,byte [bx+si+2]
		mov	dh,0
		push	ax
		push	dx
		mov	ax,2
		push	ax
		call	SYSUTILS_$$_INTTOHEX$LONGINT$SMALLINT$$ANSISTRING
		push	word [bp-274]
		call	fpc_write_text_ansistr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-282]
		mov	ax,32
		push	ax
		call	fpc_write_text_char
		call	FPC_IOCHECK
		push	word [bp-282]
		call	fpc_write_end
		call	FPC_IOCHECK
		cmp	word [bp-2],13
		jl	..@j3729
		call	fpc_get_output
		mov	word [bp-276],ax
		push	word [bp-276]
		call	fpc_writeln_end
		call	FPC_IOCHECK
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		and	ax,8192
		cmp	ax,8192
		je	..@j3756
		jmp	..@j3757
..@j3756:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word _$VARUTILS$_Ld25
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word _$VARUTILS$_Ld15
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-272]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM_$$_HEXSTR$NEARPOINTER$$SHORTSTRING
		lea	ax,[bp-272]
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word _$VARUTILS$_Ld26
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_writeln_end
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_writeln_end
		call	FPC_IOCHECK
		jmp	..@j3577
..@j3757:
		mov	bx,word [bp+4]
		cmp	word [bx],0
		jne	..@j3796
		jmp	..@j3797
..@j3796:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word _$VARUTILS$_Ld27
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_write_end
		call	FPC_IOCHECK
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		and	ax,16384
		cmp	ax,16384
		je	..@j3806
		jmp	..@j3808
..@j3808:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		and	ax,4095
		cmp	ax,12
		je	..@j3806
		jmp	..@j3807
..@j3806:
		mov	bx,word [bp+4]
		cmp	word [bx+8],0
		je	..@j3809
		jmp	..@j3810
..@j3809:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word _$VARUTILS$_Ld28
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_writeln_end
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word _$VARUTILS$_Ld25
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word _$VARUTILS$_Ld15
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-272]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM_$$_HEXSTR$NEARPOINTER$$SHORTSTRING
		lea	ax,[bp-272]
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word _$VARUTILS$_Ld26
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_writeln_end
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_writeln_end
		call	FPC_IOCHECK
		jmp	..@j3577
..@j3810:
..@j3807:
		mov	bx,word [bp+4]
		mov	ax,word [bx]
		cmp	ax,1
		jb	..@j3858
		dec	ax
		je	..@j3859
		dec	ax
		je	..@j3860
		dec	ax
		je	..@j3861
		dec	ax
		je	..@j3862
		dec	ax
		je	..@j3863
		dec	ax
		je	..@j3864
		dec	ax
		je	..@j3865
		dec	ax
		je	..@j3866
		sub	ax,2
		je	..@j3867
		dec	ax
		je	..@j3868
		dec	ax
		je	..@j3869
		sub	ax,4
		je	..@j3870
		dec	ax
		je	..@j3871
		dec	ax
		je	..@j3872
		dec	ax
		je	..@j3873
		dec	ax
		je	..@j3874
		dec	ax
		je	..@j3875
		sub	ax,235
		je	..@j3876
		sub	ax,16129
		je	..@j3877
		dec	ax
		je	..@j3878
		dec	ax
		je	..@j3879
		dec	ax
		je	..@j3880
		dec	ax
		je	..@j3881
		dec	ax
		je	..@j3882
		dec	ax
		je	..@j3883
		dec	ax
		je	..@j3884
		sub	ax,2
		je	..@j3885
		dec	ax
		je	..@j3886
		dec	ax
		je	..@j3869
		sub	ax,4
		je	..@j3887
		dec	ax
		je	..@j3888
		dec	ax
		je	..@j3889
		dec	ax
		je	..@j3890
		dec	ax
		je	..@j3891
		dec	ax
		je	..@j3892
		sub	ax,235
		je	..@j3893
		jmp	..@j3858
..@j3859:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word _$VARUTILS$_Ld29
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_write_end
		call	FPC_IOCHECK
		jmp	..@j3857
..@j3860:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	fpc_write_text_sint
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_write_end
		call	FPC_IOCHECK
		jmp	..@j3857
..@j3861:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+10]
		push	word [bx+8]
		call	fpc_write_text_longint
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_write_end
		call	FPC_IOCHECK
		jmp	..@j3857
..@j3862:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,-32767
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+4]
		wait fld	dword [bx+8]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		call	fpc_write_text_float
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_write_end
		call	FPC_IOCHECK
		jmp	..@j3857
..@j3863:
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,-32767
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+4]
		wait fld	qword [bx+8]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		call	fpc_write_text_float
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_write_end
		call	FPC_IOCHECK
		jmp	..@j3857
..@j3864:
		mov	ax,-1
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,-32767
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+14]
		push	word [bx+12]
		push	word [bx+10]
		push	word [bx+8]
		call	fpc_write_text_currency
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_write_end
		call	FPC_IOCHECK
		jmp	..@j3857
..@j3865:
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,-32767
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+4]
		wait fld	qword [bx+8]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		call	fpc_write_text_float
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_write_end
		call	FPC_IOCHECK
		jmp	..@j3857
..@j3866:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	fpc_write_text_unicodestr
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_write_end
		call	FPC_IOCHECK
		jmp	..@j3857
..@j3867:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-274]
		push	ax
		mov	bx,word [bp+4]
		mov	si,word [bx+8]
		mov	cx,word [bx+10]
		mov	ax,0
		mov	dx,0
		push	dx
		push	ax
		push	cx
		push	si
		mov	ax,8
		push	ax
		call	SYSUTILS_$$_INTTOHEX$QWORD$SMALLINT$$ANSISTRING
		push	word [bp-274]
		call	fpc_write_text_ansistr
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_write_end
		call	FPC_IOCHECK
		jmp	..@j3857
..@j3868:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		or	ax,ax
		mov	al,0
		je	..@j3994
		inc	ax
..@j3994:
		push	ax
		call	fpc_write_text_boolean
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_write_end
		call	FPC_IOCHECK
		jmp	..@j3857
..@j3869:
		call	fpc_get_output
		mov	word [bp-278],ax
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		push	word [bp-278]
		mov	ax,word _$VARUTILS$_Ld30
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		push	word [bp-278]
		call	fpc_writeln_end
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-272]
		push	ax
		mov	ax,255
		push	ax
		mov	ax,word [bp+6]
		push	ax
		mov	ax,word _$VARUTILS$_Ld31
		push	ax
		call	fpc_shortstr_concat
		lea	ax,[bp-272]
		push	ax
		mov	bx,word [bp+4]
		mov	ax,word [bx+8]
		push	ax
		call	VARUTILS_$$_DUMPVARIANT$TEXT$SHORTSTRING$TVARDATA
		jmp	..@j3577
		jmp	..@j3857
..@j3870:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+4]
		mov	al,byte [bx+8]
		cbw
		mov	dx,ax
		push	dx
		call	fpc_write_text_sint
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_write_end
		call	FPC_IOCHECK
		jmp	..@j3857
..@j3871:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+4]
		mov	al,byte [bx+8]
		mov	ah,0
		push	ax
		call	fpc_write_text_uint
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_write_end
		call	FPC_IOCHECK
		jmp	..@j3857
..@j3872:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	fpc_write_text_uint
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_write_end
		call	FPC_IOCHECK
		jmp	..@j3857
..@j3873:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+10]
		push	word [bx+8]
		call	fpc_write_text_longword
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_write_end
		call	FPC_IOCHECK
		jmp	..@j3857
..@j3874:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+14]
		push	word [bx+12]
		push	word [bx+10]
		push	word [bx+8]
		call	fpc_write_text_int64
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_write_end
		call	FPC_IOCHECK
		jmp	..@j3857
..@j3875:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+14]
		push	word [bx+12]
		push	word [bx+10]
		push	word [bx+8]
		call	fpc_write_text_qword
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_write_end
		call	FPC_IOCHECK
		jmp	..@j3857
..@j3876:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+4]
		push	word [bx+8]
		call	fpc_write_text_ansistr
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_write_end
		call	FPC_IOCHECK
		jmp	..@j3857
..@j3877:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word _$VARUTILS$_Ld29
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_write_end
		call	FPC_IOCHECK
		jmp	..@j3857
..@j3878:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx]
		call	fpc_write_text_sint
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_write_end
		call	FPC_IOCHECK
		jmp	..@j3857
..@j3879:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx]
		call	fpc_write_text_sint
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_write_end
		call	FPC_IOCHECK
		jmp	..@j3857
..@j3880:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,-32767
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fld	dword [bx]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		call	fpc_write_text_float
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_write_end
		call	FPC_IOCHECK
		jmp	..@j3857
..@j3881:
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,-32767
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fld	qword [bx]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		call	fpc_write_text_float
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_write_end
		call	FPC_IOCHECK
		jmp	..@j3857
..@j3882:
		mov	ax,-1
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,-32767
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx+6]
		push	word [bx+4]
		push	word [bx+2]
		push	word [bx]
		call	fpc_write_text_currency
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_write_end
		call	FPC_IOCHECK
		jmp	..@j3857
..@j3883:
		mov	ax,0
		push	ax
		mov	ax,1
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,-32767
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		wait fld	qword [bx]
		sub	sp,10
		mov	bx,sp
		wait fstp	tword [bx]
		DB	09bh
		call	fpc_write_text_float
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_write_end
		call	FPC_IOCHECK
		jmp	..@j3857
..@j3884:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx]
		call	fpc_write_text_unicodestr
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_write_end
		call	FPC_IOCHECK
		jmp	..@j3857
..@j3885:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-274]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	si,word [bx]
		mov	cx,word [bx+2]
		mov	ax,0
		mov	dx,0
		push	dx
		push	ax
		push	cx
		push	si
		mov	ax,8
		push	ax
		call	SYSUTILS_$$_INTTOHEX$QWORD$SMALLINT$$ANSISTRING
		push	word [bp-274]
		call	fpc_write_text_ansistr
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_write_end
		call	FPC_IOCHECK
		jmp	..@j3857
..@j3886:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	ax,word [bx]
		or	ax,ax
		mov	al,0
		je	..@j4177
		inc	ax
..@j4177:
		push	ax
		call	fpc_write_text_boolean
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_write_end
		call	FPC_IOCHECK
		jmp	..@j3857
..@j3887:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	al,byte [bx]
		cbw
		mov	dx,ax
		push	dx
		call	fpc_write_text_sint
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_write_end
		call	FPC_IOCHECK
		jmp	..@j3857
..@j3888:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		mov	al,byte [bx]
		mov	ah,0
		push	ax
		call	fpc_write_text_uint
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_write_end
		call	FPC_IOCHECK
		jmp	..@j3857
..@j3889:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx]
		call	fpc_write_text_uint
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_write_end
		call	FPC_IOCHECK
		jmp	..@j3857
..@j3890:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx+2]
		push	word [bx]
		call	fpc_write_text_longword
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_write_end
		call	FPC_IOCHECK
		jmp	..@j3857
..@j3891:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx+6]
		push	word [bx+4]
		push	word [bx+2]
		push	word [bx]
		call	fpc_write_text_int64
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_write_end
		call	FPC_IOCHECK
		jmp	..@j3857
..@j3892:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx+6]
		push	word [bx+4]
		push	word [bx+2]
		push	word [bx]
		call	fpc_write_text_qword
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_write_end
		call	FPC_IOCHECK
		jmp	..@j3857
..@j3893:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	bx,word [bp+4]
		mov	bx,word [bx+8]
		push	word [bx]
		call	fpc_write_text_ansistr
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_write_end
		call	FPC_IOCHECK
		jmp	..@j3857
..@j3858:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word _$VARUTILS$_Ld32
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_write_end
		call	FPC_IOCHECK
..@j3857:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	ax,93
		push	ax
		call	fpc_write_text_char
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_writeln_end
		call	FPC_IOCHECK
..@j3797:
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word _$VARUTILS$_Ld25
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word [bp+6]
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word _$VARUTILS$_Ld15
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		lea	ax,[bp-272]
		push	ax
		mov	ax,word [bp+4]
		push	ax
		call	SYSTEM_$$_HEXSTR$NEARPOINTER$$SHORTSTRING
		lea	ax,[bp-272]
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,0
		push	ax
		mov	ax,0
		push	ax
		mov	ax,word [bp+8]
		push	ax
		mov	ax,word _$VARUTILS$_Ld26
		push	ax
		call	fpc_write_text_shortstr
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_writeln_end
		call	FPC_IOCHECK
		mov	ax,word [bp+8]
		push	ax
		call	fpc_writeln_end
		call	FPC_IOCHECK
..@j3577:
		call	FPC_POPADDRSTACK
		lea	ax,[bp-274]
		push	ax
		call	fpc_ansistr_decr_ref
		pop	ax
		test	ax,ax
		je	..@j3578
		call	FPC_RERAISE
..@j3578:
		mov	sp,bp
		pop	bp
		ret	6
EXTERN	FPC_RERAISE
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_POPADDRSTACK
EXTERN	_$VARUTILS$_Ld32
EXTERN	fpc_write_text_qword
EXTERN	fpc_write_text_int64
EXTERN	fpc_write_text_longword
EXTERN	fpc_write_text_uint
EXTERN	fpc_shortstr_concat
EXTERN	_$VARUTILS$_Ld31
EXTERN	_$VARUTILS$_Ld30
EXTERN	fpc_write_text_boolean
EXTERN	SYSUTILS_$$_INTTOHEX$QWORD$SMALLINT$$ANSISTRING
EXTERN	fpc_write_text_unicodestr
EXTERN	fpc_write_text_currency
EXTERN	fpc_write_text_float
EXTERN	fpc_write_text_longint
EXTERN	fpc_write_text_sint
EXTERN	_$VARUTILS$_Ld29
EXTERN	_$VARUTILS$_Ld28
EXTERN	_$VARUTILS$_Ld27
EXTERN	_$VARUTILS$_Ld26
EXTERN	_$VARUTILS$_Ld25
EXTERN	fpc_write_text_char
EXTERN	fpc_write_end
EXTERN	_$VARUTILS$_Ld24
EXTERN	fpc_get_output
EXTERN	_$VARUTILS$_Ld23
EXTERN	_$VARUTILS$_Ld22
EXTERN	_$VARUTILS$_Ld21
EXTERN	TC_$VARUTILS_$$_VARTYPESTRINGS
EXTERN	_$VARUTILS$_Ld20
EXTERN	fpc_write_text_ansistr
EXTERN	SYSUTILS_$$_INTTOHEX$LONGINT$SMALLINT$$ANSISTRING
EXTERN	_$VARUTILS$_Ld19
EXTERN	_$VARUTILS$_Ld18
EXTERN	_$VARUTILS$_Ld17
EXTERN	fpc_writeln_end
EXTERN	_$VARUTILS$_Ld16
EXTERN	SYSTEM_$$_HEXSTR$NEARPOINTER$$SHORTSTRING
EXTERN	_$VARUTILS$_Ld15
EXTERN	FPC_IOCHECK
EXTERN	fpc_write_text_shortstr
EXTERN	_$VARUTILS$_Ld14
EXTERN	FPC_SETJMP
EXTERN	FPC_PUSHEXCEPTADDR
