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

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,9
	GLOBAL _$RTLCONSTS$_Ld1
_$RTLCONSTS$_Ld1:
		DB	"RTLCONSTS",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,36
	GLOBAL _$RTLCONSTS$_Ld2
_$RTLCONSTS$_Ld2:
		DB	"No context-sensitive Help installed.",0
	ALIGN 2
	DW	0,1,-1,20
	GLOBAL _$RTLCONSTS$_Ld3
_$RTLCONSTS$_Ld3:
		DB	"rtlconsts.hnocontext",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld4
_$RTLCONSTS$_Ld4:
		DB	"No Help Manager installed.",0
	ALIGN 2
	DW	0,1,-1,19
	GLOBAL _$RTLCONSTS$_Ld5
_$RTLCONSTS$_Ld5:
		DB	"rtlconsts.hnosystem",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$RTLCONSTS$_Ld6
_$RTLCONSTS$_Ld6:
		DB	"No Table of Contents found.",0
	ALIGN 2
	DW	0,1,-1,28
	GLOBAL _$RTLCONSTS$_Ld7
_$RTLCONSTS$_Ld7:
		DB	"rtlconsts.hnotableofcontents",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$RTLCONSTS$_Ld8
_$RTLCONSTS$_Ld8:
		DB	"No help found for ",34,"%s",34,0
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$RTLCONSTS$_Ld9
_$RTLCONSTS$_Ld9:
		DB	"rtlconsts.hnothingfound",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,30
	GLOBAL _$RTLCONSTS$_Ld10
_$RTLCONSTS$_Ld10:
		DB	"No topic-based Help installed.",0
	ALIGN 2
	DW	0,1,-1,19
	GLOBAL _$RTLCONSTS$_Ld11
_$RTLCONSTS$_Ld11:
		DB	"rtlconsts.hnotopics",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,5
	GLOBAL _$RTLCONSTS$_Ld12
_$RTLCONSTS$_Ld12:
		DB	"Abort",0
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$RTLCONSTS$_Ld13
_$RTLCONSTS$_Ld13:
		DB	"rtlconsts.sabortbutton",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,4
	GLOBAL _$RTLCONSTS$_Ld14
_$RTLCONSTS$_Ld14:
		DB	"&All",0
	ALIGN 2
	DW	0,1,-1,20
	GLOBAL _$RTLCONSTS$_Ld15
_$RTLCONSTS$_Ld15:
		DB	"rtlconsts.sallbutton",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,9
	GLOBAL _$RTLCONSTS$_Ld16
_$RTLCONSTS$_Ld16:
		DB	"All files",0
	ALIGN 2
	DW	0,1,-1,20
	GLOBAL _$RTLCONSTS$_Ld17
_$RTLCONSTS$_Ld17:
		DB	"rtlconsts.sallfilter",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,34
	GLOBAL _$RTLCONSTS$_Ld18
_$RTLCONSTS$_Ld18:
		DB	"Ancestor class for ",34,"%s",34," not found.",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$RTLCONSTS$_Ld19
_$RTLCONSTS$_Ld19:
		DB	"rtlconsts.sancestornotfound",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$RTLCONSTS$_Ld20
_$RTLCONSTS$_Ld20:
		DB	"Cannot assign a %s to a %s.",0
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$RTLCONSTS$_Ld21
_$RTLCONSTS$_Ld21:
		DB	"rtlconsts.sassignerror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,29
	GLOBAL _$RTLCONSTS$_Ld22
_$RTLCONSTS$_Ld22:
		DB	"Asynchronous socket error: %d",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$RTLCONSTS$_Ld23
_$RTLCONSTS$_Ld23:
		DB	"rtlconsts.sasyncsocketerror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,2
	GLOBAL _$RTLCONSTS$_Ld24
_$RTLCONSTS$_Ld24:
		DB	"BG",0
	ALIGN 2
	DW	0,1,-1,13
	GLOBAL _$RTLCONSTS$_Ld25
_$RTLCONSTS$_Ld25:
		DB	"rtlconsts.sbg",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,15
	GLOBAL _$RTLCONSTS$_Ld26
_$RTLCONSTS$_Ld26:
		DB	"Bitmap is empty",0
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$RTLCONSTS$_Ld27
_$RTLCONSTS$_Ld27:
		DB	"rtlconsts.sbitmapempty",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$RTLCONSTS$_Ld28
_$RTLCONSTS$_Ld28:
		DB	"Bits index out of range.",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$RTLCONSTS$_Ld29
_$RTLCONSTS$_Ld29:
		DB	"rtlconsts.sbitsindexerror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,4
	GLOBAL _$RTLCONSTS$_Ld30
_$RTLCONSTS$_Ld30:
		DB	"Bold",0
	ALIGN 2
	DW	0,1,-1,19
	GLOBAL _$RTLCONSTS$_Ld31
_$RTLCONSTS$_Ld31:
		DB	"rtlconsts.sboldfont",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,11
	GLOBAL _$RTLCONSTS$_Ld32
_$RTLCONSTS$_Ld32:
		DB	"Bold Italic",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$RTLCONSTS$_Ld33
_$RTLCONSTS$_Ld33:
		DB	"rtlconsts.sbolditalicfont",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,40
	GLOBAL _$RTLCONSTS$_Ld34
_$RTLCONSTS$_Ld34:
		DB	"List is locked during an active ForEach.",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$RTLCONSTS$_Ld35
_$RTLCONSTS$_Ld35:
		DB	"rtlconsts.sbucketlistlocked",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,6
	GLOBAL _$RTLCONSTS$_Ld36
_$RTLCONSTS$_Ld36:
		DB	"Cancel",0
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$RTLCONSTS$_Ld37
_$RTLCONSTS$_Ld37:
		DB	"rtlconsts.scancelbutton",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$RTLCONSTS$_Ld38
_$RTLCONSTS$_Ld38:
		DB	"Cannot create directory",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld39
_$RTLCONSTS$_Ld39:
		DB	"rtlconsts.scannotcreatedir",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,50
	GLOBAL _$RTLCONSTS$_Ld40
_$RTLCONSTS$_Ld40:
		DB	"Cannot use standard name for and unknown component",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$RTLCONSTS$_Ld41
_$RTLCONSTS$_Ld41:
		DB	"rtlconsts.scannotcreatename",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$RTLCONSTS$_Ld42
_$RTLCONSTS$_Ld42:
		DB	"Unable to create new socket",0
	ALIGN 2
	DW	0,1,-1,29
	GLOBAL _$RTLCONSTS$_Ld43
_$RTLCONSTS$_Ld43:
		DB	"rtlconsts.scannotcreatesocket",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$RTLCONSTS$_Ld44
_$RTLCONSTS$_Ld44:
		DB	"Forms cannot be dragged",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$RTLCONSTS$_Ld45
_$RTLCONSTS$_Ld45:
		DB	"rtlconsts.scannotdragform",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,46
	GLOBAL _$RTLCONSTS$_Ld46
_$RTLCONSTS$_Ld46:
		DB	"A disbled or invisible Window cannot get focus",0
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$RTLCONSTS$_Ld47
_$RTLCONSTS$_Ld47:
		DB	"rtlconsts.scannotfocus",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,42
	GLOBAL _$RTLCONSTS$_Ld48
_$RTLCONSTS$_Ld48:
		DB	"Listening on an open socket is not allowed",0
	ALIGN 2
	DW	0,1,-1,29
	GLOBAL _$RTLCONSTS$_Ld49
_$RTLCONSTS$_Ld49:
		DB	"rtlconsts.scannotlistenonopen",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,21
	GLOBAL _$RTLCONSTS$_Ld50
_$RTLCONSTS$_Ld50:
		DB	"AVI can not be opened",0
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$RTLCONSTS$_Ld51
_$RTLCONSTS$_Ld51:
		DB	"rtlconsts.scannotopenavi",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,38
	GLOBAL _$RTLCONSTS$_Ld52
_$RTLCONSTS$_Ld52:
		DB	"A visible Window can not be made modal",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld53
_$RTLCONSTS$_Ld53:
		DB	"rtlconsts.scannotshowmodal",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,49
	GLOBAL _$RTLCONSTS$_Ld54
_$RTLCONSTS$_Ld54:
		DB	"Changing value on an active socket is not allowed",0
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$RTLCONSTS$_Ld55
_$RTLCONSTS$_Ld55:
		DB	"rtlconsts.scantchangewhileactive",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,41
	GLOBAL _$RTLCONSTS$_Ld56
_$RTLCONSTS$_Ld56:
		DB	"Can not write to read-only ResourceStream",0
	ALIGN 2
	DW	0,1,-1,39
	GLOBAL _$RTLCONSTS$_Ld57
_$RTLCONSTS$_Ld57:
		DB	"rtlconsts.scantwriteresourcestreamerror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,33
	GLOBAL _$RTLCONSTS$_Ld58
_$RTLCONSTS$_Ld58:
		DB	"CARDS library could not be loaded",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$RTLCONSTS$_Ld59
_$RTLCONSTS$_Ld59:
		DB	"rtlconsts.scarddllnotloaded",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,50
	GLOBAL _$RTLCONSTS$_Ld60
_$RTLCONSTS$_Ld60:
		DB	"Interface %s already initialized from library ",34,"%s",34,0
	ALIGN 2
	DW	0,1,-1,31
	GLOBAL _$RTLCONSTS$_Ld61
_$RTLCONSTS$_Ld61:
		DB	"rtlconsts.slibraryalreadyloaded",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,49
	GLOBAL _$RTLCONSTS$_Ld62
_$RTLCONSTS$_Ld62:
		DB	"Can not initialize interface %s from library ",34,"%s",34,0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$RTLCONSTS$_Ld63
_$RTLCONSTS$_Ld63:
		DB	"rtlconsts.slibrarynotloaded",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,61
	GLOBAL _$RTLCONSTS$_Ld64
_$RTLCONSTS$_Ld64:
		DB	"Can not resolve symbol ",34,"%s",34," of interface %s from library ",34,"%s",34,0
	ALIGN 2
	DW	0,1,-1,28
	GLOBAL _$RTLCONSTS$_Ld65
_$RTLCONSTS$_Ld65:
		DB	"rtlconsts.slibraryunknownsym",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$RTLCONSTS$_Ld66
_$RTLCONSTS$_Ld66:
		DB	"Can not change icon size",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$RTLCONSTS$_Ld67
_$RTLCONSTS$_Ld67:
		DB	"rtlconsts.schangeiconsize",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,13
	GLOBAL _$RTLCONSTS$_Ld68
_$RTLCONSTS$_Ld68:
		DB	34,"%s",34," expected",0
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$RTLCONSTS$_Ld69
_$RTLCONSTS$_Ld69:
		DB	"rtlconsts.scharexpected",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,50
	GLOBAL _$RTLCONSTS$_Ld70
_$RTLCONSTS$_Ld70:
		DB	"CheckSynchronize called from non-main thread ",34,"$%x",34,0
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$RTLCONSTS$_Ld71
_$RTLCONSTS$_Ld71:
		DB	"rtlconsts.schecksynchronizeerror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$RTLCONSTS$_Ld72
_$RTLCONSTS$_Ld72:
		DB	"Resource %s has wrong class",0
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$RTLCONSTS$_Ld73
_$RTLCONSTS$_Ld73:
		DB	"rtlconsts.sclassmismatch",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,20
	GLOBAL _$RTLCONSTS$_Ld74
_$RTLCONSTS$_Ld74:
		DB	"Class ",34,"%s",34," not found",0
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$RTLCONSTS$_Ld75
_$RTLCONSTS$_Ld75:
		DB	"rtlconsts.sclassnotfound",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,35
	GLOBAL _$RTLCONSTS$_Ld76
_$RTLCONSTS$_Ld76:
		DB	"Client of TDrag was not initialized",0
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$RTLCONSTS$_Ld77
_$RTLCONSTS$_Ld77:
		DB	"rtlconsts.sclientnotset",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,6
	GLOBAL _$RTLCONSTS$_Ld78
_$RTLCONSTS$_Ld78:
		DB	"&Close",0
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$RTLCONSTS$_Ld79
_$RTLCONSTS$_Ld79:
		DB	"rtlconsts.sclosebutton",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,33
	GLOBAL _$RTLCONSTS$_Ld80
_$RTLCONSTS$_Ld80:
		DB	"Failed to parse imaginary portion",0
	ALIGN 2
	DW	0,1,-1,38
	GLOBAL _$RTLCONSTS$_Ld81
_$RTLCONSTS$_Ld81:
		DB	"rtlconsts.scmplxcouldnotparseimaginary",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,44
	GLOBAL _$RTLCONSTS$_Ld82
_$RTLCONSTS$_Ld82:
		DB	"Failed to parse required ",34,"+",34," (or ",34,"-",34,") symbol",0
	ALIGN 2
	DW	0,1,-1,33
	GLOBAL _$RTLCONSTS$_Ld83
_$RTLCONSTS$_Ld83:
		DB	"rtlconsts.scmplxcouldnotparseplus",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,28
	GLOBAL _$RTLCONSTS$_Ld84
_$RTLCONSTS$_Ld84:
		DB	"Failed to parse real portion",0
	ALIGN 2
	DW	0,1,-1,33
	GLOBAL _$RTLCONSTS$_Ld85
_$RTLCONSTS$_Ld85:
		DB	"rtlconsts.scmplxcouldnotparsereal",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,36
	GLOBAL _$RTLCONSTS$_Ld86
_$RTLCONSTS$_Ld86:
		DB	"Failed to parse required ",34,"%s",34," symbol",0
	ALIGN 2
	DW	0,1,-1,35
	GLOBAL _$RTLCONSTS$_Ld87
_$RTLCONSTS$_Ld87:
		DB	"rtlconsts.scmplxcouldnotparsesymbol",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,12
	GLOBAL _$RTLCONSTS$_Ld88
_$RTLCONSTS$_Ld88:
		DB	"%s [%s<?>%s]",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$RTLCONSTS$_Ld89
_$RTLCONSTS$_Ld89:
		DB	"rtlconsts.scmplxerrorsuffix",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,21
	GLOBAL _$RTLCONSTS$_Ld90
_$RTLCONSTS$_Ld90:
		DB	"Unexpected characters",0
	ALIGN 2
	DW	0,1,-1,31
	GLOBAL _$RTLCONSTS$_Ld91
_$RTLCONSTS$_Ld91:
		DB	"rtlconsts.scmplxunexpectedchars",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,29
	GLOBAL _$RTLCONSTS$_Ld92
_$RTLCONSTS$_Ld92:
		DB	"Unexpected end of string [%s]",0
	ALIGN 2
	DW	0,1,-1,29
	GLOBAL _$RTLCONSTS$_Ld93
_$RTLCONSTS$_Ld93:
		DB	"rtlconsts.scmplxunexpectedeos",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,5
	GLOBAL _$RTLCONSTS$_Ld94
_$RTLCONSTS$_Ld94:
		DB	"Color",0
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$RTLCONSTS$_Ld95
_$RTLCONSTS$_Ld95:
		DB	"rtlconsts.scolorprefix",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,16
	GLOBAL _$RTLCONSTS$_Ld96
_$RTLCONSTS$_Ld96:
		DB	"ABCDEFGHIJKLMNOP",0
	ALIGN 2
	DW	0,1,-1,20
	GLOBAL _$RTLCONSTS$_Ld97
_$RTLCONSTS$_Ld97:
		DB	"rtlconsts.scolortags",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,46
	GLOBAL _$RTLCONSTS$_Ld98
_$RTLCONSTS$_Ld98:
		DB	"Component name ",34,"%s",34," exceeds 64 character limit",0
	ALIGN 2
	DW	0,1,-1,31
	GLOBAL _$RTLCONSTS$_Ld99
_$RTLCONSTS$_Ld99:
		DB	"rtlconsts.scomponentnametoolong",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,60
	GLOBAL _$RTLCONSTS$_Ld100
_$RTLCONSTS$_Ld100:
		DB	"The selected directory does not exist. Should it be created?",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$RTLCONSTS$_Ld101
_$RTLCONSTS$_Ld101:
		DB	"rtlconsts.sconfirmcreatedir",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,41
	GLOBAL _$RTLCONSTS$_Ld102
_$RTLCONSTS$_Ld102:
		DB	"A component can not have itself as parent",0
	ALIGN 2
	DW	0,1,-1,33
	GLOBAL _$RTLCONSTS$_Ld103
_$RTLCONSTS$_Ld103:
		DB	"rtlconsts.scontrolparentsettoself",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,41
	GLOBAL _$RTLCONSTS$_Ld104
_$RTLCONSTS$_Ld104:
		DB	"Conversion family ",34,"%s",34," already registered",0
	ALIGN 2
	DW	0,1,-1,30
	GLOBAL _$RTLCONSTS$_Ld105
_$RTLCONSTS$_Ld105:
		DB	"rtlconsts.sconvduplicatefamily",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,45
	GLOBAL _$RTLCONSTS$_Ld106
_$RTLCONSTS$_Ld106:
		DB	"Conversion type (%s) already registered in %s",0
	ALIGN 2
	DW	0,1,-1,28
	GLOBAL _$RTLCONSTS$_Ld107
_$RTLCONSTS$_Ld107:
		DB	"rtlconsts.sconvduplicatetype",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$RTLCONSTS$_Ld108
_$RTLCONSTS$_Ld108:
		DB	34,"%s",34," has a factor of zero",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$RTLCONSTS$_Ld109
_$RTLCONSTS$_Ld109:
		DB	"rtlconsts.sconvfactorzero",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,14
	GLOBAL _$RTLCONSTS$_Ld110
_$RTLCONSTS$_Ld110:
		DB	"Illegal family",0
	ALIGN 2
	DW	0,1,-1,28
	GLOBAL _$RTLCONSTS$_Ld111
_$RTLCONSTS$_Ld111:
		DB	"rtlconsts.sconvillegalfamily",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,12
	GLOBAL _$RTLCONSTS$_Ld112
_$RTLCONSTS$_Ld112:
		DB	"Illegal type",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld113
_$RTLCONSTS$_Ld113:
		DB	"rtlconsts.sconvillegaltype",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,38
	GLOBAL _$RTLCONSTS$_Ld114
_$RTLCONSTS$_Ld114:
		DB	"Incompatible conversion types (%s, %s)",0
	ALIGN 2
	DW	0,1,-1,33
	GLOBAL _$RTLCONSTS$_Ld115
_$RTLCONSTS$_Ld115:
		DB	"rtlconsts.sconvincompatibletypes2",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,42
	GLOBAL _$RTLCONSTS$_Ld116
_$RTLCONSTS$_Ld116:
		DB	"Incompatible conversion types (%s, %s, %s)",0
	ALIGN 2
	DW	0,1,-1,33
	GLOBAL _$RTLCONSTS$_Ld117
