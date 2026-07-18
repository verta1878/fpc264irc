# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_BMPCOMN_SWAPBMPFILEHEADER$TBITMAPFILEHEADER
_BMPCOMN_SWAPBMPFILEHEADER$TBITMAPFILEHEADER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	(%eax),%ax
	call	L_FPIMGCMN_SWAP$WORD$$WORD$stub
	movl	-4(%ebp),%edx
	movw	%ax,(%edx)
	movl	-4(%ebp),%eax
	movl	2(%eax),%eax
	call	L_FPIMGCMN_SWAP$LONGINT$$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	%eax,2(%edx)
	movl	-4(%ebp),%eax
	movl	6(%eax),%eax
	call	L_FPIMGCMN_SWAP$LONGINT$$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	%eax,6(%edx)
	movl	-4(%ebp),%eax
	movl	10(%eax),%eax
	call	L_FPIMGCMN_SWAP$LONGINT$$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	%eax,10(%edx)
	leave
	ret

.text
	.align 4
.globl	_BMPCOMN_SWAPBMPINFOHEADER$TBITMAPINFOHEADER
_BMPCOMN_SWAPBMPINFOHEADER$TBITMAPINFOHEADER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_FPIMGCMN_SWAP$LONGINT$$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	call	L_FPIMGCMN_SWAP$LONGINT$$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	%eax,4(%edx)
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	call	L_FPIMGCMN_SWAP$LONGINT$$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	%eax,8(%edx)
	movl	-4(%ebp),%eax
	movw	12(%eax),%ax
	call	L_FPIMGCMN_SWAP$WORD$$WORD$stub
	movl	-4(%ebp),%edx
	movw	%ax,12(%edx)
	movl	-4(%ebp),%eax
	movw	14(%eax),%ax
	call	L_FPIMGCMN_SWAP$WORD$$WORD$stub
	movl	-4(%ebp),%edx
	movw	%ax,14(%edx)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	call	L_FPIMGCMN_SWAP$LONGINT$$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	%eax,16(%edx)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	call	L_FPIMGCMN_SWAP$LONGINT$$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	%eax,20(%edx)
	movl	-4(%ebp),%eax
	movl	24(%eax),%eax
	call	L_FPIMGCMN_SWAP$LONGINT$$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	%eax,24(%edx)
	movl	-4(%ebp),%eax
	movl	28(%eax),%eax
	call	L_FPIMGCMN_SWAP$LONGINT$$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	%eax,28(%edx)
	movl	-4(%ebp),%eax
	movl	32(%eax),%eax
	call	L_FPIMGCMN_SWAP$LONGINT$$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	%eax,32(%edx)
	movl	-4(%ebp),%eax
	movl	36(%eax),%eax
	call	L_FPIMGCMN_SWAP$LONGINT$$LONGINT$stub
	movl	-4(%ebp),%edx
	movl	%eax,36(%edx)
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_BMPCOMN
_THREADVARLIST_BMPCOMN:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMGCMN_SWAP$WORD$$WORD$stub:
.indirect_symbol _FPIMGCMN_SWAP$WORD$$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_FPIMGCMN_SWAP$LONGINT$$LONGINT$stub:
.indirect_symbol _FPIMGCMN_SWAP$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt
# End asmlist al_imports
# Begin asmlist al_exports
# End asmlist al_exports
# Begin asmlist al_resources
# End asmlist al_resources
# Begin asmlist al_rtti

.const_data
	.align 2
.globl	_INIT_BMPCOMN_TBITMAPFILEHEADER
_INIT_BMPCOMN_TBITMAPFILEHEADER:
	.byte	13,17
	.ascii	"TBitMapFileHeader"
	.long	14,0

.const_data
	.align 2
.globl	_RTTI_BMPCOMN_TBITMAPFILEHEADER
_RTTI_BMPCOMN_TBITMAPFILEHEADER:
	.byte	13,17
	.ascii	"TBitMapFileHeader"
	.long	14,4
	.long	_RTTI_SYSTEM_WORD
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	2
	.long	_RTTI_SYSTEM_LONGINT
	.long	6
	.long	_RTTI_SYSTEM_LONGINT
	.long	10

.const_data
	.align 2
.globl	_INIT_BMPCOMN_PBITMAPFILEHEADER
_INIT_BMPCOMN_PBITMAPFILEHEADER:
	.byte	0
	.ascii	"\021PBitMapFileHeader"

.const_data
	.align 2
.globl	_RTTI_BMPCOMN_PBITMAPFILEHEADER
_RTTI_BMPCOMN_PBITMAPFILEHEADER:
	.byte	0
	.ascii	"\021PBitMapFileHeader"

