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
	GLOBAL MD5_$$_MD5TRANSFORM$TMDCONTEXT$POINTER
MD5_$$_MD5TRANSFORM$TMDCONTEXT$POINTER:
		push	bp
		mov	bp,sp
		sub	sp,80
		push	word [bp+4]
		lea	ax,[bp-80]
		push	ax
		mov	ax,64
		push	ax
		call	MD5_$$_INVERT$POINTER$POINTER$WORD
		mov	bx,word [bp+6]
		mov	ax,word [bx+8]
		mov	word [bp-4],ax
		mov	ax,word [bx+10]
		mov	word [bp-2],ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+12]
		mov	word [bp-8],ax
		mov	ax,word [bx+14]
		mov	word [bp-6],ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+16]
		mov	word [bp-12],ax
		mov	ax,word [bx+18]
		mov	word [bp-10],ax
		mov	bx,word [bp+6]
		mov	ax,word [bx+20]
		mov	word [bp-16],ax
		mov	ax,word [bx+22]
		mov	word [bp-14],ax
		push	bp
		lea	ax,[bp-4]
		push	ax
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-78]
		push	word [bp-80]
		mov	ax,7
		push	ax
		mov	ax,-10390
		push	ax
		mov	ax,-23432
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R1$crc6649ABE3
		push	bp
		lea	ax,[bp-16]
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-74]
		push	word [bp-76]
		mov	ax,12
		push	ax
		mov	ax,-5945
		push	ax
		mov	ax,-18602
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R1$crc6649ABE3
		push	bp
		lea	ax,[bp-12]
		push	ax
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-70]
		push	word [bp-72]
		mov	ax,17
		push	ax
		mov	ax,9248
		push	ax
		mov	ax,28891
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R1$crc6649ABE3
		push	bp
		lea	ax,[bp-8]
		push	ax
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-66]
		push	word [bp-68]
		mov	ax,22
		push	ax
		mov	ax,-15939
		push	ax
		mov	ax,-12562
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R1$crc6649ABE3
		push	bp
		lea	ax,[bp-4]
		push	ax
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-62]
		push	word [bp-64]
		mov	ax,7
		push	ax
		mov	ax,-2692
		push	ax
		mov	ax,4015
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R1$crc6649ABE3
		push	bp
		lea	ax,[bp-16]
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-58]
		push	word [bp-60]
		mov	ax,12
		push	ax
		mov	ax,18311
		push	ax
		mov	ax,-14806
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R1$crc6649ABE3
		push	bp
		lea	ax,[bp-12]
		push	ax
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-54]
		push	word [bp-56]
		mov	ax,17
		push	ax
		mov	ax,-22480
		push	ax
		mov	ax,17939
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R1$crc6649ABE3
		push	bp
		lea	ax,[bp-8]
		push	ax
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-50]
		push	word [bp-52]
		mov	ax,22
		push	ax
		mov	ax,-698
		push	ax
		mov	ax,-27391
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R1$crc6649ABE3
		push	bp
		lea	ax,[bp-4]
		push	ax
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-46]
		push	word [bp-48]
		mov	ax,7
		push	ax
		mov	ax,27008
		push	ax
		mov	ax,-26408
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R1$crc6649ABE3
		push	bp
		lea	ax,[bp-16]
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-42]
		push	word [bp-44]
		mov	ax,12
		push	ax
		mov	ax,-29884
		push	ax
		mov	ax,-2129
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R1$crc6649ABE3
		push	bp
		lea	ax,[bp-12]
		push	ax
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-38]
		push	word [bp-40]
		mov	ax,17
		push	ax
		mov	ax,-1
		push	ax
		mov	ax,23473
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R1$crc6649ABE3
		push	bp
		lea	ax,[bp-8]
		push	ax
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-34]
		push	word [bp-36]
		mov	ax,22
		push	ax
		mov	ax,-30372
		push	ax
		mov	ax,-10306
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R1$crc6649ABE3
		push	bp
		lea	ax,[bp-4]
		push	ax
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-30]
		push	word [bp-32]
		mov	ax,7
		push	ax
		mov	ax,27536
		push	ax
		mov	ax,4386
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R1$crc6649ABE3
		push	bp
		lea	ax,[bp-16]
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-26]
		push	word [bp-28]
		mov	ax,12
		push	ax
		mov	ax,-616
		push	ax
		mov	ax,29075
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R1$crc6649ABE3
		push	bp
		lea	ax,[bp-12]
		push	ax
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-22]
		push	word [bp-24]
		mov	ax,17
		push	ax
		mov	ax,-22919
		push	ax
		mov	ax,17294
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R1$crc6649ABE3
		push	bp
		lea	ax,[bp-8]
		push	ax
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-18]
		push	word [bp-20]
		mov	ax,22
		push	ax
		mov	ax,18868
		push	ax
		mov	ax,2081
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R1$crc6649ABE3
		push	bp
		lea	ax,[bp-4]
		push	ax
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-74]
		push	word [bp-76]
		mov	ax,5
		push	ax
		mov	ax,-2530
		push	ax
		mov	ax,9570
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R2$crc6649ABE3
		push	bp
		lea	ax,[bp-16]
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-54]
		push	word [bp-56]
		mov	ax,9
		push	ax
		mov	ax,-16320
		push	ax
		mov	ax,-19648
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R2$crc6649ABE3
		push	bp
		lea	ax,[bp-12]
		push	ax
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-34]
		push	word [bp-36]
		mov	ax,14
		push	ax
		mov	ax,9822
		push	ax
		mov	ax,23121
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R2$crc6649ABE3
		push	bp
		lea	ax,[bp-8]
		push	ax
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-78]
		push	word [bp-80]
		mov	ax,20
		push	ax
		mov	ax,-5706
		push	ax
		mov	ax,-14422
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R2$crc6649ABE3
		push	bp
		lea	ax,[bp-4]
		push	ax
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-58]
		push	word [bp-60]
		mov	ax,5
		push	ax
		mov	ax,-10705
		push	ax
		mov	ax,4189
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R2$crc6649ABE3
		push	bp
		lea	ax,[bp-16]
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-38]
		push	word [bp-40]
		mov	ax,9
		push	ax
		mov	ax,580
		push	ax
		mov	ax,5203
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R2$crc6649ABE3
		push	bp
		lea	ax,[bp-12]
		push	ax
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-18]
		push	word [bp-20]
		mov	ax,14
		push	ax
		mov	ax,-10079
		push	ax
		mov	ax,-6527
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R2$crc6649ABE3
		push	bp
		lea	ax,[bp-8]
		push	ax
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-62]
		push	word [bp-64]
		mov	ax,20
		push	ax
		mov	ax,-6189
		push	ax
		mov	ax,-1080
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R2$crc6649ABE3
		push	bp
		lea	ax,[bp-4]
		push	ax
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-42]
		push	word [bp-44]
		mov	ax,5
		push	ax
		mov	ax,8673
		push	ax
		mov	ax,-12826
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R2$crc6649ABE3
		push	bp
		lea	ax,[bp-16]
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-22]
		push	word [bp-24]
		mov	ax,9
		push	ax
		mov	ax,-15561
		push	ax
		mov	ax,2006
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R2$crc6649ABE3
		push	bp
		lea	ax,[bp-12]
		push	ax
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-66]
		push	word [bp-68]
		mov	ax,14
		push	ax
		mov	ax,-2859
		push	ax
		mov	ax,3463
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R2$crc6649ABE3
		push	bp
		lea	ax,[bp-8]
		push	ax
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-46]
		push	word [bp-48]
		mov	ax,20
		push	ax
		mov	ax,17754
		push	ax
		mov	ax,5357
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R2$crc6649ABE3
		push	bp
		lea	ax,[bp-4]
		push	ax
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-26]
		push	word [bp-28]
		mov	ax,5
		push	ax
		mov	ax,-22045
		push	ax
		mov	ax,-5883
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R2$crc6649ABE3
		push	bp
		lea	ax,[bp-16]
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-70]
		push	word [bp-72]
		mov	ax,9
		push	ax
		mov	ax,-785
		push	ax
		mov	ax,-23560
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R2$crc6649ABE3
		push	bp
		lea	ax,[bp-12]
		push	ax
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-50]
		push	word [bp-52]
		mov	ax,14
		push	ax
		mov	ax,26479
		push	ax
		mov	ax,729
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R2$crc6649ABE3
		push	bp
		lea	ax,[bp-8]
		push	ax
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-30]
		push	word [bp-32]
		mov	ax,20
		push	ax
		mov	ax,-29398
		push	ax
		mov	ax,19594
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R2$crc6649ABE3
		push	bp
		lea	ax,[bp-4]
		push	ax
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-58]
		push	word [bp-60]
		mov	ax,4
		push	ax
		mov	ax,-6
		push	ax
		mov	ax,14658
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R3$crc6649ABE3
		push	bp
		lea	ax,[bp-16]
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-46]
		push	word [bp-48]
		mov	ax,11
		push	ax
		mov	ax,-30863
		push	ax
		mov	ax,-2431
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R3$crc6649ABE3
		push	bp
		lea	ax,[bp-12]
		push	ax
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-34]
		push	word [bp-36]
		mov	ax,16
		push	ax
		mov	ax,28061
		push	ax
		mov	ax,24866
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R3$crc6649ABE3
		push	bp
		lea	ax,[bp-8]
		push	ax
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-22]
		push	word [bp-24]
		mov	ax,23
		push	ax
		mov	ax,-539
		push	ax
		mov	ax,14348
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R3$crc6649ABE3
		push	bp
		lea	ax,[bp-4]
		push	ax
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-74]
		push	word [bp-76]
		mov	ax,4
		push	ax
		mov	ax,-23362
		push	ax
		mov	ax,-5564
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R3$crc6649ABE3
		push	bp
		lea	ax,[bp-16]
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-62]
		push	word [bp-64]
		mov	ax,11
		push	ax
		mov	ax,19422
		push	ax
		mov	ax,-12375
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R3$crc6649ABE3
		push	bp
		lea	ax,[bp-12]
		push	ax
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-50]
		push	word [bp-52]
		mov	ax,16
		push	ax
		mov	ax,-2373
		push	ax
		mov	ax,19296
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R3$crc6649ABE3
		push	bp
		lea	ax,[bp-8]
		push	ax
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-38]
		push	word [bp-40]
		mov	ax,23
		push	ax
		mov	ax,-16705
		push	ax
		mov	ax,-17296
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R3$crc6649ABE3
		push	bp
		lea	ax,[bp-4]
		push	ax
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-26]
		push	word [bp-28]
		mov	ax,4
		push	ax
		mov	ax,10395
		push	ax
		mov	ax,32454
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R3$crc6649ABE3
		push	bp
		lea	ax,[bp-16]
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-78]
		push	word [bp-80]
		mov	ax,11
		push	ax
		mov	ax,-5471
		push	ax
		mov	ax,10234
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R3$crc6649ABE3
		push	bp
		lea	ax,[bp-12]
		push	ax
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-66]
		push	word [bp-68]
		mov	ax,16
		push	ax
		mov	ax,-11025
		push	ax
		mov	ax,12421
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R3$crc6649ABE3
		push	bp
		lea	ax,[bp-8]
		push	ax
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-54]
		push	word [bp-56]
		mov	ax,23
		push	ax
		mov	ax,1160
		push	ax
		mov	ax,7429
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R3$crc6649ABE3
		push	bp
		lea	ax,[bp-4]
		push	ax
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-42]
		push	word [bp-44]
		mov	ax,4
		push	ax
		mov	ax,-9772
		push	ax
		mov	ax,-12231
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R3$crc6649ABE3
		push	bp
		lea	ax,[bp-16]
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-30]
		push	word [bp-32]
		mov	ax,11
		push	ax
		mov	ax,-6437
		push	ax
		mov	ax,-26139
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R3$crc6649ABE3
		push	bp
		lea	ax,[bp-12]
		push	ax
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-18]
		push	word [bp-20]
		mov	ax,16
		push	ax
		mov	ax,8098
		push	ax
		mov	ax,31992
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R3$crc6649ABE3
		push	bp
		lea	ax,[bp-8]
		push	ax
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-70]
		push	word [bp-72]
		mov	ax,23
		push	ax
		mov	ax,-15188
		push	ax
		mov	ax,22117
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R3$crc6649ABE3
		push	bp
		lea	ax,[bp-4]
		push	ax
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-78]
		push	word [bp-80]
		mov	ax,6
		push	ax
		mov	ax,-3031
		push	ax
		mov	ax,8772
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R4$crc6649ABE3
		push	bp
		lea	ax,[bp-16]
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-50]
		push	word [bp-52]
		mov	ax,10
		push	ax
		mov	ax,17194
		push	ax
		mov	ax,-105
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R4$crc6649ABE3
		push	bp
		lea	ax,[bp-12]
		push	ax
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-22]
		push	word [bp-24]
		mov	ax,15
		push	ax
		mov	ax,-21612
		push	ax
		mov	ax,9127
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R4$crc6649ABE3
		push	bp
		lea	ax,[bp-8]
		push	ax
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-58]
		push	word [bp-60]
		mov	ax,21
		push	ax
		mov	ax,-877
		push	ax
		mov	ax,-24519
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R4$crc6649ABE3
		push	bp
		lea	ax,[bp-4]
		push	ax
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-30]
		push	word [bp-32]
		mov	ax,6
		push	ax
		mov	ax,25947
		push	ax
		mov	ax,22979
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R4$crc6649ABE3
		push	bp
		lea	ax,[bp-16]
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-66]
		push	word [bp-68]
		mov	ax,10
		push	ax
		mov	ax,-28916
		push	ax
		mov	ax,-13166
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R4$crc6649ABE3
		push	bp
		lea	ax,[bp-12]
		push	ax
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-38]
		push	word [bp-40]
		mov	ax,15
		push	ax
		mov	ax,-17
		push	ax
		mov	ax,-2947
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R4$crc6649ABE3
		push	bp
		lea	ax,[bp-8]
		push	ax
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-74]
		push	word [bp-76]
		mov	ax,21
		push	ax
		mov	ax,-31356
		push	ax
		mov	ax,24017
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R4$crc6649ABE3
		push	bp
		lea	ax,[bp-4]
		push	ax
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-46]
		push	word [bp-48]
		mov	ax,6
		push	ax
		mov	ax,28584
		push	ax
		mov	ax,32335
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R4$crc6649ABE3
		push	bp
		lea	ax,[bp-16]
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-18]
		push	word [bp-20]
		mov	ax,10
		push	ax
		mov	ax,-468
		push	ax
		mov	ax,-6432
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R4$crc6649ABE3
		push	bp
		lea	ax,[bp-12]
		push	ax
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-54]
		push	word [bp-56]
		mov	ax,15
		push	ax
		mov	ax,-23807
		push	ax
		mov	ax,17172
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R4$crc6649ABE3
		push	bp
		lea	ax,[bp-8]
		push	ax
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-26]
		push	word [bp-28]
		mov	ax,21
		push	ax
		mov	ax,19976
		push	ax
		mov	ax,4513
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R4$crc6649ABE3
		push	bp
		lea	ax,[bp-4]
		push	ax
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-62]
		push	word [bp-64]
		mov	ax,6
		push	ax
		mov	ax,-2221
		push	ax
		mov	ax,32386
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R4$crc6649ABE3
		push	bp
		lea	ax,[bp-16]
		push	ax
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-34]
		push	word [bp-36]
		mov	ax,10
		push	ax
		mov	ax,-17094
		push	ax
		mov	ax,-3531
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R4$crc6649ABE3
		push	bp
		lea	ax,[bp-12]
		push	ax
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-6]
		push	word [bp-8]
		push	word [bp-70]
		push	word [bp-72]
		mov	ax,15
		push	ax
		mov	ax,10967
		push	ax
		mov	ax,-11589
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R4$crc6649ABE3
		push	bp
		lea	ax,[bp-8]
		push	ax
		push	word [bp-10]
		push	word [bp-12]
		push	word [bp-14]
		push	word [bp-16]
		push	word [bp-2]
		push	word [bp-4]
		push	word [bp-42]
		push	word [bp-44]
		mov	ax,21
		push	ax
		mov	ax,-5242
		push	ax
		mov	ax,-11375
		push	ax
		call	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R4$crc6649ABE3
		mov	bx,word [bp+6]
		mov	ax,word [bp-4]
		mov	dx,word [bp-2]
		add	word [bx+8],ax
		adc	word [bx+10],dx
		mov	bx,word [bp+6]
		mov	ax,word [bp-8]
		mov	dx,word [bp-6]
		add	word [bx+12],ax
		adc	word [bx+14],dx
		mov	bx,word [bp+6]
		mov	ax,word [bp-12]
		mov	dx,word [bp-10]
		add	word [bx+16],ax
		adc	word [bx+18],dx
		mov	bx,word [bp+6]
		mov	ax,word [bp-16]
		mov	dx,word [bp-14]
		add	word [bx+20],ax
		adc	word [bx+22],dx
		mov	bx,word [bp+6]
		add	word [bx+96],64
		adc	word [bx+98],0
		adc	word [bx+100],0
		adc	word [bx+102],0
		mov	sp,bp
		pop	bp
		ret	4
EXTERN	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R4$crc6649ABE3
EXTERN	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R3$crc6649ABE3
EXTERN	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R2$crc6649ABE3
EXTERN	MD5$_$MD5TRANSFORM$TMDCONTEXT$POINTER_$$_R1$crc6649ABE3
EXTERN	MD5_$$_INVERT$POINTER$POINTER$WORD