_$RTLCONSTS$_Ld117:
		DB	"rtlconsts.sconvincompatibletypes3",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,48
	GLOBAL _$RTLCONSTS$_Ld118
_$RTLCONSTS$_Ld118:
		DB	"Incompatible conversion types (%s - %s, %s - %s)",0
	ALIGN 2
	DW	0,1,-1,33
	GLOBAL _$RTLCONSTS$_Ld119
_$RTLCONSTS$_Ld119:
		DB	"rtlconsts.sconvincompatibletypes4",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,18
	GLOBAL _$RTLCONSTS$_Ld120
_$RTLCONSTS$_Ld120:
		DB	"Could not parse %s",0
	ALIGN 2
	DW	0,1,-1,28
	GLOBAL _$RTLCONSTS$_Ld121
_$RTLCONSTS$_Ld121:
		DB	"rtlconsts.sconvstrparseerror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,7
	GLOBAL _$RTLCONSTS$_Ld122
_$RTLCONSTS$_Ld122:
		DB	"[$%.8x]",0
	ALIGN 2
	DW	0,1,-1,33
	GLOBAL _$RTLCONSTS$_Ld123
_$RTLCONSTS$_Ld123:
		DB	"rtlconsts.sconvunknowndescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,8
	GLOBAL _$RTLCONSTS$_Ld124
_$RTLCONSTS$_Ld124:
		DB	"[%s%.8x]",0
	ALIGN 2
	DW	0,1,-1,43
	GLOBAL _$RTLCONSTS$_Ld125
_$RTLCONSTS$_Ld125:
		DB	"rtlconsts.sconvunknowndescriptionwithprefix",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,31
	GLOBAL _$RTLCONSTS$_Ld126
_$RTLCONSTS$_Ld126:
		DB	"Unknown conversion family: ",34,"%s",34,0
	ALIGN 2
	DW	0,1,-1,28
	GLOBAL _$RTLCONSTS$_Ld127
_$RTLCONSTS$_Ld127:
		DB	"rtlconsts.sconvunknownfamily",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,29
	GLOBAL _$RTLCONSTS$_Ld128
_$RTLCONSTS$_Ld128:
		DB	"Unknown conversion type: ",34,"%s",34,0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld129
_$RTLCONSTS$_Ld129:
		DB	"rtlconsts.sconvunknowntype",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,13
	GLOBAL _$RTLCONSTS$_Ld130
_$RTLCONSTS$_Ld130:
		DB	"Custom colors",0
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$RTLCONSTS$_Ld131
_$RTLCONSTS$_Ld131:
		DB	"rtlconsts.scustomcolors",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,33
	GLOBAL _$RTLCONSTS$_Ld132
_$RTLCONSTS$_Ld132:
		DB	"Invalid argument for date encode.",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld133
_$RTLCONSTS$_Ld133:
		DB	"rtlconsts.sdateencodeerror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,47
	GLOBAL _$RTLCONSTS$_Ld134
_$RTLCONSTS$_Ld134:
		DB	"DDE error - conversion was not performed ($0%x)",0
	ALIGN 2
	DW	0,1,-1,21
	GLOBAL _$RTLCONSTS$_Ld135
_$RTLCONSTS$_Ld135:
		DB	"rtlconsts.sddeconverr",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,35
	GLOBAL _$RTLCONSTS$_Ld136
_$RTLCONSTS$_Ld136:
		DB	"An error was returned by DDE ($0%x)",0
	ALIGN 2
	DW	0,1,-1,17
	GLOBAL _$RTLCONSTS$_Ld137
_$RTLCONSTS$_Ld137:
		DB	"rtlconsts.sddeerr",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,52
	GLOBAL _$RTLCONSTS$_Ld138
_$RTLCONSTS$_Ld138:
		DB	"An error occurred - not enough memory for DDE ($0%x)",0
	ALIGN 2
	DW	0,1,-1,20
	GLOBAL _$RTLCONSTS$_Ld139
_$RTLCONSTS$_Ld139:
		DB	"rtlconsts.sddememerr",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,37
	GLOBAL _$RTLCONSTS$_Ld140
_$RTLCONSTS$_Ld140:
		DB	"DDE-Conversation could not be started",0
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$RTLCONSTS$_Ld141
_$RTLCONSTS$_Ld141:
		DB	"rtlconsts.sddenoconnect",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,7
	GLOBAL _$RTLCONSTS$_Ld142
_$RTLCONSTS$_Ld142:
		DB	"Default",0
	ALIGN 2
	DW	0,1,-1,18
	GLOBAL _$RTLCONSTS$_Ld143
_$RTLCONSTS$_Ld143:
		DB	"rtlconsts.sdefault",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,19
	GLOBAL _$RTLCONSTS$_Ld144
_$RTLCONSTS$_Ld144:
		DB	"All files (*.*)|*.*",0
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$RTLCONSTS$_Ld145
_$RTLCONSTS$_Ld145:
		DB	"rtlconsts.sdefaultfilter",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,61
	GLOBAL _$RTLCONSTS$_Ld146
_$RTLCONSTS$_Ld146:
		DB	"Delimiter and QuoteChar properties cannot have the same value",0
	ALIGN 2
	DW	0,1,-1,34
	GLOBAL _$RTLCONSTS$_Ld147
_$RTLCONSTS$_Ld147:
		DB	"rtlconsts.sdelimiterquotecharerror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,8
	GLOBAL _$RTLCONSTS$_Ld148
_$RTLCONSTS$_Ld148:
		DB	"%s on %s",0
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$RTLCONSTS$_Ld149
_$RTLCONSTS$_Ld149:
		DB	"rtlconsts.sdeviceonport",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,19
	GLOBAL _$RTLCONSTS$_Ld150
_$RTLCONSTS$_Ld150:
		DB	"Image size mismatch",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$RTLCONSTS$_Ld151
_$RTLCONSTS$_Ld151:
		DB	"rtlconsts.sdimsdonotmatch",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,16
	GLOBAL _$RTLCONSTS$_Ld152
_$RTLCONSTS$_Ld152:
		DB	"Directory &name:",0
	ALIGN 2
	DW	0,1,-1,21
	GLOBAL _$RTLCONSTS$_Ld153
_$RTLCONSTS$_Ld153:
		DB	"rtlconsts.sdirnamecap",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,13
	GLOBAL _$RTLCONSTS$_Ld154
_$RTLCONSTS$_Ld154:
		DB	"&Directories:",0
	ALIGN 2
	DW	0,1,-1,18
	GLOBAL _$RTLCONSTS$_Ld155
_$RTLCONSTS$_Ld155:
		DB	"rtlconsts.sdirscap",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,8
	GLOBAL _$RTLCONSTS$_Ld156
_$RTLCONSTS$_Ld156:
		DB	"&Drives:",0
	ALIGN 2
	DW	0,1,-1,20
	GLOBAL _$RTLCONSTS$_Ld157
_$RTLCONSTS$_Ld157:
		DB	"rtlconsts.sdrivescap",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$RTLCONSTS$_Ld158
_$RTLCONSTS$_Ld158:
		DB	"Duplicate card ID found",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld159
_$RTLCONSTS$_Ld159:
		DB	"rtlconsts.sduplicatecardid",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,33
	GLOBAL _$RTLCONSTS$_Ld160
_$RTLCONSTS$_Ld160:
		DB	"A class named ",34,"%s",34," already exists",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$RTLCONSTS$_Ld161
_$RTLCONSTS$_Ld161:
		DB	"rtlconsts.sduplicateclass",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,42
	GLOBAL _$RTLCONSTS$_Ld162
_$RTLCONSTS$_Ld162:
		DB	"Duplicates not allowed in this list ($0%x)",0
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$RTLCONSTS$_Ld163
_$RTLCONSTS$_Ld163:
		DB	"rtlconsts.sduplicateitem",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,33
	GLOBAL _$RTLCONSTS$_Ld164
_$RTLCONSTS$_Ld164:
		DB	"Menu ",34,"%s",34," is used by another form",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$RTLCONSTS$_Ld165
_$RTLCONSTS$_Ld165:
		DB	"rtlconsts.sduplicatemenus",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,53
	GLOBAL _$RTLCONSTS$_Ld166
_$RTLCONSTS$_Ld166:
		DB	"Duplicate name: A component named ",34,"%s",34," already exists",0
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$RTLCONSTS$_Ld167
_$RTLCONSTS$_Ld167:
		DB	"rtlconsts.sduplicatename",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,45
	GLOBAL _$RTLCONSTS$_Ld168
_$RTLCONSTS$_Ld168:
		DB	"WriteObject was called twice for one instance",0
	ALIGN 2
	DW	0,1,-1,29
	GLOBAL _$RTLCONSTS$_Ld169
_$RTLCONSTS$_Ld169:
		DB	"rtlconsts.sduplicatereference",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,37
	GLOBAL _$RTLCONSTS$_Ld170
_$RTLCONSTS$_Ld170:
		DB	"String list does not allow duplicates",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld171
_$RTLCONSTS$_Ld171:
		DB	"rtlconsts.sduplicatestring",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,42
	GLOBAL _$RTLCONSTS$_Ld172
_$RTLCONSTS$_Ld172:
		DB	"Illegal Nil stream for TReader constructor",0
	ALIGN 2
	DW	0,1,-1,35
	GLOBAL _$RTLCONSTS$_Ld173
_$RTLCONSTS$_Ld173:
		DB	"rtlconsts.semptystreamillegalreader",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,42
	GLOBAL _$RTLCONSTS$_Ld174
_$RTLCONSTS$_Ld174:
		DB	"Illegal Nil stream for TWriter constructor",0
	ALIGN 2
	DW	0,1,-1,35
	GLOBAL _$RTLCONSTS$_Ld175
_$RTLCONSTS$_Ld175:
		DB	"rtlconsts.semptystreamillegalwriter",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,33
	GLOBAL _$RTLCONSTS$_Ld176
_$RTLCONSTS$_Ld176:
		DB	"Bit index exceeds array limit: %d",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$RTLCONSTS$_Ld177
_$RTLCONSTS$_Ld177:
		DB	"rtlconsts.serrindextoolarge",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$RTLCONSTS$_Ld178
_$RTLCONSTS$_Ld178:
		DB	"Invalid bit index : %d",0
	ALIGN 2
	DW	0,1,-1,29
	GLOBAL _$RTLCONSTS$_Ld179
_$RTLCONSTS$_Ld179:
		DB	"rtlconsts.serrinvalidbitindex",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,73
	GLOBAL _$RTLCONSTS$_Ld180
_$RTLCONSTS$_Ld180:
		DB	"Failed to initialize component class ",34,"%s",34,": No streaming method a"
		DB	"vailable.",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$RTLCONSTS$_Ld181
_$RTLCONSTS$_Ld181:
		DB	"rtlconsts.serrnostreaming",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,93
	GLOBAL _$RTLCONSTS$_Ld182
_$RTLCONSTS$_Ld182:
		DB	"No variant support for properties. Please use the variants unit "
		DB	"in your project and recompile",0
	ALIGN 2
	DW	0,1,-1,30
	GLOBAL _$RTLCONSTS$_Ld183
_$RTLCONSTS$_Ld183:
		DB	"rtlconsts.serrnovariantsupport",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,13
	GLOBAL _$RTLCONSTS$_Ld184
_$RTLCONSTS$_Ld184:
		DB	"Out of memory",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$RTLCONSTS$_Ld185
_$RTLCONSTS$_Ld185:
		DB	"rtlconsts.serroutofmemory",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$RTLCONSTS$_Ld186
_$RTLCONSTS$_Ld186:
		DB	34,"%s",34," is not an observer",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$RTLCONSTS$_Ld187
_$RTLCONSTS$_Ld187:
		DB	"rtlconsts.serrnotobserver",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$RTLCONSTS$_Ld188
_$RTLCONSTS$_Ld188:
		DB	"Unknown property: ",34,"%s",34,0
	ALIGN 2
	DW	0,1,-1,30
	GLOBAL _$RTLCONSTS$_Ld189
_$RTLCONSTS$_Ld189:
		DB	"rtlconsts.serrpropertynotfound",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,48
	GLOBAL _$RTLCONSTS$_Ld190
_$RTLCONSTS$_Ld190:
		DB	"Invalid property type from streamed property: %d",0
	ALIGN 2
	DW	0,1,-1,33
	GLOBAL _$RTLCONSTS$_Ld191
_$RTLCONSTS$_Ld191:
		DB	"rtlconsts.serrinvalidpropertytype",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,31
	GLOBAL _$RTLCONSTS$_Ld192
_$RTLCONSTS$_Ld192:
		DB	"Unknown enumeration value: ",34,"%s",34,0
	ALIGN 2
	DW	0,1,-1,30
	GLOBAL _$RTLCONSTS$_Ld193
_$RTLCONSTS$_Ld193:
		DB	"rtlconsts.serrunknownenumvalue",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,61
	GLOBAL _$RTLCONSTS$_Ld194
_$RTLCONSTS$_Ld194:
		DB	"TStrings descendant ",34,"%s",34," failed to call inherited constructor",0
	ALIGN 2
	DW	0,1,-1,34
	GLOBAL _$RTLCONSTS$_Ld195
_$RTLCONSTS$_Ld195:
		DB	"rtlconsts.sfailedtocallconstructor",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,2
	GLOBAL _$RTLCONSTS$_Ld196
_$RTLCONSTS$_Ld196:
		DB	"FB",0
	ALIGN 2
	DW	0,1,-1,13
	GLOBAL _$RTLCONSTS$_Ld197
_$RTLCONSTS$_Ld197:
		DB	"rtlconsts.sfb",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld198
_$RTLCONSTS$_Ld198:
		DB	"Unable to create file ",34,"%s",34,0
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$RTLCONSTS$_Ld199
_$RTLCONSTS$_Ld199:
		DB	"rtlconsts.sfcreateerror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,30
	GLOBAL _$RTLCONSTS$_Ld200
_$RTLCONSTS$_Ld200:
		DB	"Unable to create file ",34,"%s",34,": %s",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$RTLCONSTS$_Ld201
_$RTLCONSTS$_Ld201:
		DB	"rtlconsts.sfcreateerrorex",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,2
	GLOBAL _$RTLCONSTS$_Ld202
_$RTLCONSTS$_Ld202:
		DB	"FG",0
	ALIGN 2
	DW	0,1,-1,13
	GLOBAL _$RTLCONSTS$_Ld203
_$RTLCONSTS$_Ld203:
		DB	"rtlconsts.sfg",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,13
	GLOBAL _$RTLCONSTS$_Ld204
_$RTLCONSTS$_Ld204:
		DB	"&Files: (*.*)",0
	ALIGN 2
	DW	0,1,-1,19
	GLOBAL _$RTLCONSTS$_Ld205
_$RTLCONSTS$_Ld205:
		DB	"rtlconsts.sfilescap",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,49
	GLOBAL _$RTLCONSTS$_Ld206
_$RTLCONSTS$_Ld206:
		DB	"Fixed column count must be less than column count",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$RTLCONSTS$_Ld207
_$RTLCONSTS$_Ld207:
		DB	"rtlconsts.sfixedcoltoobig",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,43
	GLOBAL _$RTLCONSTS$_Ld208
_$RTLCONSTS$_Ld208:
		DB	"Fixed row count must be less than row count",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$RTLCONSTS$_Ld209
_$RTLCONSTS$_Ld209:
		DB	"rtlconsts.sfixedrowtoobig",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$RTLCONSTS$_Ld210
_$RTLCONSTS$_Ld210:
		DB	"Unable to open file ",34,"%s",34,0
	ALIGN 2
	DW	0,1,-1,21
	GLOBAL _$RTLCONSTS$_Ld211
_$RTLCONSTS$_Ld211:
		DB	"rtlconsts.sfopenerror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,28
	GLOBAL _$RTLCONSTS$_Ld212
_$RTLCONSTS$_Ld212:
		DB	"Unable to open file ",34,"%s",34,": %s",0
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$RTLCONSTS$_Ld213
_$RTLCONSTS$_Ld213:
		DB	"rtlconsts.sfopenerrorex",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,33
	GLOBAL _$RTLCONSTS$_Ld214
_$RTLCONSTS$_Ld214:
		DB	"Grid too large for this operation",0
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$RTLCONSTS$_Ld215
_$RTLCONSTS$_Ld215:
		DB	"rtlconsts.sgridtoolarge",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,57
	GLOBAL _$RTLCONSTS$_Ld216
_$RTLCONSTS$_Ld216:
		DB	"GroupIndex must be greater than preceding menu groupindex",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$RTLCONSTS$_Ld217
_$RTLCONSTS$_Ld217:
		DB	"rtlconsts.sgroupindextoolow",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,5
	GLOBAL _$RTLCONSTS$_Ld218
_$RTLCONSTS$_Ld218:
		DB	"&Help",0
	ALIGN 2
	DW	0,1,-1,21
	GLOBAL _$RTLCONSTS$_Ld219
_$RTLCONSTS$_Ld219:
		DB	"rtlconsts.shelpbutton",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$RTLCONSTS$_Ld220
_$RTLCONSTS$_Ld220:
		DB	"Clipboard does not support Icons",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld221
_$RTLCONSTS$_Ld221:
		DB	"rtlconsts.sicontoclipboard",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,19
	GLOBAL _$RTLCONSTS$_Ld222
_$RTLCONSTS$_Ld222:
		DB	"Identifier expected",0
	ALIGN 2
	DW	0,1,-1,29
	GLOBAL _$RTLCONSTS$_Ld223
_$RTLCONSTS$_Ld223:
		DB	"rtlconsts.sidentifierexpected",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,7
	GLOBAL _$RTLCONSTS$_Ld224
_$RTLCONSTS$_Ld224:
		DB	"&Ignore",0
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$RTLCONSTS$_Ld225
_$RTLCONSTS$_Ld225:
		DB	"rtlconsts.signorebutton",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,52
	GLOBAL _$RTLCONSTS$_Ld226
_$RTLCONSTS$_Ld226:
		DB	"A Canvas can only be changed if it contains a bitmap",0
	ALIGN 2
	DW	0,1,-1,33
	GLOBAL _$RTLCONSTS$_Ld227
_$RTLCONSTS$_Ld227:
		DB	"rtlconsts.simagecanvasneedsbitmap",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$RTLCONSTS$_Ld228
_$RTLCONSTS$_Ld228:
		DB	"Invalid ImageList index",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld229
_$RTLCONSTS$_Ld229:
		DB	"rtlconsts.simageindexerror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,48
	GLOBAL _$RTLCONSTS$_Ld230
_$RTLCONSTS$_Ld230:
		DB	"The ImageList data could not be read from stream",0
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$RTLCONSTS$_Ld231
_$RTLCONSTS$_Ld231:
		DB	"rtlconsts.simagereadfail",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,49
	GLOBAL _$RTLCONSTS$_Ld232