.const_data
	.align 2
.globl	_INIT_BMPCOMN_TBITMAPINFOHEADER
_INIT_BMPCOMN_TBITMAPINFOHEADER:
	.byte	13,17
	.ascii	"TBitMapInfoHeader"
	.long	40,0

.const_data
	.align 2
.globl	_RTTI_BMPCOMN_TBITMAPINFOHEADER
_RTTI_BMPCOMN_TBITMAPINFOHEADER:
	.byte	13,17
	.ascii	"TBitMapInfoHeader"
	.long	40,11
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4
	.long	_RTTI_SYSTEM_LONGINT
	.long	8
	.long	_RTTI_SYSTEM_WORD
	.long	12
	.long	_RTTI_SYSTEM_WORD
	.long	14
	.long	_RTTI_SYSTEM_LONGINT
	.long	16
	.long	_RTTI_SYSTEM_LONGINT
	.long	20
	.long	_RTTI_SYSTEM_LONGINT
	.long	24
	.long	_RTTI_SYSTEM_LONGINT
	.long	28
	.long	_RTTI_SYSTEM_LONGINT
	.long	32
	.long	_RTTI_SYSTEM_LONGINT
	.long	36

.const_data
	.align 2
.globl	_INIT_BMPCOMN_PBITMAPINFOHEADER
_INIT_BMPCOMN_PBITMAPINFOHEADER:
	.byte	0
	.ascii	"\021PBitMapInfoHeader"

.const_data
	.align 2
.globl	_RTTI_BMPCOMN_PBITMAPINFOHEADER
_RTTI_BMPCOMN_PBITMAPINFOHEADER:
	.byte	0
	.ascii	"\021PBitMapInfoHeader"

.const_data
	.align 2
.globl	_INIT_BMPCOMN_TCOLORRGB
_INIT_BMPCOMN_TCOLORRGB:
	.byte	13,9
	.ascii	"TColorRGB"
	.long	3,0

.const_data
	.align 2
.globl	_RTTI_BMPCOMN_TCOLORRGB
_RTTI_BMPCOMN_TCOLORRGB:
	.byte	13,9
	.ascii	"TColorRGB"
	.long	3,3
	.long	_RTTI_SYSTEM_BYTE
	.long	0
	.long	_RTTI_SYSTEM_BYTE
	.long	1
	.long	_RTTI_SYSTEM_BYTE
	.long	2

.const_data
	.align 2
.globl	_INIT_BMPCOMN_PCOLORRGB
_INIT_BMPCOMN_PCOLORRGB:
	.byte	0
	.ascii	"\011PColorRGB"

.const_data
	.align 2
.globl	_RTTI_BMPCOMN_PCOLORRGB
_RTTI_BMPCOMN_PCOLORRGB:
	.byte	0
	.ascii	"\011PColorRGB"

.const_data
	.align 2
.globl	_INIT_BMPCOMN_TCOLORRGBA
_INIT_BMPCOMN_TCOLORRGBA:
	.byte	13,10
	.ascii	"TColorRGBA"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_BMPCOMN_TCOLORRGBA
_RTTI_BMPCOMN_TCOLORRGBA:
	.byte	13,10
	.ascii	"TColorRGBA"
	.long	4,5
	.long	_RTTI_SYSTEM_BYTE
	.long	0
	.long	_RTTI_SYSTEM_BYTE
	.long	1
	.long	_RTTI_SYSTEM_BYTE
	.long	2
	.long	_RTTI_SYSTEM_BYTE
	.long	3
	.long	_RTTI_BMPCOMN_TCOLORRGB
	.long	0

.const_data
	.align 2
.globl	_INIT_BMPCOMN_PCOLORRGBA
_INIT_BMPCOMN_PCOLORRGBA:
	.byte	0
	.ascii	"\012PColorRGBA"

.const_data
	.align 2
.globl	_RTTI_BMPCOMN_PCOLORRGBA
_RTTI_BMPCOMN_PCOLORRGBA:
	.byte	0
	.ascii	"\012PColorRGBA"
# End asmlist al_rtti
# Begin asmlist al_dwarf_frame
# End asmlist al_dwarf_frame
# Begin asmlist al_dwarf_info
# End asmlist al_dwarf_info
# Begin asmlist al_dwarf_abbrev
# End asmlist al_dwarf_abbrev
# Begin asmlist al_dwarf_line
# End asmlist al_dwarf_line
# Begin asmlist al_picdata
# End asmlist al_picdata
# Begin asmlist al_resourcestrings
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end
	.subsections_via_symbols