_$RTLCONSTS$_Ld232:
		DB	"The ImageList data could not be written to stream",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$RTLCONSTS$_Ld233
_$RTLCONSTS$_Ld233:
		DB	"rtlconsts.simagewritefail",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$RTLCONSTS$_Ld234
_$RTLCONSTS$_Ld234:
		DB	"Grid index out of range",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld235
_$RTLCONSTS$_Ld235:
		DB	"rtlconsts.sindexoutofrange",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld236
_$RTLCONSTS$_Ld236:
		DB	"Parameter %s cannot be nil",0
	ALIGN 2
	DW	0,1,-1,21
	GLOBAL _$RTLCONSTS$_Ld237
_$RTLCONSTS$_Ld237:
		DB	"rtlconsts.sparamisnil",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$RTLCONSTS$_Ld238
_$RTLCONSTS$_Ld238:
		DB	"Unable to write to ",34,"%s",34,0
	ALIGN 2
	DW	0,1,-1,28
	GLOBAL _$RTLCONSTS$_Ld239
_$RTLCONSTS$_Ld239:
		DB	"rtlconsts.sinifilewriteerror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld240
_$RTLCONSTS$_Ld240:
		DB	"Line could not be inserted",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld241
_$RTLCONSTS$_Ld241:
		DB	"rtlconsts.sinsertlineerror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$RTLCONSTS$_Ld242
_$RTLCONSTS$_Ld242:
		DB	"Invalid action creation",0
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$RTLCONSTS$_Ld243
_$RTLCONSTS$_Ld243:
		DB	"rtlconsts.sinvalidactioncreation",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld244
_$RTLCONSTS$_Ld244:
		DB	"Invalid action enumeration",0
	ALIGN 2
	DW	0,1,-1,35
	GLOBAL _$RTLCONSTS$_Ld245
_$RTLCONSTS$_Ld245:
		DB	"rtlconsts.sinvalidactionenumeration",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$RTLCONSTS$_Ld246
_$RTLCONSTS$_Ld246:
		DB	"Invalid action registration",0
	ALIGN 2
	DW	0,1,-1,36
	GLOBAL _$RTLCONSTS$_Ld247
_$RTLCONSTS$_Ld247:
		DB	"rtlconsts.sinvalidactionregistration",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,29
	GLOBAL _$RTLCONSTS$_Ld248
_$RTLCONSTS$_Ld248:
		DB	"Invalid action unregistration",0
	ALIGN 2
	DW	0,1,-1,38
	GLOBAL _$RTLCONSTS$_Ld249
_$RTLCONSTS$_Ld249:
		DB	"rtlconsts.sinvalidactionunregistration",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,20
	GLOBAL _$RTLCONSTS$_Ld250
_$RTLCONSTS$_Ld250:
		DB	"Invalid binary value",0
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$RTLCONSTS$_Ld251
_$RTLCONSTS$_Ld251:
		DB	"rtlconsts.sinvalidbinary",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,14
	GLOBAL _$RTLCONSTS$_Ld252
_$RTLCONSTS$_Ld252:
		DB	"Invalid Bitmap",0
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$RTLCONSTS$_Ld253
_$RTLCONSTS$_Ld253:
		DB	"rtlconsts.sinvalidbitmap",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$RTLCONSTS$_Ld254
_$RTLCONSTS$_Ld254:
		DB	"Invalid clipboard format",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$RTLCONSTS$_Ld255
_$RTLCONSTS$_Ld255:
		DB	"rtlconsts.sinvalidclipfmt",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,12
	GLOBAL _$RTLCONSTS$_Ld256
_$RTLCONSTS$_Ld256:
		DB	"Invalid item",0
	ALIGN 2
	DW	0,1,-1,29
	GLOBAL _$RTLCONSTS$_Ld257
_$RTLCONSTS$_Ld257:
		DB	"rtlconsts.sinvalidcurrentitem",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,36
	GLOBAL _$RTLCONSTS$_Ld258
_$RTLCONSTS$_Ld258:
		DB	"(%d, %d) is not a valid DateDay pair",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$RTLCONSTS$_Ld259
_$RTLCONSTS$_Ld259:
		DB	"rtlconsts.sinvaliddateday",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,50
	GLOBAL _$RTLCONSTS$_Ld260
_$RTLCONSTS$_Ld260:
		DB	"(%d, %d, %d, %d) is not a valid DateMonthWeek quad",0
	ALIGN 2
	DW	0,1,-1,31
	GLOBAL _$RTLCONSTS$_Ld261
_$RTLCONSTS$_Ld261:
		DB	"rtlconsts.sinvaliddatemonthweek",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,44
	GLOBAL _$RTLCONSTS$_Ld262
_$RTLCONSTS$_Ld262:
		DB	"(%d, %d, %d) is not a valid DateWeek triplet",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld263
_$RTLCONSTS$_Ld263:
		DB	"rtlconsts.sinvaliddateweek",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,53
	GLOBAL _$RTLCONSTS$_Ld264
_$RTLCONSTS$_Ld264:
		DB	"(%d, %d, %d, %d) is not a valid DayOfWeekInMonth quad",0
	ALIGN 2
	DW	0,1,-1,34
	GLOBAL _$RTLCONSTS$_Ld265
_$RTLCONSTS$_Ld265:
		DB	"rtlconsts.sinvaliddayofweekinmonth",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,38
	GLOBAL _$RTLCONSTS$_Ld266
_$RTLCONSTS$_Ld266:
		DB	34,"%s",34," is not a valid date format string",0
	ALIGN 2
	DW	0,1,-1,37
	GLOBAL _$RTLCONSTS$_Ld267
_$RTLCONSTS$_Ld267:
		DB	"rtlconsts.serrillegaldateformatstring",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,30
	GLOBAL _$RTLCONSTS$_Ld268
_$RTLCONSTS$_Ld268:
		DB	34,"%s",34," is not a valid file name.",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld269
_$RTLCONSTS$_Ld269:
		DB	"rtlconsts.sinvalidfilename",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,12
	GLOBAL _$RTLCONSTS$_Ld270
_$RTLCONSTS$_Ld270:
		DB	"Invalid Icon",0
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$RTLCONSTS$_Ld271
_$RTLCONSTS$_Ld271:
		DB	"rtlconsts.sinvalidicon",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,21
	GLOBAL _$RTLCONSTS$_Ld272
_$RTLCONSTS$_Ld272:
		DB	"Invalid stream format",0
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$RTLCONSTS$_Ld273
_$RTLCONSTS$_Ld273:
		DB	"rtlconsts.sinvalidimage",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,17
	GLOBAL _$RTLCONSTS$_Ld274
_$RTLCONSTS$_Ld274:
		DB	"Invalid ImageList",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$RTLCONSTS$_Ld275
_$RTLCONSTS$_Ld275:
		DB	"rtlconsts.sinvalidimagelist",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,18
	GLOBAL _$RTLCONSTS$_Ld276
_$RTLCONSTS$_Ld276:
		DB	"Invalid image size",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$RTLCONSTS$_Ld277
_$RTLCONSTS$_Ld277:
		DB	"rtlconsts.sinvalidimagesize",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$RTLCONSTS$_Ld278
_$RTLCONSTS$_Ld278:
		DB	34,"%s",34," is not a valid mask at (%d)",0
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$RTLCONSTS$_Ld279
_$RTLCONSTS$_Ld279:
		DB	"rtlconsts.sinvalidmask",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,30
	GLOBAL _$RTLCONSTS$_Ld280
_$RTLCONSTS$_Ld280:
		DB	"Text larger than memo capacity",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld281
_$RTLCONSTS$_Ld281:
		DB	"rtlconsts.sinvalidmemosize",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,16
	GLOBAL _$RTLCONSTS$_Ld282
_$RTLCONSTS$_Ld282:
		DB	"Invalid Metafile",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld283
_$RTLCONSTS$_Ld283:
		DB	"rtlconsts.sinvalidmetafile",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,34
	GLOBAL _$RTLCONSTS$_Ld284
_$RTLCONSTS$_Ld284:
		DB	34,"%s",34," is not a valid component name",0
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$RTLCONSTS$_Ld285
_$RTLCONSTS$_Ld285:
		DB	"rtlconsts.sinvalidname",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$RTLCONSTS$_Ld286
_$RTLCONSTS$_Ld286:
		DB	"Invalid numerical value",0
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$RTLCONSTS$_Ld287
_$RTLCONSTS$_Ld287:
		DB	"rtlconsts.sinvalidnumber",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,19
	GLOBAL _$RTLCONSTS$_Ld288
_$RTLCONSTS$_Ld288:
		DB	"Invalid Pixelformat",0
	ALIGN 2
	DW	0,1,-1,29
	GLOBAL _$RTLCONSTS$_Ld289
_$RTLCONSTS$_Ld289:
		DB	"rtlconsts.sinvalidpixelformat",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$RTLCONSTS$_Ld290
_$RTLCONSTS$_Ld290:
		DB	"Selected printer is invalid",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$RTLCONSTS$_Ld291
_$RTLCONSTS$_Ld291:
		DB	"rtlconsts.sinvalidprinter",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,37
	GLOBAL _$RTLCONSTS$_Ld292
_$RTLCONSTS$_Ld292:
		DB	"Operation invalid on selected printer",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$RTLCONSTS$_Ld293
_$RTLCONSTS$_Ld293:
		DB	"rtlconsts.sinvalidprinterop",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$RTLCONSTS$_Ld294
_$RTLCONSTS$_Ld294:
		DB	"Invalid property value",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld295
_$RTLCONSTS$_Ld295:
		DB	"rtlconsts.sinvalidproperty",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,30
	GLOBAL _$RTLCONSTS$_Ld296
_$RTLCONSTS$_Ld296:
		DB	"Invalid property element: ",34,"%s",34,0
	ALIGN 2
	DW	0,1,-1,33
	GLOBAL _$RTLCONSTS$_Ld297
_$RTLCONSTS$_Ld297:
		DB	"rtlconsts.sinvalidpropertyelement",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,21
	GLOBAL _$RTLCONSTS$_Ld298
_$RTLCONSTS$_Ld298:
		DB	"Invalid property path",0
	ALIGN 2
	DW	0,1,-1,30
	GLOBAL _$RTLCONSTS$_Ld299
_$RTLCONSTS$_Ld299:
		DB	"rtlconsts.sinvalidpropertypath",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,31
	GLOBAL _$RTLCONSTS$_Ld300
_$RTLCONSTS$_Ld300:
		DB	"Property type (%s) is not valid",0
	ALIGN 2
	DW	0,1,-1,30
	GLOBAL _$RTLCONSTS$_Ld301
_$RTLCONSTS$_Ld301:
		DB	"rtlconsts.sinvalidpropertytype",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld302
_$RTLCONSTS$_Ld302:
		DB	"Invalid value for property",0
	ALIGN 2
	DW	0,1,-1,31
	GLOBAL _$RTLCONSTS$_Ld303
_$RTLCONSTS$_Ld303:
		DB	"rtlconsts.sinvalidpropertyvalue",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld304
_$RTLCONSTS$_Ld304:
		DB	"Invalid data type for ",34,"%s",34,0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$RTLCONSTS$_Ld305
_$RTLCONSTS$_Ld305:
		DB	"rtlconsts.sinvalidregtype",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,31
	GLOBAL _$RTLCONSTS$_Ld306
_$RTLCONSTS$_Ld306:
		DB	"%s is not a valid Roman numeral",0
	ALIGN 2
	DW	0,1,-1,30
	GLOBAL _$RTLCONSTS$_Ld307
_$RTLCONSTS$_Ld307:
		DB	"rtlconsts.sinvalidromannumeral",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$RTLCONSTS$_Ld308
_$RTLCONSTS$_Ld308:
		DB	"Invalid string constant",0
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$RTLCONSTS$_Ld309
_$RTLCONSTS$_Ld309:
		DB	"rtlconsts.sinvalidstring",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,49
	GLOBAL _$RTLCONSTS$_Ld310
_$RTLCONSTS$_Ld310:
		DB	"Unable to insert rows in or delete rows from grid",0
	ALIGN 2
	DW	0,1,-1,30
	GLOBAL _$RTLCONSTS$_Ld311
_$RTLCONSTS$_Ld311:
		DB	"rtlconsts.sinvalidstringgridop",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$RTLCONSTS$_Ld312
_$RTLCONSTS$_Ld312:
		DB	"Registerindex out of bounds",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld313
_$RTLCONSTS$_Ld313:
		DB	"rtlconsts.sinvalidtabindex",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,6
	GLOBAL _$RTLCONSTS$_Ld314
_$RTLCONSTS$_Ld314:
		DB	"Italic",0
	ALIGN 2
	DW	0,1,-1,21
	GLOBAL _$RTLCONSTS$_Ld315
_$RTLCONSTS$_Ld315:
		DB	"rtlconsts.sitalicfont",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,21
	GLOBAL _$RTLCONSTS$_Ld316
_$RTLCONSTS$_Ld316:
		DB	"Item not found ($0%x)",0
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$RTLCONSTS$_Ld317
_$RTLCONSTS$_Ld317:
		DB	"rtlconsts.sitemnotfound",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,13
	GLOBAL _$RTLCONSTS$_Ld318
_$RTLCONSTS$_Ld318:
		DB	"Line too long",0
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$RTLCONSTS$_Ld319
_$RTLCONSTS$_Ld319:
		DB	"rtlconsts.slinetoolong",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,28
	GLOBAL _$RTLCONSTS$_Ld320
_$RTLCONSTS$_Ld320:
		DB	"List capacity (%d) exceeded.",0
	ALIGN 2
	DW	0,1,-1,28
	GLOBAL _$RTLCONSTS$_Ld321
_$RTLCONSTS$_Ld321:
		DB	"rtlconsts.slistcapacityerror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,30
	GLOBAL _$RTLCONSTS$_Ld322
_$RTLCONSTS$_Ld322:
		DB	"List count (%d) out of bounds.",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$RTLCONSTS$_Ld323
_$RTLCONSTS$_Ld323:
		DB	"rtlconsts.slistcounterror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,29
	GLOBAL _$RTLCONSTS$_Ld324
_$RTLCONSTS$_Ld324:
		DB	"List index (%d) out of bounds",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$RTLCONSTS$_Ld325
_$RTLCONSTS$_Ld325:
		DB	"rtlconsts.slistindexerror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,37
	GLOBAL _$RTLCONSTS$_Ld326
_$RTLCONSTS$_Ld326:
		DB	"Incompatible item size in source list",0
	ALIGN 2
	DW	0,1,-1,28
	GLOBAL _$RTLCONSTS$_Ld327
_$RTLCONSTS$_Ld327:
		DB	"rtlconsts.slistitemsizeerror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,36
	GLOBAL _$RTLCONSTS$_Ld328
_$RTLCONSTS$_Ld328:
		DB	"Map key (address $%x) does not exist",0
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$RTLCONSTS$_Ld329
_$RTLCONSTS$_Ld329:
		DB	"rtlconsts.smapkeyerror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,60
	GLOBAL _$RTLCONSTS$_Ld330
_$RTLCONSTS$_Ld330:
		DB	"Invalid mask input value.  Use escape key to abandon changes",0
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$RTLCONSTS$_Ld331
_$RTLCONSTS$_Ld331:
		DB	"rtlconsts.smaskediterr",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$RTLCONSTS$_Ld332
_$RTLCONSTS$_Ld332:
		DB	"Invalid mask input value",0
	ALIGN 2
	DW	0,1,-1,18
	GLOBAL _$RTLCONSTS$_Ld333
_$RTLCONSTS$_Ld333:
		DB	"rtlconsts.smaskerr",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,37
	GLOBAL _$RTLCONSTS$_Ld334
_$RTLCONSTS$_Ld334:
		DB	"A MDI-Child Window can not be hidden.",0
	ALIGN 2
	DW	0,1,-1,29
	GLOBAL _$RTLCONSTS$_Ld335
_$RTLCONSTS$_Ld335:
		DB	"rtlconsts.smdichildnotvisible",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,43
	GLOBAL _$RTLCONSTS$_Ld336
_$RTLCONSTS$_Ld336:
		DB	"Out of memory while expanding memory stream",0
	ALIGN 2
	DW	0,1,-1,28
	GLOBAL _$RTLCONSTS$_Ld337
_$RTLCONSTS$_Ld337:
		DB	"rtlconsts.smemorystreamerror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$RTLCONSTS$_Ld338
_$RTLCONSTS$_Ld338:
		DB	"Menu Index out of range",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$RTLCONSTS$_Ld339
_$RTLCONSTS$_Ld339:
		DB	"rtlconsts.smenuindexerror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,28
	GLOBAL _$RTLCONSTS$_Ld340
_$RTLCONSTS$_Ld340:
		DB	"Menu entry not found in menu",0
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$RTLCONSTS$_Ld341
_$RTLCONSTS$_Ld341:
		DB	"rtlconsts.smenunotfound",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,15
	GLOBAL _$RTLCONSTS$_Ld342
_$RTLCONSTS$_Ld342:
		DB	"Menu reinserted",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$RTLCONSTS$_Ld343
_$RTLCONSTS$_Ld343:
		DB	"rtlconsts.smenureinserted",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,1
	GLOBAL _$RTLCONSTS$_Ld344
_$RTLCONSTS$_Ld344:
		DB	"?",0
	ALIGN 2
	DW	0,1,-1,31
	GLOBAL _$RTLCONSTS$_Ld345
_$RTLCONSTS$_Ld345:
		DB	"rtlconsts.smissingdatetimefield",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,101
	GLOBAL _$RTLCONSTS$_Ld346
_$RTLCONSTS$_Ld346:
		DB	"All files (*.*)|*.*|Wave-files (*.WAV)|*.WAV|Midi-files (*.MID)|"
		DB	"*.MID|Video for Windows (*.avi)|*.avi",0
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$RTLCONSTS$_Ld347
_$RTLCONSTS$_Ld347:
		DB	"rtlconsts.smpopenfilter",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,11
	GLOBAL _$RTLCONSTS$_Ld348
_$RTLCONSTS$_Ld348:
		DB	"Ne&twork...",0
	ALIGN 2
	DW	0,1,-1,21
	GLOBAL _$RTLCONSTS$_Ld349
_$RTLCONSTS$_Ld349:
		DB	"rtlconsts.snetworkcap",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,20
	GLOBAL _$RTLCONSTS$_Ld350
_$RTLCONSTS$_Ld350:
		DB	"No address specified",0
	ALIGN 2
	DW	0,1,-1,20
	GLOBAL _$RTLCONSTS$_Ld351
_$RTLCONSTS$_Ld351:
		DB	"rtlconsts.snoaddress",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,3
	GLOBAL _$RTLCONSTS$_Ld352
_$RTLCONSTS$_Ld352:
		DB	"&No",0
	ALIGN 2
	DW	0,1,-1,19
	GLOBAL _$RTLCONSTS$_Ld353
_$RTLCONSTS$_Ld353:
		DB	"rtlconsts.snobutton",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,36
	GLOBAL _$RTLCONSTS$_Ld354
_$RTLCONSTS$_Ld354:
		DB	"Canvas handle does not allow drawing",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$RTLCONSTS$_Ld355
_$RTLCONSTS$_Ld355:
		DB	"rtlconsts.snocanvashandle",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,43
	GLOBAL _$RTLCONSTS$_Ld356
_$RTLCONSTS$_Ld356:
		DB	34,"%s",34," has not been registered as a COM class",0
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$RTLCONSTS$_Ld357
_$RTLCONSTS$_Ld357:
		DB	"rtlconsts.snocomsupport",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,31
	GLOBAL _$RTLCONSTS$_Ld358
_$RTLCONSTS$_Ld358:
		DB	"No default printer was selected",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$RTLCONSTS$_Ld359
_$RTLCONSTS$_Ld359:
		DB	"rtlconsts.snodefaultprinter",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,40
	GLOBAL _$RTLCONSTS$_Ld360
_$RTLCONSTS$_Ld360:
		DB	"No MDI form is available, none is active",0
	ALIGN 2
	DW	0,1,-1,20
	GLOBAL _$RTLCONSTS$_Ld361
_$RTLCONSTS$_Ld361:
		DB	"rtlconsts.snomdiform",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,19
	GLOBAL _$RTLCONSTS$_Ld362
_$RTLCONSTS$_Ld362:
		DB	"No timers available",0
	ALIGN 2
	DW	0,1,-1,19
	GLOBAL _$RTLCONSTS$_Ld363
_$RTLCONSTS$_Ld363:
		DB	"rtlconsts.snotimers",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,20
	GLOBAL _$RTLCONSTS$_Ld364
_$RTLCONSTS$_Ld364:
		DB	"No MCI-device opened",0
	ALIGN 2
	DW	0,1,-1,21
	GLOBAL _$RTLCONSTS$_Ld365
_$RTLCONSTS$_Ld365:
		DB	"rtlconsts.snotopenerr",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,33
	GLOBAL _$RTLCONSTS$_Ld366
_$RTLCONSTS$_Ld366:
		DB	"Printer is not currently printing",0
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$RTLCONSTS$_Ld367
_$RTLCONSTS$_Ld367:
		DB	"rtlconsts.snotprinting",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,18
	GLOBAL _$RTLCONSTS$_Ld368
_$RTLCONSTS$_Ld368:
		DB	"No procedure given",0
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$RTLCONSTS$_Ld369
_$RTLCONSTS$_Ld369:
		DB	"rtlconsts.snoprocgiven",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,17
	GLOBAL _$RTLCONSTS$_Ld370
_$RTLCONSTS$_Ld370:
		DB	": [ - No name - ]",0
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$RTLCONSTS$_Ld371
_$RTLCONSTS$_Ld371:
		DB	"rtlconsts.snovolumelabel",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,15
	GLOBAL _$RTLCONSTS$_Ld372
_$RTLCONSTS$_Ld372:
		DB	"Number expected",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$RTLCONSTS$_Ld373
_$RTLCONSTS$_Ld373:
		DB	"rtlconsts.snumberexpected",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,2
	GLOBAL _$RTLCONSTS$_Ld374
_$RTLCONSTS$_Ld374:
		DB	"OK",0
	ALIGN 2
	DW	0,1,-1,19
	GLOBAL _$RTLCONSTS$_Ld375
_$RTLCONSTS$_Ld375:
		DB	"rtlconsts.sokbutton",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,36
	GLOBAL _$RTLCONSTS$_Ld376
_$RTLCONSTS$_Ld376:
		DB	"Can not load older version of TShape",0
	ALIGN 2
	DW	0,1,-1,20
	GLOBAL _$RTLCONSTS$_Ld377
_$RTLCONSTS$_Ld377:
		DB	"rtlconsts.soldtshape",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,33
	GLOBAL _$RTLCONSTS$_Ld378
_$RTLCONSTS$_Ld378:
		DB	"Invalid operation for TOleGraphic",0
	ALIGN 2
	DW	0,1,-1,21
	GLOBAL _$RTLCONSTS$_Ld379
_$RTLCONSTS$_Ld379:
		DB	"rtlconsts.solegraphic",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,3
	GLOBAL _$RTLCONSTS$_Ld380
_$RTLCONSTS$_Ld380:
		DB	"???",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld381
_$RTLCONSTS$_Ld381:
		DB	"rtlconsts.soutlinebadlevel",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,18
	GLOBAL _$RTLCONSTS$_Ld382
_$RTLCONSTS$_Ld382:
		DB	"Invalid Node index",0
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$RTLCONSTS$_Ld383
_$RTLCONSTS$_Ld383:
		DB	"rtlconsts.soutlineerror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,28
	GLOBAL _$RTLCONSTS$_Ld384
_$RTLCONSTS$_Ld384:
		DB	"Parent node must be expanded",0
	ALIGN 2
	DW	0,1,-1,29
	GLOBAL _$RTLCONSTS$_Ld385
_$RTLCONSTS$_Ld385:
		DB	"rtlconsts.soutlineexpanderror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,18
	GLOBAL _$RTLCONSTS$_Ld386
_$RTLCONSTS$_Ld386:
		DB	"Error loading file",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld387
_$RTLCONSTS$_Ld387:
		DB	"rtlconsts.soutlinefileload",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,20
	GLOBAL _$RTLCONSTS$_Ld388
_$RTLCONSTS$_Ld388:
		DB	"Node index not found",0
	ALIGN 2
	DW	0,1,-1,28
	GLOBAL _$RTLCONSTS$_Ld389
_$RTLCONSTS$_Ld389:
		DB	"rtlconsts.soutlineindexerror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,13
	GLOBAL _$RTLCONSTS$_Ld390
_$RTLCONSTS$_Ld390:
		DB	"Line too long",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld391
_$RTLCONSTS$_Ld391:
		DB	"rtlconsts.soutlinelongline",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$RTLCONSTS$_Ld392
_$RTLCONSTS$_Ld392:
		DB	"Maximum level exceeded",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$RTLCONSTS$_Ld393
_$RTLCONSTS$_Ld393:
		DB	"rtlconsts.soutlinemaxlevels",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,17
	GLOBAL _$RTLCONSTS$_Ld394
_$RTLCONSTS$_Ld394:
		DB	"Invalid selection",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$RTLCONSTS$_Ld395
_$RTLCONSTS$_Ld395:
		DB	"rtlconsts.soutlineselection",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,31
	GLOBAL _$RTLCONSTS$_Ld396
_$RTLCONSTS$_Ld396:
		DB	"Value must be between %d and %d",0
	ALIGN 2
	DW	0,1,-1,21
	GLOBAL _$RTLCONSTS$_Ld397
_$RTLCONSTS$_Ld397:
		DB	"rtlconsts.soutofrange",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$RTLCONSTS$_Ld398
_$RTLCONSTS$_Ld398:
		DB	"Out of system resources",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$RTLCONSTS$_Ld399
_$RTLCONSTS$_Ld399:
		DB	"rtlconsts.soutofresources",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,33
	GLOBAL _$RTLCONSTS$_Ld400
_$RTLCONSTS$_Ld400:
		DB	"Element '%s' has no parent Window",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$RTLCONSTS$_Ld401
_$RTLCONSTS$_Ld401:
		DB	"rtlconsts.sparentrequired",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,13
	GLOBAL _$RTLCONSTS$_Ld402
_$RTLCONSTS$_Ld402:
		DB	"%s on line %d",0
	ALIGN 2
	DW	0,1,-1,21
	GLOBAL _$RTLCONSTS$_Ld403
_$RTLCONSTS$_Ld403:
		DB	"rtlconsts.sparseerror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,31
	GLOBAL _$RTLCONSTS$_Ld404
_$RTLCONSTS$_Ld404:
		DB	" (at %d,%d, stream offset %.8x)",0
	ALIGN 2
	DW	0,1,-1,21
	GLOBAL _$RTLCONSTS$_Ld405
_$RTLCONSTS$_Ld405:
		DB	"rtlconsts.sparlocinfo",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,29
	GLOBAL _$RTLCONSTS$_Ld406
_$RTLCONSTS$_Ld406:
		DB	"Wrong token type: %s expected",0
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$RTLCONSTS$_Ld407
_$RTLCONSTS$_Ld407:
		DB	"rtlconsts.sparexpected",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,42
	GLOBAL _$RTLCONSTS$_Ld408
_$RTLCONSTS$_Ld408:
		DB	"Wrong token type: %s expected but %s found",0
	ALIGN 2
	DW	0,1,-1,28
	GLOBAL _$RTLCONSTS$_Ld409
_$RTLCONSTS$_Ld409:
		DB	"rtlconsts.sparwrongtokentype",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,44
	GLOBAL _$RTLCONSTS$_Ld410
_$RTLCONSTS$_Ld410:
		DB	"Wrong token symbol: %s expected but %s found",0
	ALIGN 2
	DW	0,1,-1,30
	GLOBAL _$RTLCONSTS$_Ld411
_$RTLCONSTS$_Ld411:
		DB	"rtlconsts.sparwrongtokensymbol",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld412
_$RTLCONSTS$_Ld412:
		DB	"Invalid integer number: %s",0
	ALIGN 2
	DW	0,1,-1,28
	GLOBAL _$RTLCONSTS$_Ld413
_$RTLCONSTS$_Ld413:
		DB	"rtlconsts.sparinvalidinteger",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,33
	GLOBAL _$RTLCONSTS$_Ld414
_$RTLCONSTS$_Ld414:
		DB	"Invalid floating point number: %s",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld415
_$RTLCONSTS$_Ld415:
		DB	"rtlconsts.sparinvalidfloat",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,19
	GLOBAL _$RTLCONSTS$_Ld416
_$RTLCONSTS$_Ld416:
		DB	"Unterminated string",0
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$RTLCONSTS$_Ld417
_$RTLCONSTS$_Ld417:
		DB	"rtlconsts.sparunterminatedstring",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$RTLCONSTS$_Ld418
_$RTLCONSTS$_Ld418:
		DB	"Unterminated byte value",0
	ALIGN 2
	DW	0,1,-1,34
	GLOBAL _$RTLCONSTS$_Ld419
_$RTLCONSTS$_Ld419:
		DB	"rtlconsts.sparunterminatedbinvalue",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,8
	GLOBAL _$RTLCONSTS$_Ld420
_$RTLCONSTS$_Ld420:
		DB	" (%dx%d)",0
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$RTLCONSTS$_Ld421
_$RTLCONSTS$_Ld421:
		DB	"rtlconsts.spicturedesc",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,6
	GLOBAL _$RTLCONSTS$_Ld422
_$RTLCONSTS$_Ld422:
		DB	"Image:",0
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$RTLCONSTS$_Ld423
_$RTLCONSTS$_Ld423:
		DB	"rtlconsts.spicturelabel",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,7
	GLOBAL _$RTLCONSTS$_Ld424
_$RTLCONSTS$_Ld424:
		DB	"Preview",0
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$RTLCONSTS$_Ld425
_$RTLCONSTS$_Ld425:
		DB	"rtlconsts.spreviewlabel",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld426
_$RTLCONSTS$_Ld426:
		DB	"Printer Index out of range",0
	ALIGN 2
	DW	0,1,-1,28
	GLOBAL _$RTLCONSTS$_Ld427
_$RTLCONSTS$_Ld427:
		DB	"rtlconsts.sprinterindexerror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,20
	GLOBAL _$RTLCONSTS$_Ld428
_$RTLCONSTS$_Ld428:
		DB	"Printing in progress",0
	ALIGN 2
	DW	0,1,-1,19
	GLOBAL _$RTLCONSTS$_Ld429
_$RTLCONSTS$_Ld429:
		DB	"rtlconsts.sprinting",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,10
	GLOBAL _$RTLCONSTS$_Ld430
_$RTLCONSTS$_Ld430:
		DB	"Properties",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$RTLCONSTS$_Ld431
_$RTLCONSTS$_Ld431:
		DB	"rtlconsts.spropertiesverb",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$RTLCONSTS$_Ld432
_$RTLCONSTS$_Ld432:
		DB	"Error reading %s%s%s: %s",0
	ALIGN 2
	DW	0,1,-1,28
	GLOBAL _$RTLCONSTS$_Ld433
_$RTLCONSTS$_Ld433:
		DB	"rtlconsts.spropertyexception",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$RTLCONSTS$_Ld434
_$RTLCONSTS$_Ld434:
		DB	"Property %s out of range",0
	ALIGN 2
	DW	0,1,-1,29
	GLOBAL _$RTLCONSTS$_Ld435
_$RTLCONSTS$_Ld435:
		DB	"rtlconsts.spropertyoutofrange",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,29
	GLOBAL _$RTLCONSTS$_Ld436
_$RTLCONSTS$_Ld436:
		DB	"PutObject on undefined object",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$RTLCONSTS$_Ld437
_$RTLCONSTS$_Ld437:
		DB	"rtlconsts.sputobjecterror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,11
	GLOBAL _$RTLCONSTS$_Ld438
_$RTLCONSTS$_Ld438:
		DB	"Range error",0
	ALIGN 2
	DW	0,1,-1,21
	GLOBAL _$RTLCONSTS$_Ld439
_$RTLCONSTS$_Ld439:
		DB	"rtlconsts.srangeerror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,17
	GLOBAL _$RTLCONSTS$_Ld440
_$RTLCONSTS$_Ld440:
		DB	"Stream read error",0
	ALIGN 2
	DW	0,1,-1,20
	GLOBAL _$RTLCONSTS$_Ld441
_$RTLCONSTS$_Ld441:
		DB	"rtlconsts.sreaderror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,21
	GLOBAL _$RTLCONSTS$_Ld442
_$RTLCONSTS$_Ld442:
		DB	"Property is read-only",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$RTLCONSTS$_Ld443
_$RTLCONSTS$_Ld443:
		DB	"rtlconsts.sreadonlyproperty",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$RTLCONSTS$_Ld444
_$RTLCONSTS$_Ld444:
		DB	"Failed to create key %s",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld445
_$RTLCONSTS$_Ld445:
		DB	"rtlconsts.sregcreatefailed",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$RTLCONSTS$_Ld446
_$RTLCONSTS$_Ld446:
		DB	"Failed to get data for ",34,"%s",34,0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$RTLCONSTS$_Ld447
_$RTLCONSTS$_Ld447:
		DB	"rtlconsts.sreggetdatafailed",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,30
	GLOBAL _$RTLCONSTS$_Ld448
_$RTLCONSTS$_Ld448:
		DB	"Invalid component registration",0
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$RTLCONSTS$_Ld449
_$RTLCONSTS$_Ld449:
		DB	"rtlconsts.sregistererror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$RTLCONSTS$_Ld450
_$RTLCONSTS$_Ld450:
		DB	"Failed to set data for ",34,"%s",34,0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$RTLCONSTS$_Ld451
_$RTLCONSTS$_Ld451:
		DB	"rtlconsts.sregsetdatafailed",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,6
	GLOBAL _$RTLCONSTS$_Ld452
_$RTLCONSTS$_Ld452:
		DB	"Normal",0
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$RTLCONSTS$_Ld453
_$RTLCONSTS$_Ld453:
		DB	"rtlconsts.sregularfont",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$RTLCONSTS$_Ld454
_$RTLCONSTS$_Ld454:
		DB	"Image can not be replaced",0
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$RTLCONSTS$_Ld455
_$RTLCONSTS$_Ld455:
		DB	"rtlconsts.sreplaceimage",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$RTLCONSTS$_Ld456
_$RTLCONSTS$_Ld456:
		DB	"Resource ",34,"%s",34," not found",0
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$RTLCONSTS$_Ld457
_$RTLCONSTS$_Ld457:
		DB	"rtlconsts.sresnotfound",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,6
	GLOBAL _$RTLCONSTS$_Ld458
_$RTLCONSTS$_Ld458:
		DB	"&Retry",0
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$RTLCONSTS$_Ld459
_$RTLCONSTS$_Ld459:
		DB	"rtlconsts.sretrybutton",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,7
	GLOBAL _$RTLCONSTS$_Ld460
_$RTLCONSTS$_Ld460:
		DB	"(Empty)",0
	ALIGN 2
	DW	0,1,-1,16
	GLOBAL _$RTLCONSTS$_Ld461
_$RTLCONSTS$_Ld461:
		DB	"rtlconsts.srnone",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,9
	GLOBAL _$RTLCONSTS$_Ld462
_$RTLCONSTS$_Ld462:
		DB	"(Unknown)",0
	ALIGN 2
	DW	0,1,-1,19
	GLOBAL _$RTLCONSTS$_Ld463
_$RTLCONSTS$_Ld463:
		DB	"rtlconsts.srunknown",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$RTLCONSTS$_Ld464
_$RTLCONSTS$_Ld464:
		DB	"Line index out of bounds",0
	ALIGN 2
	DW	0,1,-1,19
	GLOBAL _$RTLCONSTS$_Ld465
_$RTLCONSTS$_Ld465:
		DB	"rtlconsts.sscanline",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,31
	GLOBAL _$RTLCONSTS$_Ld466
_$RTLCONSTS$_Ld466:
		DB	"Scrollbar property out of range",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$RTLCONSTS$_Ld467
_$RTLCONSTS$_Ld467:
		DB	"rtlconsts.sscrollbarrange",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$RTLCONSTS$_Ld468
_$RTLCONSTS$_Ld468:
		DB	"%s.Seek not implemented",0
	ALIGN 2
	DW	0,1,-1,29
	GLOBAL _$RTLCONSTS$_Ld469
_$RTLCONSTS$_Ld469:
		DB	"rtlconsts.sseeknotimplemented",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,16
	GLOBAL _$RTLCONSTS$_Ld470
_$RTLCONSTS$_Ld470:
		DB	"Select directory",0
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$RTLCONSTS$_Ld471
_$RTLCONSTS$_Ld471:
		DB	"rtlconsts.sselectdircap",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$RTLCONSTS$_Ld472
_$RTLCONSTS$_Ld472:
		DB	"Socket is already open",0
	ALIGN 2
	DW	0,1,-1,28
	GLOBAL _$RTLCONSTS$_Ld473
_$RTLCONSTS$_Ld473:
		DB	"rtlconsts.ssocketalreadyopen",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,15
	GLOBAL _$RTLCONSTS$_Ld474
_$RTLCONSTS$_Ld474:
		DB	"%s error %d, %s",0
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$RTLCONSTS$_Ld475
_$RTLCONSTS$_Ld475:
		DB	"rtlconsts.ssocketioerror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,31
	GLOBAL _$RTLCONSTS$_Ld476
_$RTLCONSTS$_Ld476:
		DB	"Socket must be in blocking mode",0
	ALIGN 2
	DW	0,1,-1,31
	GLOBAL _$RTLCONSTS$_Ld477
_$RTLCONSTS$_Ld477:
		DB	"rtlconsts.ssocketmustbeblocking",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,4
	GLOBAL _$RTLCONSTS$_Ld478
_$RTLCONSTS$_Ld478:
		DB	"Read",0
	ALIGN 2
	DW	0,1,-1,21
	GLOBAL _$RTLCONSTS$_Ld479
_$RTLCONSTS$_Ld479:
		DB	"rtlconsts.ssocketread",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,5
	GLOBAL _$RTLCONSTS$_Ld480
_$RTLCONSTS$_Ld480:
		DB	"Write",0
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$RTLCONSTS$_Ld481
_$RTLCONSTS$_Ld481:
		DB	"rtlconsts.ssocketwrite",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,36
	GLOBAL _$RTLCONSTS$_Ld482
_$RTLCONSTS$_Ld482:
		DB	"Operation not allowed on sorted list",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld483
_$RTLCONSTS$_Ld483:
		DB	"rtlconsts.ssortedlisterror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$RTLCONSTS$_Ld484
_$RTLCONSTS$_Ld484:
		DB	"Invalid stream operation %s.Seek",0
	ALIGN 2
	DW	0,1,-1,28
	GLOBAL _$RTLCONSTS$_Ld485
_$RTLCONSTS$_Ld485:
		DB	"rtlconsts.sstreaminvalidseek",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$RTLCONSTS$_Ld486
_$RTLCONSTS$_Ld486:
		DB	"Reading from %s is not supported",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld487
_$RTLCONSTS$_Ld487:
		DB	"rtlconsts.sstreamnoreading",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,30
	GLOBAL _$RTLCONSTS$_Ld488
_$RTLCONSTS$_Ld488:
		DB	"Writing to %s is not supported",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld489
_$RTLCONSTS$_Ld489:
		DB	"rtlconsts.sstreamnowriting",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$RTLCONSTS$_Ld490
_$RTLCONSTS$_Ld490:
		DB	"Error setting stream size",0
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$RTLCONSTS$_Ld491
_$RTLCONSTS$_Ld491:
		DB	"rtlconsts.sstreamsetsize",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,15
	GLOBAL _$RTLCONSTS$_Ld492
_$RTLCONSTS$_Ld492:
		DB	"String expected",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$RTLCONSTS$_Ld493
_$RTLCONSTS$_Ld493:
		DB	"rtlconsts.sstringexpected",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,11
	GLOBAL _$RTLCONSTS$_Ld494
_$RTLCONSTS$_Ld494:
		DB	"%s expected",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$RTLCONSTS$_Ld495
_$RTLCONSTS$_Ld495:
		DB	"rtlconsts.ssymbolexpected",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$RTLCONSTS$_Ld496
_$RTLCONSTS$_Ld496:
		DB	"Thread creation error: %s",0
	ALIGN 2
	DW	0,1,-1,28
	GLOBAL _$RTLCONSTS$_Ld497
_$RTLCONSTS$_Ld497:
		DB	"rtlconsts.sthreadcreateerror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,21
	GLOBAL _$RTLCONSTS$_Ld498
_$RTLCONSTS$_Ld498:
		DB	"Thread Error: %s (%d)",0
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$RTLCONSTS$_Ld499
_$RTLCONSTS$_Ld499:
		DB	"rtlconsts.sthreaderror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,30
	GLOBAL _$RTLCONSTS$_Ld500
_$RTLCONSTS$_Ld500:
		DB	"Thread was created from extern",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$RTLCONSTS$_Ld501
_$RTLCONSTS$_Ld501:
		DB	"rtlconsts.sthreadexternal",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$RTLCONSTS$_Ld502
_$RTLCONSTS$_Ld502:
		DB	"Too many rows or columns deleted",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$RTLCONSTS$_Ld503
_$RTLCONSTS$_Ld503:
		DB	"rtlconsts.stoomanydeleted",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,15
	GLOBAL _$RTLCONSTS$_Ld504
_$RTLCONSTS$_Ld504:
		DB	"Too many images",0
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$RTLCONSTS$_Ld505
_$RTLCONSTS$_Ld505:
		DB	"rtlconsts.stoomanyimages",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,38
	GLOBAL _$RTLCONSTS$_Ld506
_$RTLCONSTS$_Ld506:
		DB	"There is only one MDI window available",0
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$RTLCONSTS$_Ld507
_$RTLCONSTS$_Ld507:
		DB	"rtlconsts.stwomdiforms",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$RTLCONSTS$_Ld508
_$RTLCONSTS$_Ld508:
		DB	"Unknown clipboard format",0
	ALIGN 2
	DW	0,1,-1,33
	GLOBAL _$RTLCONSTS$_Ld509
_$RTLCONSTS$_Ld509:
		DB	"rtlconsts.sunknownclipboardformat",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,47
	GLOBAL _$RTLCONSTS$_Ld510
_$RTLCONSTS$_Ld510:
		DB	"Unknown extension for RichEdit-conversion (.%s)",0
	ALIGN 2
	DW	0,1,-1,28
	GLOBAL _$RTLCONSTS$_Ld511
_$RTLCONSTS$_Ld511:
		DB	"rtlconsts.sunknownconversion",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$RTLCONSTS$_Ld512
_$RTLCONSTS$_Ld512:
		DB	"Unknown extension (.%s)",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$RTLCONSTS$_Ld513
_$RTLCONSTS$_Ld513:
		DB	"rtlconsts.sunknownextension",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,36
	GLOBAL _$RTLCONSTS$_Ld514
_$RTLCONSTS$_Ld514:
		DB	"%s not in a class registration group",0
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$RTLCONSTS$_Ld515
_$RTLCONSTS$_Ld515:
		DB	"rtlconsts.sunknowngroup",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$RTLCONSTS$_Ld516
_$RTLCONSTS$_Ld516:
		DB	"Unknown property: ",34,"%s",34,0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld517
_$RTLCONSTS$_Ld517:
		DB	"rtlconsts.sunknownproperty",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$RTLCONSTS$_Ld518
_$RTLCONSTS$_Ld518:
		DB	"Unknown property type %d",0
	ALIGN 2
	DW	0,1,-1,30
	GLOBAL _$RTLCONSTS$_Ld519
_$RTLCONSTS$_Ld519:
		DB	"rtlconsts.sunknownpropertytype",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,36
	GLOBAL _$RTLCONSTS$_Ld520
_$RTLCONSTS$_Ld520:
		DB	"Unsupported property variant type %d",0
	ALIGN 2
	DW	0,1,-1,41
	GLOBAL _$RTLCONSTS$_Ld521
_$RTLCONSTS$_Ld521:
		DB	"rtlconsts.sunsupportedpropertyvarianttype",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,10
	GLOBAL _$RTLCONSTS$_Ld522
_$RTLCONSTS$_Ld522:
		DB	"(Untitled)",0
	ALIGN 2
	DW	0,1,-1,19
	GLOBAL _$RTLCONSTS$_Ld523
_$RTLCONSTS$_Ld523:
		DB	"rtlconsts.suntitled",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,7
	GLOBAL _$RTLCONSTS$_Ld524
_$RTLCONSTS$_Ld524:
		DB	"Bitmaps",0
	ALIGN 2
	DW	0,1,-1,19
	GLOBAL _$RTLCONSTS$_Ld525
_$RTLCONSTS$_Ld525:
		DB	"rtlconsts.svbitmaps",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,18
	GLOBAL _$RTLCONSTS$_Ld526
_$RTLCONSTS$_Ld526:
		DB	"Enhanced MetaFiles",0
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$RTLCONSTS$_Ld527
_$RTLCONSTS$_Ld527:
		DB	"rtlconsts.svenhmetafiles",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,5
	GLOBAL _$RTLCONSTS$_Ld528
_$RTLCONSTS$_Ld528:
		DB	"Icons",0
	ALIGN 2
	DW	0,1,-1,17
	GLOBAL _$RTLCONSTS$_Ld529
_$RTLCONSTS$_Ld529:
		DB	"rtlconsts.svicons",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,63
	GLOBAL _$RTLCONSTS$_Ld530
_$RTLCONSTS$_Ld530:
		DB	"Visible property cannot be changed in OnShow or OnHide handlers",0

	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$RTLCONSTS$_Ld531
_$RTLCONSTS$_Ld531:
		DB	"rtlconsts.svisiblechanged",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,9
	GLOBAL _$RTLCONSTS$_Ld532
_$RTLCONSTS$_Ld532:
		DB	"MetaFiles",0
	ALIGN 2
	DW	0,1,-1,21
	GLOBAL _$RTLCONSTS$_Ld533
_$RTLCONSTS$_Ld533:
		DB	"rtlconsts.svmetafiles",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,36
	GLOBAL _$RTLCONSTS$_Ld534
_$RTLCONSTS$_Ld534:
		DB	"Error when initializing Window Class",0
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$RTLCONSTS$_Ld535
_$RTLCONSTS$_Ld535:
		DB	"rtlconsts.swindowclass",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld536
_$RTLCONSTS$_Ld536:
		DB	"Error when creating Window",0
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$RTLCONSTS$_Ld537
_$RTLCONSTS$_Ld537:
		DB	"rtlconsts.swindowcreate",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,12
	GLOBAL _$RTLCONSTS$_Ld538
_$RTLCONSTS$_Ld538:
		DB	"Error when??",0
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$RTLCONSTS$_Ld539
_$RTLCONSTS$_Ld539:
		DB	"rtlconsts.swindowdcerror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,53
	GLOBAL _$RTLCONSTS$_Ld540
_$RTLCONSTS$_Ld540:
		DB	"A Windows socket error occurred: %s (%d), on API ",34,"%s",34,0
	ALIGN 2
	DW	0,1,-1,29
	GLOBAL _$RTLCONSTS$_Ld541
_$RTLCONSTS$_Ld541:
		DB	"rtlconsts.swindowssocketerror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,18
	GLOBAL _$RTLCONSTS$_Ld542
_$RTLCONSTS$_Ld542:
		DB	"Stream write error",0
	ALIGN 2
	DW	0,1,-1,21
	GLOBAL _$RTLCONSTS$_Ld543
_$RTLCONSTS$_Ld543:
		DB	"rtlconsts.swriteerror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,4
	GLOBAL _$RTLCONSTS$_Ld544
_$RTLCONSTS$_Ld544:
		DB	"&Yes",0
	ALIGN 2
	DW	0,1,-1,20
	GLOBAL _$RTLCONSTS$_Ld545
_$RTLCONSTS$_Ld545:
		DB	"rtlconsts.syesbutton",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,37
	GLOBAL _$RTLCONSTS$_Ld546
_$RTLCONSTS$_Ld546:
		DB	"String index %d out of range [1 - %d]",0
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$RTLCONSTS$_Ld547
_$RTLCONSTS$_Ld547:
		DB	"rtlconsts.sstringindexoutofrange",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,47
	GLOBAL _$RTLCONSTS$_Ld548
_$RTLCONSTS$_Ld548:
		DB	"High surrogate $%x out of range [$D800 - $DBFF]",0
	ALIGN 2
	DW	0,1,-1,34
	GLOBAL _$RTLCONSTS$_Ld549
_$RTLCONSTS$_Ld549:
		DB	"rtlconsts.shighsurrogateoutofrange",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,46
	GLOBAL _$RTLCONSTS$_Ld550
_$RTLCONSTS$_Ld550:
		DB	"Low surrogate $%x out of range [$DC00 - $DFFF]",0
	ALIGN 2
	DW	0,1,-1,33
	GLOBAL _$RTLCONSTS$_Ld551
_$RTLCONSTS$_Ld551:
		DB	"rtlconsts.slowsurrogateoutofrange",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,119
	GLOBAL _$RTLCONSTS$_Ld552
_$RTLCONSTS$_Ld552:
		DB	"Invalid UTF32 character $%x. Valid UTF32 character must be in ra"
		DB	"nge [$0 - $10FFFF] except surrogate range [$D800-$DFFF]",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$RTLCONSTS$_Ld553
_$RTLCONSTS$_Ld553:
		DB	"rtlconsts.sinvalidutf32char",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,91
	GLOBAL _$RTLCONSTS$_Ld554
_$RTLCONSTS$_Ld554:
		DB	"Invalid high surrogate at index %d. High surrogate must be follo"
		DB	"wed by a low surrogate pair",0
	ALIGN 2
	DW	0,1,-1,31
	GLOBAL _$RTLCONSTS$_Ld555
_$RTLCONSTS$_Ld555:
		DB	"rtlconsts.sinvalidhighsurrogate",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,35
	GLOBAL _$RTLCONSTS$_Ld556
_$RTLCONSTS$_Ld556:
		DB	"Invalid unicode code point sequence",0
	ALIGN 2
	DW	0,1,-1,42
	GLOBAL _$RTLCONSTS$_Ld557
_$RTLCONSTS$_Ld557:
		DB	"rtlconsts.sinvalidunicodecodepointsequence",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,31
	GLOBAL _$RTLCONSTS$_Ld558
_$RTLCONSTS$_Ld558:
		DB	"Class %s can not be constructed",0
	ALIGN 2
	DW	0,1,-1,33
	GLOBAL _$RTLCONSTS$_Ld559
_$RTLCONSTS$_Ld559:
		DB	"rtlconsts.sclasscantbeconstructed",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,45
	GLOBAL _$RTLCONSTS$_Ld560
_$RTLCONSTS$_Ld560:
		DB	"Thread status report handler cannot be empty.",0
	ALIGN 2
	DW	0,1,-1,36
	GLOBAL _$RTLCONSTS$_Ld561
_$RTLCONSTS$_Ld561:
		DB	"rtlconsts.serrstatuscallbackrequired",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$RTLCONSTS$_Ld562
_$RTLCONSTS$_Ld562:
		DB	"Cannot use find on unsorted list",0
	ALIGN 2
	DW	0,1,-1,33
	GLOBAL _$RTLCONSTS$_Ld563
_$RTLCONSTS$_Ld563:
		DB	"rtlconsts.serrfindneedssortedlist",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,4
	GLOBAL _$RTLCONSTS$_Ld564
_$RTLCONSTS$_Ld564:
		DB	"Alt+",0
	ALIGN 2
	DW	0,1,-1,17
	GLOBAL _$RTLCONSTS$_Ld565
_$RTLCONSTS$_Ld565:
		DB	"rtlconsts.smkcalt",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,9
	GLOBAL _$RTLCONSTS$_Ld566
_$RTLCONSTS$_Ld566:
		DB	"Backspace",0
	ALIGN 2
	DW	0,1,-1,18
	GLOBAL _$RTLCONSTS$_Ld567
_$RTLCONSTS$_Ld567:
		DB	"rtlconsts.smkcbksp",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,5
	GLOBAL _$RTLCONSTS$_Ld568
_$RTLCONSTS$_Ld568:
		DB	"Ctrl+",0
	ALIGN 2
	DW	0,1,-1,18
	GLOBAL _$RTLCONSTS$_Ld569
_$RTLCONSTS$_Ld569:
		DB	"rtlconsts.smkcctrl",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,6
	GLOBAL _$RTLCONSTS$_Ld570
_$RTLCONSTS$_Ld570:
		DB	"Delete",0
	ALIGN 2
	DW	0,1,-1,17
	GLOBAL _$RTLCONSTS$_Ld571
_$RTLCONSTS$_Ld571:
		DB	"rtlconsts.smkcdel",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,4
	GLOBAL _$RTLCONSTS$_Ld572
_$RTLCONSTS$_Ld572:
		DB	"Down",0
	ALIGN 2
	DW	0,1,-1,18
	GLOBAL _$RTLCONSTS$_Ld573
_$RTLCONSTS$_Ld573:
		DB	"rtlconsts.smkcdown",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,3
	GLOBAL _$RTLCONSTS$_Ld574
_$RTLCONSTS$_Ld574:
		DB	"End",0
	ALIGN 2
	DW	0,1,-1,17
	GLOBAL _$RTLCONSTS$_Ld575
_$RTLCONSTS$_Ld575:
		DB	"rtlconsts.smkcend",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,5
	GLOBAL _$RTLCONSTS$_Ld576
_$RTLCONSTS$_Ld576:
		DB	"Enter",0
	ALIGN 2
	DW	0,1,-1,19
	GLOBAL _$RTLCONSTS$_Ld577
_$RTLCONSTS$_Ld577:
		DB	"rtlconsts.smkcenter",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,3
	GLOBAL _$RTLCONSTS$_Ld578
_$RTLCONSTS$_Ld578:
		DB	"Esc",0
	ALIGN 2
	DW	0,1,-1,17
	GLOBAL _$RTLCONSTS$_Ld579
_$RTLCONSTS$_Ld579:
		DB	"rtlconsts.smkcesc",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,4
	GLOBAL _$RTLCONSTS$_Ld580
_$RTLCONSTS$_Ld580:
		DB	"Home",0
	ALIGN 2
	DW	0,1,-1,18
	GLOBAL _$RTLCONSTS$_Ld581
_$RTLCONSTS$_Ld581:
		DB	"rtlconsts.smkchome",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,6
	GLOBAL _$RTLCONSTS$_Ld582
_$RTLCONSTS$_Ld582:
		DB	"Insert",0
	ALIGN 2
	DW	0,1,-1,17
	GLOBAL _$RTLCONSTS$_Ld583
_$RTLCONSTS$_Ld583:
		DB	"rtlconsts.smkcins",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,4
	GLOBAL _$RTLCONSTS$_Ld584
_$RTLCONSTS$_Ld584:
		DB	"Left",0
	ALIGN 2
	DW	0,1,-1,18
	GLOBAL _$RTLCONSTS$_Ld585
_$RTLCONSTS$_Ld585:
		DB	"rtlconsts.smkcleft",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,9
	GLOBAL _$RTLCONSTS$_Ld586
_$RTLCONSTS$_Ld586:
		DB	"Page down",0
	ALIGN 2
	DW	0,1,-1,18
	GLOBAL _$RTLCONSTS$_Ld587
_$RTLCONSTS$_Ld587:
		DB	"rtlconsts.smkcpgdn",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,7
	GLOBAL _$RTLCONSTS$_Ld588
_$RTLCONSTS$_Ld588:
		DB	"Page up",0
	ALIGN 2
	DW	0,1,-1,18
	GLOBAL _$RTLCONSTS$_Ld589
_$RTLCONSTS$_Ld589:
		DB	"rtlconsts.smkcpgup",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,5
	GLOBAL _$RTLCONSTS$_Ld590
_$RTLCONSTS$_Ld590:
		DB	"Right",0
	ALIGN 2
	DW	0,1,-1,19
	GLOBAL _$RTLCONSTS$_Ld591
_$RTLCONSTS$_Ld591:
		DB	"rtlconsts.smkcright",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,6
	GLOBAL _$RTLCONSTS$_Ld592
_$RTLCONSTS$_Ld592:
		DB	"Shift+",0
	ALIGN 2
	DW	0,1,-1,19
	GLOBAL _$RTLCONSTS$_Ld593
_$RTLCONSTS$_Ld593:
		DB	"rtlconsts.smkcshift",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,5
	GLOBAL _$RTLCONSTS$_Ld594
_$RTLCONSTS$_Ld594:
		DB	"Space",0
	ALIGN 2
	DW	0,1,-1,19
	GLOBAL _$RTLCONSTS$_Ld595
_$RTLCONSTS$_Ld595:
		DB	"rtlconsts.smkcspace",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,3
	GLOBAL _$RTLCONSTS$_Ld596
_$RTLCONSTS$_Ld596:
		DB	"Tab",0
	ALIGN 2
	DW	0,1,-1,17
	GLOBAL _$RTLCONSTS$_Ld597
_$RTLCONSTS$_Ld597:
		DB	"rtlconsts.smkctab",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,2
	GLOBAL _$RTLCONSTS$_Ld598
_$RTLCONSTS$_Ld598:
		DB	"Up",0
	ALIGN 2
	DW	0,1,-1,16
	GLOBAL _$RTLCONSTS$_Ld599
_$RTLCONSTS$_Ld599:
		DB	"rtlconsts.smkcup",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,9
	GLOBAL _$RTLCONSTS$_Ld600
_$RTLCONSTS$_Ld600:
		DB	"Angstroms",0
	ALIGN 2
	DW	0,1,-1,31
	GLOBAL _$RTLCONSTS$_Ld601
_$RTLCONSTS$_Ld601:
		DB	"rtlconsts.sangstromsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,17
	GLOBAL _$RTLCONSTS$_Ld602
_$RTLCONSTS$_Ld602:
		DB	"AstronomicalUnits",0
	ALIGN 2
	DW	0,1,-1,39
	GLOBAL _$RTLCONSTS$_Ld603
_$RTLCONSTS$_Ld603:
		DB	"rtlconsts.sastronomicalunitsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,11
	GLOBAL _$RTLCONSTS$_Ld604
_$RTLCONSTS$_Ld604:
		DB	"Centimeters",0
	ALIGN 2
	DW	0,1,-1,33
	GLOBAL _$RTLCONSTS$_Ld605
_$RTLCONSTS$_Ld605:
		DB	"rtlconsts.scentimetersdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,6
	GLOBAL _$RTLCONSTS$_Ld606
_$RTLCONSTS$_Ld606:
		DB	"Chains",0
	ALIGN 2
	DW	0,1,-1,28
	GLOBAL _$RTLCONSTS$_Ld607
_$RTLCONSTS$_Ld607:
		DB	"rtlconsts.schainsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,6
	GLOBAL _$RTLCONSTS$_Ld608
_$RTLCONSTS$_Ld608:
		DB	"Cubits",0
	ALIGN 2
	DW	0,1,-1,28
	GLOBAL _$RTLCONSTS$_Ld609
_$RTLCONSTS$_Ld609:
		DB	"rtlconsts.scubitsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,10
	GLOBAL _$RTLCONSTS$_Ld610
_$RTLCONSTS$_Ld610:
		DB	"Decameters",0
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$RTLCONSTS$_Ld611
_$RTLCONSTS$_Ld611:
		DB	"rtlconsts.sdecametersdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,10
	GLOBAL _$RTLCONSTS$_Ld612
_$RTLCONSTS$_Ld612:
		DB	"Decimeters",0
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$RTLCONSTS$_Ld613
_$RTLCONSTS$_Ld613:
		DB	"rtlconsts.sdecimetersdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,8
	GLOBAL _$RTLCONSTS$_Ld614
_$RTLCONSTS$_Ld614:
		DB	"Distance",0
	ALIGN 2
	DW	0,1,-1,30
	GLOBAL _$RTLCONSTS$_Ld615
_$RTLCONSTS$_Ld615:
		DB	"rtlconsts.sdistancedescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,7
	GLOBAL _$RTLCONSTS$_Ld616
_$RTLCONSTS$_Ld616:
		DB	"Fathoms",0
	ALIGN 2
	DW	0,1,-1,29
	GLOBAL _$RTLCONSTS$_Ld617
_$RTLCONSTS$_Ld617:
		DB	"rtlconsts.sfathomsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,4
	GLOBAL _$RTLCONSTS$_Ld618
_$RTLCONSTS$_Ld618:
		DB	"Feet",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld619
_$RTLCONSTS$_Ld619:
		DB	"rtlconsts.sfeetdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,8
	GLOBAL _$RTLCONSTS$_Ld620
_$RTLCONSTS$_Ld620:
		DB	"Furlongs",0
	ALIGN 2
	DW	0,1,-1,30
	GLOBAL _$RTLCONSTS$_Ld621
_$RTLCONSTS$_Ld621:
		DB	"rtlconsts.sfurlongsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,10
	GLOBAL _$RTLCONSTS$_Ld622
_$RTLCONSTS$_Ld622:
		DB	"Gigameters",0
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$RTLCONSTS$_Ld623
_$RTLCONSTS$_Ld623:
		DB	"rtlconsts.sgigametersdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,5
	GLOBAL _$RTLCONSTS$_Ld624
_$RTLCONSTS$_Ld624:
		DB	"Hands",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$RTLCONSTS$_Ld625
_$RTLCONSTS$_Ld625:
		DB	"rtlconsts.shandsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,11
	GLOBAL _$RTLCONSTS$_Ld626
_$RTLCONSTS$_Ld626:
		DB	"Hectometers",0
	ALIGN 2
	DW	0,1,-1,33
	GLOBAL _$RTLCONSTS$_Ld627
_$RTLCONSTS$_Ld627:
		DB	"rtlconsts.shectometersdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,6
	GLOBAL _$RTLCONSTS$_Ld628
_$RTLCONSTS$_Ld628:
		DB	"Inches",0
	ALIGN 2
	DW	0,1,-1,28
	GLOBAL _$RTLCONSTS$_Ld629
_$RTLCONSTS$_Ld629:
		DB	"rtlconsts.sinchesdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,10
	GLOBAL _$RTLCONSTS$_Ld630
_$RTLCONSTS$_Ld630:
		DB	"Kilometers",0
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$RTLCONSTS$_Ld631
_$RTLCONSTS$_Ld631:
		DB	"rtlconsts.skilometersdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,10
	GLOBAL _$RTLCONSTS$_Ld632
_$RTLCONSTS$_Ld632:
		DB	"LightYears",0
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$RTLCONSTS$_Ld633
_$RTLCONSTS$_Ld633:
		DB	"rtlconsts.slightyearsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,5
	GLOBAL _$RTLCONSTS$_Ld634
_$RTLCONSTS$_Ld634:
		DB	"Links",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$RTLCONSTS$_Ld635
_$RTLCONSTS$_Ld635:
		DB	"rtlconsts.slinksdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,10
	GLOBAL _$RTLCONSTS$_Ld636
_$RTLCONSTS$_Ld636:
		DB	"Megameters",0
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$RTLCONSTS$_Ld637
_$RTLCONSTS$_Ld637:
		DB	"rtlconsts.smegametersdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,6
	GLOBAL _$RTLCONSTS$_Ld638
_$RTLCONSTS$_Ld638:
		DB	"Meters",0
	ALIGN 2
	DW	0,1,-1,28
	GLOBAL _$RTLCONSTS$_Ld639
_$RTLCONSTS$_Ld639:
		DB	"rtlconsts.smetersdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,12
	GLOBAL _$RTLCONSTS$_Ld640
_$RTLCONSTS$_Ld640:
		DB	"Micromicrons",0
	ALIGN 2
	DW	0,1,-1,34
	GLOBAL _$RTLCONSTS$_Ld641
_$RTLCONSTS$_Ld641:
		DB	"rtlconsts.smicromicronsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,7
	GLOBAL _$RTLCONSTS$_Ld642
_$RTLCONSTS$_Ld642:
		DB	"Microns",0
	ALIGN 2
	DW	0,1,-1,29
	GLOBAL _$RTLCONSTS$_Ld643
_$RTLCONSTS$_Ld643:
		DB	"rtlconsts.smicronsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,5
	GLOBAL _$RTLCONSTS$_Ld644
_$RTLCONSTS$_Ld644:
		DB	"Miles",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$RTLCONSTS$_Ld645
_$RTLCONSTS$_Ld645:
		DB	"rtlconsts.smilesdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,11
	GLOBAL _$RTLCONSTS$_Ld646
_$RTLCONSTS$_Ld646:
		DB	"Millimeters",0
	ALIGN 2
	DW	0,1,-1,33
	GLOBAL _$RTLCONSTS$_Ld647
_$RTLCONSTS$_Ld647:
		DB	"rtlconsts.smillimetersdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,12
	GLOBAL _$RTLCONSTS$_Ld648
_$RTLCONSTS$_Ld648:
		DB	"Millimicrons",0
	ALIGN 2
	DW	0,1,-1,34
	GLOBAL _$RTLCONSTS$_Ld649
_$RTLCONSTS$_Ld649:
		DB	"rtlconsts.smillimicronsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,13
	GLOBAL _$RTLCONSTS$_Ld650
_$RTLCONSTS$_Ld650:
		DB	"NauticalMiles",0
	ALIGN 2
	DW	0,1,-1,35
	GLOBAL _$RTLCONSTS$_Ld651
_$RTLCONSTS$_Ld651:
		DB	"rtlconsts.snauticalmilesdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,5
	GLOBAL _$RTLCONSTS$_Ld652
_$RTLCONSTS$_Ld652:
		DB	"Paces",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$RTLCONSTS$_Ld653
_$RTLCONSTS$_Ld653:
		DB	"rtlconsts.spacesdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,7
	GLOBAL _$RTLCONSTS$_Ld654
_$RTLCONSTS$_Ld654:
		DB	"Parsecs",0
	ALIGN 2
	DW	0,1,-1,29
	GLOBAL _$RTLCONSTS$_Ld655
_$RTLCONSTS$_Ld655:
		DB	"rtlconsts.sparsecsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,5
	GLOBAL _$RTLCONSTS$_Ld656
_$RTLCONSTS$_Ld656:
		DB	"Picas",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$RTLCONSTS$_Ld657
_$RTLCONSTS$_Ld657:
		DB	"rtlconsts.spicasdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,6
	GLOBAL _$RTLCONSTS$_Ld658
_$RTLCONSTS$_Ld658:
		DB	"Points",0
	ALIGN 2
	DW	0,1,-1,28
	GLOBAL _$RTLCONSTS$_Ld659
_$RTLCONSTS$_Ld659:
		DB	"rtlconsts.spointsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,4
	GLOBAL _$RTLCONSTS$_Ld660
_$RTLCONSTS$_Ld660:
		DB	"Rods",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld661
_$RTLCONSTS$_Ld661:
		DB	"rtlconsts.srodsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,5
	GLOBAL _$RTLCONSTS$_Ld662
_$RTLCONSTS$_Ld662:
		DB	"Yards",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$RTLCONSTS$_Ld663
_$RTLCONSTS$_Ld663:
		DB	"rtlconsts.syardsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,5
	GLOBAL _$RTLCONSTS$_Ld664
_$RTLCONSTS$_Ld664:
		DB	"Acres",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$RTLCONSTS$_Ld665
_$RTLCONSTS$_Ld665:
		DB	"rtlconsts.sacresdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,4
	GLOBAL _$RTLCONSTS$_Ld666
_$RTLCONSTS$_Ld666:
		DB	"Area",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld667
_$RTLCONSTS$_Ld667:
		DB	"rtlconsts.sareadescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,4
	GLOBAL _$RTLCONSTS$_Ld668
_$RTLCONSTS$_Ld668:
		DB	"Ares",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld669
_$RTLCONSTS$_Ld669:
		DB	"rtlconsts.saresdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,8
	GLOBAL _$RTLCONSTS$_Ld670
_$RTLCONSTS$_Ld670:
		DB	"Centares",0
	ALIGN 2
	DW	0,1,-1,30
	GLOBAL _$RTLCONSTS$_Ld671
_$RTLCONSTS$_Ld671:
		DB	"rtlconsts.scentaresdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,8
	GLOBAL _$RTLCONSTS$_Ld672
_$RTLCONSTS$_Ld672:
		DB	"Hectares",0
	ALIGN 2
	DW	0,1,-1,30
	GLOBAL _$RTLCONSTS$_Ld673
_$RTLCONSTS$_Ld673:
		DB	"rtlconsts.shectaresdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,17
	GLOBAL _$RTLCONSTS$_Ld674
_$RTLCONSTS$_Ld674:
		DB	"SquareCentimeters",0
	ALIGN 2
	DW	0,1,-1,39
	GLOBAL _$RTLCONSTS$_Ld675
_$RTLCONSTS$_Ld675:
		DB	"rtlconsts.ssquarecentimetersdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,16
	GLOBAL _$RTLCONSTS$_Ld676
_$RTLCONSTS$_Ld676:
		DB	"SquareDecameters",0
	ALIGN 2
	DW	0,1,-1,38
	GLOBAL _$RTLCONSTS$_Ld677
_$RTLCONSTS$_Ld677:
		DB	"rtlconsts.ssquaredecametersdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,16
	GLOBAL _$RTLCONSTS$_Ld678
_$RTLCONSTS$_Ld678:
		DB	"SquareDecimeters",0
	ALIGN 2
	DW	0,1,-1,38
	GLOBAL _$RTLCONSTS$_Ld679
_$RTLCONSTS$_Ld679:
		DB	"rtlconsts.ssquaredecimetersdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,10
	GLOBAL _$RTLCONSTS$_Ld680
_$RTLCONSTS$_Ld680:
		DB	"SquareFeet",0
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$RTLCONSTS$_Ld681
_$RTLCONSTS$_Ld681:
		DB	"rtlconsts.ssquarefeetdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,17
	GLOBAL _$RTLCONSTS$_Ld682
_$RTLCONSTS$_Ld682:
		DB	"SquareHectometers",0
	ALIGN 2
	DW	0,1,-1,39
	GLOBAL _$RTLCONSTS$_Ld683
_$RTLCONSTS$_Ld683:
		DB	"rtlconsts.ssquarehectometersdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,12
	GLOBAL _$RTLCONSTS$_Ld684
_$RTLCONSTS$_Ld684:
		DB	"SquareInches",0
	ALIGN 2
	DW	0,1,-1,34
	GLOBAL _$RTLCONSTS$_Ld685
_$RTLCONSTS$_Ld685:
		DB	"rtlconsts.ssquareinchesdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,16
	GLOBAL _$RTLCONSTS$_Ld686
_$RTLCONSTS$_Ld686:
		DB	"SquareKilometers",0
	ALIGN 2
	DW	0,1,-1,38
	GLOBAL _$RTLCONSTS$_Ld687
_$RTLCONSTS$_Ld687:
		DB	"rtlconsts.ssquarekilometersdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,12
	GLOBAL _$RTLCONSTS$_Ld688
_$RTLCONSTS$_Ld688:
		DB	"SquareMeters",0
	ALIGN 2
	DW	0,1,-1,34
	GLOBAL _$RTLCONSTS$_Ld689
_$RTLCONSTS$_Ld689:
		DB	"rtlconsts.ssquaremetersdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,11
	GLOBAL _$RTLCONSTS$_Ld690
_$RTLCONSTS$_Ld690:
		DB	"SquareMiles",0
	ALIGN 2
	DW	0,1,-1,33
	GLOBAL _$RTLCONSTS$_Ld691
_$RTLCONSTS$_Ld691:
		DB	"rtlconsts.ssquaremilesdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,17
	GLOBAL _$RTLCONSTS$_Ld692
_$RTLCONSTS$_Ld692:
		DB	"SquareMillimeters",0
	ALIGN 2
	DW	0,1,-1,39
	GLOBAL _$RTLCONSTS$_Ld693
_$RTLCONSTS$_Ld693:
		DB	"rtlconsts.ssquaremillimetersdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,10
	GLOBAL _$RTLCONSTS$_Ld694
_$RTLCONSTS$_Ld694:
		DB	"SquareRods",0
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$RTLCONSTS$_Ld695
_$RTLCONSTS$_Ld695:
		DB	"rtlconsts.ssquarerodsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,11
	GLOBAL _$RTLCONSTS$_Ld696
_$RTLCONSTS$_Ld696:
		DB	"SquareYards",0
	ALIGN 2
	DW	0,1,-1,33
	GLOBAL _$RTLCONSTS$_Ld697
_$RTLCONSTS$_Ld697:
		DB	"rtlconsts.ssquareyardsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,8
	GLOBAL _$RTLCONSTS$_Ld698
_$RTLCONSTS$_Ld698:
		DB	"AcreFeet",0
	ALIGN 2
	DW	0,1,-1,30
	GLOBAL _$RTLCONSTS$_Ld699
_$RTLCONSTS$_Ld699:
		DB	"rtlconsts.sacrefeetdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,10
	GLOBAL _$RTLCONSTS$_Ld700
_$RTLCONSTS$_Ld700:
		DB	"AcreInches",0
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$RTLCONSTS$_Ld701
_$RTLCONSTS$_Ld701:
		DB	"rtlconsts.sacreinchesdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,11
	GLOBAL _$RTLCONSTS$_Ld702
_$RTLCONSTS$_Ld702:
		DB	"CentiLiters",0
	ALIGN 2
	DW	0,1,-1,33
	GLOBAL _$RTLCONSTS$_Ld703
_$RTLCONSTS$_Ld703:
		DB	"rtlconsts.scentilitersdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,8
	GLOBAL _$RTLCONSTS$_Ld704
_$RTLCONSTS$_Ld704:
		DB	"CordFeet",0
	ALIGN 2
	DW	0,1,-1,30
	GLOBAL _$RTLCONSTS$_Ld705
_$RTLCONSTS$_Ld705:
		DB	"rtlconsts.scordfeetdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,5
	GLOBAL _$RTLCONSTS$_Ld706
_$RTLCONSTS$_Ld706:
		DB	"Cords",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$RTLCONSTS$_Ld707
_$RTLCONSTS$_Ld707:
		DB	"rtlconsts.scordsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,16
	GLOBAL _$RTLCONSTS$_Ld708
_$RTLCONSTS$_Ld708:
		DB	"CubicCentimeters",0
	ALIGN 2
	DW	0,1,-1,38
	GLOBAL _$RTLCONSTS$_Ld709
_$RTLCONSTS$_Ld709:
		DB	"rtlconsts.scubiccentimetersdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,15
	GLOBAL _$RTLCONSTS$_Ld710
_$RTLCONSTS$_Ld710:
		DB	"CubicDecameters",0
	ALIGN 2
	DW	0,1,-1,37
	GLOBAL _$RTLCONSTS$_Ld711
_$RTLCONSTS$_Ld711:
		DB	"rtlconsts.scubicdecametersdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,15
	GLOBAL _$RTLCONSTS$_Ld712
_$RTLCONSTS$_Ld712:
		DB	"CubicDecimeters",0
	ALIGN 2
	DW	0,1,-1,37
	GLOBAL _$RTLCONSTS$_Ld713
_$RTLCONSTS$_Ld713:
		DB	"rtlconsts.scubicdecimetersdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,9
	GLOBAL _$RTLCONSTS$_Ld714
_$RTLCONSTS$_Ld714:
		DB	"CubicFeet",0
	ALIGN 2
	DW	0,1,-1,31
	GLOBAL _$RTLCONSTS$_Ld715
_$RTLCONSTS$_Ld715:
		DB	"rtlconsts.scubicfeetdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,16
	GLOBAL _$RTLCONSTS$_Ld716
_$RTLCONSTS$_Ld716:
		DB	"CubicHectometers",0
	ALIGN 2
	DW	0,1,-1,38
	GLOBAL _$RTLCONSTS$_Ld717
_$RTLCONSTS$_Ld717:
		DB	"rtlconsts.scubichectometersdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,11
	GLOBAL _$RTLCONSTS$_Ld718
_$RTLCONSTS$_Ld718:
		DB	"CubicInches",0
	ALIGN 2
	DW	0,1,-1,33
	GLOBAL _$RTLCONSTS$_Ld719
_$RTLCONSTS$_Ld719:
		DB	"rtlconsts.scubicinchesdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,15
	GLOBAL _$RTLCONSTS$_Ld720
_$RTLCONSTS$_Ld720:
		DB	"CubicKilometers",0
	ALIGN 2
	DW	0,1,-1,37
	GLOBAL _$RTLCONSTS$_Ld721
_$RTLCONSTS$_Ld721:
		DB	"rtlconsts.scubickilometersdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,11
	GLOBAL _$RTLCONSTS$_Ld722
_$RTLCONSTS$_Ld722:
		DB	"CubicMeters",0
	ALIGN 2
	DW	0,1,-1,33
	GLOBAL _$RTLCONSTS$_Ld723
_$RTLCONSTS$_Ld723:
		DB	"rtlconsts.scubicmetersdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,10
	GLOBAL _$RTLCONSTS$_Ld724
_$RTLCONSTS$_Ld724:
		DB	"CubicMiles",0
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$RTLCONSTS$_Ld725
_$RTLCONSTS$_Ld725:
		DB	"rtlconsts.scubicmilesdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,16
	GLOBAL _$RTLCONSTS$_Ld726
_$RTLCONSTS$_Ld726:
		DB	"CubicMillimeters",0
	ALIGN 2
	DW	0,1,-1,38
	GLOBAL _$RTLCONSTS$_Ld727
_$RTLCONSTS$_Ld727:
		DB	"rtlconsts.scubicmillimetersdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,10
	GLOBAL _$RTLCONSTS$_Ld728
_$RTLCONSTS$_Ld728:
		DB	"CubicYards",0
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$RTLCONSTS$_Ld729
_$RTLCONSTS$_Ld729:
		DB	"rtlconsts.scubicyardsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,10
	GLOBAL _$RTLCONSTS$_Ld730
_$RTLCONSTS$_Ld730:
		DB	"DecaLiters",0
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$RTLCONSTS$_Ld731
_$RTLCONSTS$_Ld731:
		DB	"rtlconsts.sdecalitersdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,10
	GLOBAL _$RTLCONSTS$_Ld732
_$RTLCONSTS$_Ld732:
		DB	"Decasteres",0
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$RTLCONSTS$_Ld733
_$RTLCONSTS$_Ld733:
		DB	"rtlconsts.sdecasteresdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,10
	GLOBAL _$RTLCONSTS$_Ld734
_$RTLCONSTS$_Ld734:
		DB	"DeciLiters",0
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$RTLCONSTS$_Ld735
_$RTLCONSTS$_Ld735:
		DB	"rtlconsts.sdecilitersdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,10
	GLOBAL _$RTLCONSTS$_Ld736
_$RTLCONSTS$_Ld736:
		DB	"Decisteres",0
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$RTLCONSTS$_Ld737
_$RTLCONSTS$_Ld737:
		DB	"rtlconsts.sdecisteresdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,11
	GLOBAL _$RTLCONSTS$_Ld738
_$RTLCONSTS$_Ld738:
		DB	"HectoLiters",0
	ALIGN 2
	DW	0,1,-1,33
	GLOBAL _$RTLCONSTS$_Ld739
_$RTLCONSTS$_Ld739:
		DB	"rtlconsts.shectolitersdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,10
	GLOBAL _$RTLCONSTS$_Ld740
_$RTLCONSTS$_Ld740:
		DB	"KiloLiters",0
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$RTLCONSTS$_Ld741
_$RTLCONSTS$_Ld741:
		DB	"rtlconsts.skilolitersdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,6
	GLOBAL _$RTLCONSTS$_Ld742
_$RTLCONSTS$_Ld742:
		DB	"Liters",0
	ALIGN 2
	DW	0,1,-1,28
	GLOBAL _$RTLCONSTS$_Ld743
_$RTLCONSTS$_Ld743:
		DB	"rtlconsts.slitersdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,11
	GLOBAL _$RTLCONSTS$_Ld744
_$RTLCONSTS$_Ld744:
		DB	"MilliLiters",0
	ALIGN 2
	DW	0,1,-1,33
	GLOBAL _$RTLCONSTS$_Ld745
_$RTLCONSTS$_Ld745:
		DB	"rtlconsts.smillilitersdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,6
	GLOBAL _$RTLCONSTS$_Ld746
_$RTLCONSTS$_Ld746:
		DB	"Steres",0
	ALIGN 2
	DW	0,1,-1,28
	GLOBAL _$RTLCONSTS$_Ld747
_$RTLCONSTS$_Ld747:
		DB	"rtlconsts.ssteresdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,6
	GLOBAL _$RTLCONSTS$_Ld748
_$RTLCONSTS$_Ld748:
		DB	"Volume",0
	ALIGN 2
	DW	0,1,-1,28
	GLOBAL _$RTLCONSTS$_Ld749
_$RTLCONSTS$_Ld749:
		DB	"rtlconsts.svolumedescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,9
	GLOBAL _$RTLCONSTS$_Ld750
_$RTLCONSTS$_Ld750:
		DB	"FluidCups",0
	ALIGN 2
	DW	0,1,-1,31
	GLOBAL _$RTLCONSTS$_Ld751
_$RTLCONSTS$_Ld751:
		DB	"rtlconsts.sfluidcupsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,12
	GLOBAL _$RTLCONSTS$_Ld752
_$RTLCONSTS$_Ld752:
		DB	"FluidGallons",0
	ALIGN 2
	DW	0,1,-1,34
	GLOBAL _$RTLCONSTS$_Ld753
_$RTLCONSTS$_Ld753:
		DB	"rtlconsts.sfluidgallonsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,10
	GLOBAL _$RTLCONSTS$_Ld754
_$RTLCONSTS$_Ld754:
		DB	"FluidGills",0
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$RTLCONSTS$_Ld755
_$RTLCONSTS$_Ld755:
		DB	"rtlconsts.sfluidgillsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,11
	GLOBAL _$RTLCONSTS$_Ld756
_$RTLCONSTS$_Ld756:
		DB	"FluidOunces",0
	ALIGN 2
	DW	0,1,-1,33
	GLOBAL _$RTLCONSTS$_Ld757
_$RTLCONSTS$_Ld757:
		DB	"rtlconsts.sfluidouncesdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,10
	GLOBAL _$RTLCONSTS$_Ld758
_$RTLCONSTS$_Ld758:
		DB	"FluidPints",0
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$RTLCONSTS$_Ld759
_$RTLCONSTS$_Ld759:
		DB	"rtlconsts.sfluidpintsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,11
	GLOBAL _$RTLCONSTS$_Ld760
_$RTLCONSTS$_Ld760:
		DB	"FluidQuarts",0
	ALIGN 2
	DW	0,1,-1,33
	GLOBAL _$RTLCONSTS$_Ld761
_$RTLCONSTS$_Ld761:
		DB	"rtlconsts.sfluidquartsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,16
	GLOBAL _$RTLCONSTS$_Ld762
_$RTLCONSTS$_Ld762:
		DB	"FluidTablespoons",0
	ALIGN 2
	DW	0,1,-1,38
	GLOBAL _$RTLCONSTS$_Ld763
_$RTLCONSTS$_Ld763:
		DB	"rtlconsts.sfluidtablespoonsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,14
	GLOBAL _$RTLCONSTS$_Ld764
_$RTLCONSTS$_Ld764:
		DB	"FluidTeaspoons",0
	ALIGN 2
	DW	0,1,-1,36
	GLOBAL _$RTLCONSTS$_Ld765
_$RTLCONSTS$_Ld765:
		DB	"rtlconsts.sfluidteaspoonsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,10
	GLOBAL _$RTLCONSTS$_Ld766
_$RTLCONSTS$_Ld766:
		DB	"DryBuckets",0
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$RTLCONSTS$_Ld767
_$RTLCONSTS$_Ld767:
		DB	"rtlconsts.sdrybucketsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,10
	GLOBAL _$RTLCONSTS$_Ld768
_$RTLCONSTS$_Ld768:
		DB	"DryBushels",0
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$RTLCONSTS$_Ld769
_$RTLCONSTS$_Ld769:
		DB	"rtlconsts.sdrybushelsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,10
	GLOBAL _$RTLCONSTS$_Ld770
_$RTLCONSTS$_Ld770:
		DB	"DryGallons",0
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$RTLCONSTS$_Ld771
_$RTLCONSTS$_Ld771:
		DB	"rtlconsts.sdrygallonsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,8
	GLOBAL _$RTLCONSTS$_Ld772
_$RTLCONSTS$_Ld772:
		DB	"DryPecks",0
	ALIGN 2
	DW	0,1,-1,30
	GLOBAL _$RTLCONSTS$_Ld773
_$RTLCONSTS$_Ld773:
		DB	"rtlconsts.sdrypecksdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,8
	GLOBAL _$RTLCONSTS$_Ld774
_$RTLCONSTS$_Ld774:
		DB	"DryPints",0
	ALIGN 2
	DW	0,1,-1,30
	GLOBAL _$RTLCONSTS$_Ld775
_$RTLCONSTS$_Ld775:
		DB	"rtlconsts.sdrypintsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,9
	GLOBAL _$RTLCONSTS$_Ld776
_$RTLCONSTS$_Ld776:
		DB	"DryQuarts",0
	ALIGN 2
	DW	0,1,-1,31
	GLOBAL _$RTLCONSTS$_Ld777
_$RTLCONSTS$_Ld777:
		DB	"rtlconsts.sdryquartsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,9
	GLOBAL _$RTLCONSTS$_Ld778
_$RTLCONSTS$_Ld778:
		DB	"UKBuckets",0
	ALIGN 2
	DW	0,1,-1,31
	GLOBAL _$RTLCONSTS$_Ld779
_$RTLCONSTS$_Ld779:
		DB	"rtlconsts.sukbucketsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,9
	GLOBAL _$RTLCONSTS$_Ld780
_$RTLCONSTS$_Ld780:
		DB	"UKBushels",0
	ALIGN 2
	DW	0,1,-1,31
	GLOBAL _$RTLCONSTS$_Ld781
_$RTLCONSTS$_Ld781:
		DB	"rtlconsts.sukbushelsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,9
	GLOBAL _$RTLCONSTS$_Ld782
_$RTLCONSTS$_Ld782:
		DB	"UKGallons",0
	ALIGN 2
	DW	0,1,-1,31
	GLOBAL _$RTLCONSTS$_Ld783
_$RTLCONSTS$_Ld783:
		DB	"rtlconsts.sukgallonsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,6
	GLOBAL _$RTLCONSTS$_Ld784
_$RTLCONSTS$_Ld784:
		DB	"UKGill",0
	ALIGN 2
	DW	0,1,-1,29
	GLOBAL _$RTLCONSTS$_Ld785
_$RTLCONSTS$_Ld785:
		DB	"rtlconsts.sukgillsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,8
	GLOBAL _$RTLCONSTS$_Ld786
_$RTLCONSTS$_Ld786:
		DB	"UKOunces",0
	ALIGN 2
	DW	0,1,-1,30
	GLOBAL _$RTLCONSTS$_Ld787
_$RTLCONSTS$_Ld787:
		DB	"rtlconsts.sukouncesdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,7
	GLOBAL _$RTLCONSTS$_Ld788
_$RTLCONSTS$_Ld788:
		DB	"UKPecks",0
	ALIGN 2
	DW	0,1,-1,29
	GLOBAL _$RTLCONSTS$_Ld789
_$RTLCONSTS$_Ld789:
		DB	"rtlconsts.sukpecksdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,7
	GLOBAL _$RTLCONSTS$_Ld790
_$RTLCONSTS$_Ld790:
		DB	"UKPints",0
	ALIGN 2
	DW	0,1,-1,29
	GLOBAL _$RTLCONSTS$_Ld791
_$RTLCONSTS$_Ld791:
		DB	"rtlconsts.sukpintsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,8
	GLOBAL _$RTLCONSTS$_Ld792
_$RTLCONSTS$_Ld792:
		DB	"UKPottle",0
	ALIGN 2
	DW	0,1,-1,31
	GLOBAL _$RTLCONSTS$_Ld793
_$RTLCONSTS$_Ld793:
		DB	"rtlconsts.sukpottlesdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,8
	GLOBAL _$RTLCONSTS$_Ld794
_$RTLCONSTS$_Ld794:
		DB	"UKQuarts",0
	ALIGN 2
	DW	0,1,-1,30
	GLOBAL _$RTLCONSTS$_Ld795
_$RTLCONSTS$_Ld795:
		DB	"rtlconsts.sukquartsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,10
	GLOBAL _$RTLCONSTS$_Ld796
_$RTLCONSTS$_Ld796:
		DB	"Centigrams",0
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$RTLCONSTS$_Ld797
_$RTLCONSTS$_Ld797:
		DB	"rtlconsts.scentigramsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,9
	GLOBAL _$RTLCONSTS$_Ld798
_$RTLCONSTS$_Ld798:
		DB	"Decagrams",0
	ALIGN 2
	DW	0,1,-1,31
	GLOBAL _$RTLCONSTS$_Ld799
_$RTLCONSTS$_Ld799:
		DB	"rtlconsts.sdecagramsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,9
	GLOBAL _$RTLCONSTS$_Ld800
_$RTLCONSTS$_Ld800:
		DB	"Decigrams",0
	ALIGN 2
	DW	0,1,-1,31
	GLOBAL _$RTLCONSTS$_Ld801
_$RTLCONSTS$_Ld801:
		DB	"rtlconsts.sdecigramsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,5
	GLOBAL _$RTLCONSTS$_Ld802
_$RTLCONSTS$_Ld802:
		DB	"Drams",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$RTLCONSTS$_Ld803
_$RTLCONSTS$_Ld803:
		DB	"rtlconsts.sdramsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,6
	GLOBAL _$RTLCONSTS$_Ld804
_$RTLCONSTS$_Ld804:
		DB	"Grains",0
	ALIGN 2
	DW	0,1,-1,28
	GLOBAL _$RTLCONSTS$_Ld805
_$RTLCONSTS$_Ld805:
		DB	"rtlconsts.sgrainsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,5
	GLOBAL _$RTLCONSTS$_Ld806
_$RTLCONSTS$_Ld806:
		DB	"Grams",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$RTLCONSTS$_Ld807
_$RTLCONSTS$_Ld807:
		DB	"rtlconsts.sgramsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,10
	GLOBAL _$RTLCONSTS$_Ld808
_$RTLCONSTS$_Ld808:
		DB	"Hectograms",0
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$RTLCONSTS$_Ld809
_$RTLCONSTS$_Ld809:
		DB	"rtlconsts.shectogramsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,9
	GLOBAL _$RTLCONSTS$_Ld810
_$RTLCONSTS$_Ld810:
		DB	"Kilograms",0
	ALIGN 2
	DW	0,1,-1,31
	GLOBAL _$RTLCONSTS$_Ld811
_$RTLCONSTS$_Ld811:
		DB	"rtlconsts.skilogramsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,8
	GLOBAL _$RTLCONSTS$_Ld812
_$RTLCONSTS$_Ld812:
		DB	"LongTons",0
	ALIGN 2
	DW	0,1,-1,30
	GLOBAL _$RTLCONSTS$_Ld813
_$RTLCONSTS$_Ld813:
		DB	"rtlconsts.slongtonsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,4
	GLOBAL _$RTLCONSTS$_Ld814
_$RTLCONSTS$_Ld814:
		DB	"Mass",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld815
_$RTLCONSTS$_Ld815:
		DB	"rtlconsts.smassdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,10
	GLOBAL _$RTLCONSTS$_Ld816
_$RTLCONSTS$_Ld816:
		DB	"MetricTons",0
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$RTLCONSTS$_Ld817
_$RTLCONSTS$_Ld817:
		DB	"rtlconsts.smetrictonsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,10
	GLOBAL _$RTLCONSTS$_Ld818
_$RTLCONSTS$_Ld818:
		DB	"Micrograms",0
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$RTLCONSTS$_Ld819
_$RTLCONSTS$_Ld819:
		DB	"rtlconsts.smicrogramsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,10
	GLOBAL _$RTLCONSTS$_Ld820
_$RTLCONSTS$_Ld820:
		DB	"Milligrams",0
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$RTLCONSTS$_Ld821
_$RTLCONSTS$_Ld821:
		DB	"rtlconsts.smilligramsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,9
	GLOBAL _$RTLCONSTS$_Ld822
_$RTLCONSTS$_Ld822:
		DB	"Nanograms",0
	ALIGN 2
	DW	0,1,-1,31
	GLOBAL _$RTLCONSTS$_Ld823
_$RTLCONSTS$_Ld823:
		DB	"rtlconsts.snanogramsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,6
	GLOBAL _$RTLCONSTS$_Ld824
_$RTLCONSTS$_Ld824:
		DB	"Ounces",0
	ALIGN 2
	DW	0,1,-1,28
	GLOBAL _$RTLCONSTS$_Ld825
_$RTLCONSTS$_Ld825:
		DB	"rtlconsts.souncesdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,6
	GLOBAL _$RTLCONSTS$_Ld826
_$RTLCONSTS$_Ld826:
		DB	"Pounds",0
	ALIGN 2
	DW	0,1,-1,28
	GLOBAL _$RTLCONSTS$_Ld827
_$RTLCONSTS$_Ld827:
		DB	"rtlconsts.spoundsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,6
	GLOBAL _$RTLCONSTS$_Ld828
_$RTLCONSTS$_Ld828:
		DB	"Stones",0
	ALIGN 2
	DW	0,1,-1,28
	GLOBAL _$RTLCONSTS$_Ld829
_$RTLCONSTS$_Ld829:
		DB	"rtlconsts.sstonesdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,4
	GLOBAL _$RTLCONSTS$_Ld830
_$RTLCONSTS$_Ld830:
		DB	"Tons",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld831
_$RTLCONSTS$_Ld831:
		DB	"rtlconsts.stonsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,7
	GLOBAL _$RTLCONSTS$_Ld832
_$RTLCONSTS$_Ld832:
		DB	"Celsius",0
	ALIGN 2
	DW	0,1,-1,29
	GLOBAL _$RTLCONSTS$_Ld833
_$RTLCONSTS$_Ld833:
		DB	"rtlconsts.scelsiusdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,10
	GLOBAL _$RTLCONSTS$_Ld834
_$RTLCONSTS$_Ld834:
		DB	"Fahrenheit",0
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$RTLCONSTS$_Ld835
_$RTLCONSTS$_Ld835:
		DB	"rtlconsts.sfahrenheitdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,6
	GLOBAL _$RTLCONSTS$_Ld836
_$RTLCONSTS$_Ld836:
		DB	"Kelvin",0
	ALIGN 2
	DW	0,1,-1,28
	GLOBAL _$RTLCONSTS$_Ld837
_$RTLCONSTS$_Ld837:
		DB	"rtlconsts.skelvindescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,7
	GLOBAL _$RTLCONSTS$_Ld838
_$RTLCONSTS$_Ld838:
		DB	"Rankine",0
	ALIGN 2
	DW	0,1,-1,29
	GLOBAL _$RTLCONSTS$_Ld839
_$RTLCONSTS$_Ld839:
		DB	"rtlconsts.srankinedescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,7
	GLOBAL _$RTLCONSTS$_Ld840
_$RTLCONSTS$_Ld840:
		DB	"Reaumur",0
	ALIGN 2
	DW	0,1,-1,29
	GLOBAL _$RTLCONSTS$_Ld841
_$RTLCONSTS$_Ld841:
		DB	"rtlconsts.sreaumurdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,11
	GLOBAL _$RTLCONSTS$_Ld842
_$RTLCONSTS$_Ld842:
		DB	"Temperature",0
	ALIGN 2
	DW	0,1,-1,33
	GLOBAL _$RTLCONSTS$_Ld843
_$RTLCONSTS$_Ld843:
		DB	"rtlconsts.stemperaturedescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,9
	GLOBAL _$RTLCONSTS$_Ld844
_$RTLCONSTS$_Ld844:
		DB	"Centuries",0
	ALIGN 2
	DW	0,1,-1,31
	GLOBAL _$RTLCONSTS$_Ld845
_$RTLCONSTS$_Ld845:
		DB	"rtlconsts.scenturiesdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,8
	GLOBAL _$RTLCONSTS$_Ld846
_$RTLCONSTS$_Ld846:
		DB	"DateTime",0
	ALIGN 2
	DW	0,1,-1,30
	GLOBAL _$RTLCONSTS$_Ld847
_$RTLCONSTS$_Ld847:
		DB	"rtlconsts.sdatetimedescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,4
	GLOBAL _$RTLCONSTS$_Ld848
_$RTLCONSTS$_Ld848:
		DB	"Days",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld849
_$RTLCONSTS$_Ld849:
		DB	"rtlconsts.sdaysdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,7
	GLOBAL _$RTLCONSTS$_Ld850
_$RTLCONSTS$_Ld850:
		DB	"Decades",0
	ALIGN 2
	DW	0,1,-1,29
	GLOBAL _$RTLCONSTS$_Ld851
_$RTLCONSTS$_Ld851:
		DB	"rtlconsts.sdecadesdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,10
	GLOBAL _$RTLCONSTS$_Ld852
_$RTLCONSTS$_Ld852:
		DB	"Fortnights",0
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$RTLCONSTS$_Ld853
_$RTLCONSTS$_Ld853:
		DB	"rtlconsts.sfortnightsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,5
	GLOBAL _$RTLCONSTS$_Ld854
_$RTLCONSTS$_Ld854:
		DB	"Hours",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$RTLCONSTS$_Ld855
_$RTLCONSTS$_Ld855:
		DB	"rtlconsts.shoursdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,10
	GLOBAL _$RTLCONSTS$_Ld856
_$RTLCONSTS$_Ld856:
		DB	"JulianDate",0
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$RTLCONSTS$_Ld857
_$RTLCONSTS$_Ld857:
		DB	"rtlconsts.sjuliandatedescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,9
	GLOBAL _$RTLCONSTS$_Ld858
_$RTLCONSTS$_Ld858:
		DB	"Millennia",0
	ALIGN 2
	DW	0,1,-1,31
	GLOBAL _$RTLCONSTS$_Ld859
_$RTLCONSTS$_Ld859:
		DB	"rtlconsts.smillenniadescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,12
	GLOBAL _$RTLCONSTS$_Ld860
_$RTLCONSTS$_Ld860:
		DB	"MilliSeconds",0
	ALIGN 2
	DW	0,1,-1,34
	GLOBAL _$RTLCONSTS$_Ld861
_$RTLCONSTS$_Ld861:
		DB	"rtlconsts.smillisecondsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,7
	GLOBAL _$RTLCONSTS$_Ld862
_$RTLCONSTS$_Ld862:
		DB	"Minutes",0
	ALIGN 2
	DW	0,1,-1,29
	GLOBAL _$RTLCONSTS$_Ld863
_$RTLCONSTS$_Ld863:
		DB	"rtlconsts.sminutesdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,18
	GLOBAL _$RTLCONSTS$_Ld864
_$RTLCONSTS$_Ld864:
		DB	"ModifiedJulianDate",0
	ALIGN 2
	DW	0,1,-1,40
	GLOBAL _$RTLCONSTS$_Ld865
_$RTLCONSTS$_Ld865:
		DB	"rtlconsts.smodifiedjuliandatedescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,6
	GLOBAL _$RTLCONSTS$_Ld866
_$RTLCONSTS$_Ld866:
		DB	"Months",0
	ALIGN 2
	DW	0,1,-1,28
	GLOBAL _$RTLCONSTS$_Ld867
_$RTLCONSTS$_Ld867:
		DB	"rtlconsts.smonthsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,7
	GLOBAL _$RTLCONSTS$_Ld868
_$RTLCONSTS$_Ld868:
		DB	"Seconds",0
	ALIGN 2
	DW	0,1,-1,29
	GLOBAL _$RTLCONSTS$_Ld869
_$RTLCONSTS$_Ld869:
		DB	"rtlconsts.ssecondsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,4
	GLOBAL _$RTLCONSTS$_Ld870
_$RTLCONSTS$_Ld870:
		DB	"Time",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld871
_$RTLCONSTS$_Ld871:
		DB	"rtlconsts.stimedescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,5
	GLOBAL _$RTLCONSTS$_Ld872
_$RTLCONSTS$_Ld872:
		DB	"Weeks",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$RTLCONSTS$_Ld873
_$RTLCONSTS$_Ld873:
		DB	"rtlconsts.sweeksdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,5
	GLOBAL _$RTLCONSTS$_Ld874
_$RTLCONSTS$_Ld874:
		DB	"Years",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$RTLCONSTS$_Ld875
_$RTLCONSTS$_Ld875:
		DB	"rtlconsts.syearsdescription",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$RTLCONSTS$_Ld876
_$RTLCONSTS$_Ld876:
		DB	34,"%s",34," is not a valid date",0
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$RTLCONSTS$_Ld877
_$RTLCONSTS$_Ld877:
		DB	"rtlconsts.sinvaliddate",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,33
	GLOBAL _$RTLCONSTS$_Ld878
_$RTLCONSTS$_Ld878:
		DB	34,"%s",34," is not a valid date and time",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld879
_$RTLCONSTS$_Ld879:
		DB	"rtlconsts.sinvaliddatetime",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,33
	GLOBAL _$RTLCONSTS$_Ld880
_$RTLCONSTS$_Ld880:
		DB	34,"%s",34," is not a valid integer value",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$RTLCONSTS$_Ld881
_$RTLCONSTS$_Ld881:
		DB	"rtlconsts.sinvalidinteger",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$RTLCONSTS$_Ld882
_$RTLCONSTS$_Ld882:
		DB	34,"%s",34," is not a valid time",0
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$RTLCONSTS$_Ld883
_$RTLCONSTS$_Ld883:
		DB	"rtlconsts.sinvalidtime",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,31
	GLOBAL _$RTLCONSTS$_Ld884
_$RTLCONSTS$_Ld884:
		DB	"Invalid argument to time encode",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld885
_$RTLCONSTS$_Ld885:
		DB	"rtlconsts.stimeencodeerror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,8
	GLOBAL _$RTLCONSTS$_Ld886
_$RTLCONSTS$_Ld886:
		DB	"AVIVideo",0
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$RTLCONSTS$_Ld887
_$RTLCONSTS$_Ld887:
		DB	"rtlconsts.smciavivideo",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,7
	GLOBAL _$RTLCONSTS$_Ld888
_$RTLCONSTS$_Ld888:
		DB	"CDAudio",0
	ALIGN 2
	DW	0,1,-1,21
	GLOBAL _$RTLCONSTS$_Ld889
_$RTLCONSTS$_Ld889:
		DB	"rtlconsts.smcicdaudio",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,3
	GLOBAL _$RTLCONSTS$_Ld890
_$RTLCONSTS$_Ld890:
		DB	"DAT",0
	ALIGN 2
	DW	0,1,-1,17
	GLOBAL _$RTLCONSTS$_Ld891
_$RTLCONSTS$_Ld891:
		DB	"rtlconsts.smcidat",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,12
	GLOBAL _$RTLCONSTS$_Ld892
_$RTLCONSTS$_Ld892:
		DB	"DigitalVideo",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld893
_$RTLCONSTS$_Ld893:
		DB	"rtlconsts.smcidigitalvideo",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,7
	GLOBAL _$RTLCONSTS$_Ld894
_$RTLCONSTS$_Ld894:
		DB	"MMMovie",0
	ALIGN 2
	DW	0,1,-1,21
	GLOBAL _$RTLCONSTS$_Ld895
_$RTLCONSTS$_Ld895:
		DB	"rtlconsts.smcimmmovie",0

SECTION rodata class=data
	ALIGN 2
	ALIGN 2
	DW	0,1,-1,17
	GLOBAL _$RTLCONSTS$_Ld896
_$RTLCONSTS$_Ld896:
		DB	"rtlconsts.smcinil",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,5
	GLOBAL _$RTLCONSTS$_Ld897
_$RTLCONSTS$_Ld897:
		DB	"Other",0
	ALIGN 2
	DW	0,1,-1,19
	GLOBAL _$RTLCONSTS$_Ld898
_$RTLCONSTS$_Ld898:
		DB	"rtlconsts.smciother",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,7
	GLOBAL _$RTLCONSTS$_Ld899
_$RTLCONSTS$_Ld899:
		DB	"Overlay",0
	ALIGN 2
	DW	0,1,-1,21
	GLOBAL _$RTLCONSTS$_Ld900
_$RTLCONSTS$_Ld900:
		DB	"rtlconsts.smcioverlay",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,7
	GLOBAL _$RTLCONSTS$_Ld901
_$RTLCONSTS$_Ld901:
		DB	"Scanner",0
	ALIGN 2
	DW	0,1,-1,21
	GLOBAL _$RTLCONSTS$_Ld902
_$RTLCONSTS$_Ld902:
		DB	"rtlconsts.smciscanner",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,9
	GLOBAL _$RTLCONSTS$_Ld903
_$RTLCONSTS$_Ld903:
		DB	"Sequencer",0
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$RTLCONSTS$_Ld904
_$RTLCONSTS$_Ld904:
		DB	"rtlconsts.smcisequencer",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,18
	GLOBAL _$RTLCONSTS$_Ld905
_$RTLCONSTS$_Ld905:
		DB	"Unknown error code",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$RTLCONSTS$_Ld906
_$RTLCONSTS$_Ld906:
		DB	"rtlconsts.smciunknownerror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,3
	GLOBAL _$RTLCONSTS$_Ld907
_$RTLCONSTS$_Ld907:
		DB	"VCR",0
	ALIGN 2
	DW	0,1,-1,17
	GLOBAL _$RTLCONSTS$_Ld908
_$RTLCONSTS$_Ld908:
		DB	"rtlconsts.smcivcr",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,9
	GLOBAL _$RTLCONSTS$_Ld909
_$RTLCONSTS$_Ld909:
		DB	"Videodisc",0
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$RTLCONSTS$_Ld910
_$RTLCONSTS$_Ld910:
		DB	"rtlconsts.smcivideodisc",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,9
	GLOBAL _$RTLCONSTS$_Ld911
_$RTLCONSTS$_Ld911:
		DB	"WaveAudio",0
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$RTLCONSTS$_Ld912
_$RTLCONSTS$_Ld912:
		DB	"rtlconsts.smciwaveaudio",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,6
	GLOBAL _$RTLCONSTS$_Ld913
_$RTLCONSTS$_Ld913:
		DB	"&Abort",0
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$RTLCONSTS$_Ld914
_$RTLCONSTS$_Ld914:
		DB	"rtlconsts.smsgdlgabort",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,4
	GLOBAL _$RTLCONSTS$_Ld915
_$RTLCONSTS$_Ld915:
		DB	"&All",0
	ALIGN 2
	DW	0,1,-1,20
	GLOBAL _$RTLCONSTS$_Ld916
_$RTLCONSTS$_Ld916:
		DB	"rtlconsts.smsgdlgall",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,6
	GLOBAL _$RTLCONSTS$_Ld917
_$RTLCONSTS$_Ld917:
		DB	"Cancel",0
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$RTLCONSTS$_Ld918
_$RTLCONSTS$_Ld918:
		DB	"rtlconsts.smsgdlgcancel",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,6
	GLOBAL _$RTLCONSTS$_Ld919
_$RTLCONSTS$_Ld919:
		DB	"&Close",0
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$RTLCONSTS$_Ld920
_$RTLCONSTS$_Ld920:
		DB	"rtlconsts.smsgdlgclose",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,7
	GLOBAL _$RTLCONSTS$_Ld921
_$RTLCONSTS$_Ld921:
		DB	"Confirm",0
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$RTLCONSTS$_Ld922
_$RTLCONSTS$_Ld922:
		DB	"rtlconsts.smsgdlgconfirm",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,5
	GLOBAL _$RTLCONSTS$_Ld923
_$RTLCONSTS$_Ld923:
		DB	"Error",0
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$RTLCONSTS$_Ld924
_$RTLCONSTS$_Ld924:
		DB	"rtlconsts.smsgdlgerror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,5
	GLOBAL _$RTLCONSTS$_Ld925
_$RTLCONSTS$_Ld925:
		DB	"&Help",0
	ALIGN 2
	DW	0,1,-1,21
	GLOBAL _$RTLCONSTS$_Ld926
_$RTLCONSTS$_Ld926:
		DB	"rtlconsts.smsgdlghelp",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,4
	GLOBAL _$RTLCONSTS$_Ld927
_$RTLCONSTS$_Ld927:
		DB	"Help",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$RTLCONSTS$_Ld928
_$RTLCONSTS$_Ld928:
		DB	"rtlconsts.smsgdlghelphelp",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,17
	GLOBAL _$RTLCONSTS$_Ld929
_$RTLCONSTS$_Ld929:
		DB	"No help available",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$RTLCONSTS$_Ld930
_$RTLCONSTS$_Ld930:
		DB	"rtlconsts.smsgdlghelpnone",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,7
	GLOBAL _$RTLCONSTS$_Ld931
_$RTLCONSTS$_Ld931:
		DB	"&Ignore",0
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$RTLCONSTS$_Ld932
_$RTLCONSTS$_Ld932:
		DB	"rtlconsts.smsgdlgignore",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,11
	GLOBAL _$RTLCONSTS$_Ld933
_$RTLCONSTS$_Ld933:
		DB	"Information",0
	ALIGN 2
	DW	0,1,-1,28
	GLOBAL _$RTLCONSTS$_Ld934
_$RTLCONSTS$_Ld934:
		DB	"rtlconsts.smsgdlginformation",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,3
	GLOBAL _$RTLCONSTS$_Ld935
_$RTLCONSTS$_Ld935:
		DB	"&No",0
	ALIGN 2
	DW	0,1,-1,19
	GLOBAL _$RTLCONSTS$_Ld936
_$RTLCONSTS$_Ld936:
		DB	"rtlconsts.smsgdlgno",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,10
	GLOBAL _$RTLCONSTS$_Ld937
_$RTLCONSTS$_Ld937:
		DB	"N&o to all",0
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$RTLCONSTS$_Ld938
_$RTLCONSTS$_Ld938:
		DB	"rtlconsts.smsgdlgnotoall",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,2
	GLOBAL _$RTLCONSTS$_Ld939
_$RTLCONSTS$_Ld939:
		DB	"OK",0
	ALIGN 2
	DW	0,1,-1,19
	GLOBAL _$RTLCONSTS$_Ld940
_$RTLCONSTS$_Ld940:
		DB	"rtlconsts.smsgdlgok",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,6
	GLOBAL _$RTLCONSTS$_Ld941
_$RTLCONSTS$_Ld941:
		DB	"&Retry",0
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$RTLCONSTS$_Ld942
_$RTLCONSTS$_Ld942:
		DB	"rtlconsts.smsgdlgretry",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,7
	GLOBAL _$RTLCONSTS$_Ld943
_$RTLCONSTS$_Ld943:
		DB	"Warning",0
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$RTLCONSTS$_Ld944
_$RTLCONSTS$_Ld944:
		DB	"rtlconsts.smsgdlgwarning",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,4
	GLOBAL _$RTLCONSTS$_Ld945
_$RTLCONSTS$_Ld945:
		DB	"&Yes",0
	ALIGN 2
	DW	0,1,-1,20
	GLOBAL _$RTLCONSTS$_Ld946
_$RTLCONSTS$_Ld946:
		DB	"rtlconsts.smsgdlgyes",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,11
	GLOBAL _$RTLCONSTS$_Ld947
_$RTLCONSTS$_Ld947:
		DB	"Yes to a&ll",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$RTLCONSTS$_Ld948
_$RTLCONSTS$_Ld948:
		DB	"rtlconsts.smsgdlgyestoall",0
; End asmlist al_const
; Begin asmlist al_resourcestrings
