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
	DW	0,1,-1,8
	GLOBAL _$SYSCONST$_Ld1
_$SYSCONST$_Ld1:
		DB	"SYSCONST",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,17
	GLOBAL _$SYSCONST$_Ld2
_$SYSCONST$_Ld2:
		DB	"Operation aborted",0
	ALIGN 2
	DW	0,1,-1,20
	GLOBAL _$SYSCONST$_Ld3
_$SYSCONST$_Ld3:
		DB	"sysconst.saborterror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$SYSCONST$_Ld4
_$SYSCONST$_Ld4:
		DB	"Abstract method called",0
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$SYSCONST$_Ld5
_$SYSCONST$_Ld5:
		DB	"sysconst.sabstracterror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,13
	GLOBAL _$SYSCONST$_Ld6
_$SYSCONST$_Ld6:
		DB	"Access denied",0
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$SYSCONST$_Ld7
_$SYSCONST$_Ld7:
		DB	"sysconst.saccessdenied",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,16
	GLOBAL _$SYSCONST$_Ld8
_$SYSCONST$_Ld8:
		DB	"Access violation",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$SYSCONST$_Ld9
_$SYSCONST$_Ld9:
		DB	"sysconst.saccessviolation",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,31
	GLOBAL _$SYSCONST$_Ld10
_$SYSCONST$_Ld10:
		DB	"Missing argument in format ",34,"%s",34,0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$SYSCONST$_Ld11
_$SYSCONST$_Ld11:
		DB	"sysconst.sargumentmissing",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,16
	GLOBAL _$SYSCONST$_Ld12
_$SYSCONST$_Ld12:
		DB	"%s (%s, line %d)",0
	ALIGN 2
	DW	0,1,-1,21
	GLOBAL _$SYSCONST$_Ld13
_$SYSCONST$_Ld13:
		DB	"sysconst.sasserterror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,16
	GLOBAL _$SYSCONST$_Ld14
_$SYSCONST$_Ld14:
		DB	"Assertion failed",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$SYSCONST$_Ld15
_$SYSCONST$_Ld15:
		DB	"sysconst.sassertionfailed",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,35
	GLOBAL _$SYSCONST$_Ld16
_$SYSCONST$_Ld16:
		DB	"Bus error or misaligned data access",0
	ALIGN 2
	DW	0,1,-1,18
	GLOBAL _$SYSCONST$_Ld17
_$SYSCONST$_Ld17:
		DB	"sysconst.sbuserror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,29
	GLOBAL _$SYSCONST$_Ld18
_$SYSCONST$_Ld18:
		DB	"Cannot create empty directory",0
	ALIGN 2
	DW	0,1,-1,30
	GLOBAL _$SYSCONST$_Ld19
_$SYSCONST$_Ld19:
		DB	"sysconst.scannotcreateemptydir",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,13
	GLOBAL _$SYSCONST$_Ld20
_$SYSCONST$_Ld20:
		DB	"Control-C hit",0
	ALIGN 2
	DW	0,1,-1,18
	GLOBAL _$SYSCONST$_Ld21
_$SYSCONST$_Ld21:
		DB	"sysconst.scontrolc",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,9
	GLOBAL _$SYSCONST$_Ld22
_$SYSCONST$_Ld22:
		DB	"Disk Full",0
	ALIGN 2
	DW	0,1,-1,18
	GLOBAL _$SYSCONST$_Ld23
_$SYSCONST$_Ld23:
		DB	"sysconst.sdiskfull",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,31
	GLOBAL _$SYSCONST$_Ld24
_$SYSCONST$_Ld24:
		DB	"No variant method call dispatch",0
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$SYSCONST$_Ld25
_$SYSCONST$_Ld25:
		DB	"sysconst.sdispatcherror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,16
	GLOBAL _$SYSCONST$_Ld26
_$SYSCONST$_Ld26:
		DB	"Division by zero",0
	ALIGN 2
	DW	0,1,-1,19
	GLOBAL _$SYSCONST$_Ld27
_$SYSCONST$_Ld27:
		DB	"sysconst.sdivbyzero",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,21
	GLOBAL _$SYSCONST$_Ld28
_$SYSCONST$_Ld28:
		DB	"Read past end of file",0
	ALIGN 2
	DW	0,1,-1,19
	GLOBAL _$SYSCONST$_Ld29
_$SYSCONST$_Ld29:
		DB	"sysconst.sendoffile",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,58
	GLOBAL _$SYSCONST$_Ld30
_$SYSCONST$_Ld30:
		DB	"Year %d, month %d, Week %d and day %d is not a valid date.",0
	ALIGN 2
	DW	0,1,-1,33
	GLOBAL _$SYSCONST$_Ld31
_$SYSCONST$_Ld31:
		DB	"sysconst.serrinvaliddatemonthweek",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,45
	GLOBAL _$SYSCONST$_Ld32
_$SYSCONST$_Ld32:
		DB	"%d:%d:%d.%d is not a valid time specification",0
	ALIGN 2
	DW	0,1,-1,37
	GLOBAL _$SYSCONST$_Ld33
_$SYSCONST$_Ld33:
		DB	"sysconst.serrinvalidhourminutesecmsec",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$SYSCONST$_Ld34
_$SYSCONST$_Ld34:
		DB	"%d %d %d is not a valid dateweek",0
	ALIGN 2
	DW	0,1,-1,28
	GLOBAL _$SYSCONST$_Ld35
_$SYSCONST$_Ld35:
		DB	"sysconst.serrinvaliddateweek",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,33
	GLOBAL _$SYSCONST$_Ld36
_$SYSCONST$_Ld36:
		DB	"%d is not a valid day of the week",0
	ALIGN 2
	DW	0,1,-1,29
	GLOBAL _$SYSCONST$_Ld37
_$SYSCONST$_Ld37:
		DB	"sysconst.serrinvaliddayofweek",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,51
	GLOBAL _$SYSCONST$_Ld38
_$SYSCONST$_Ld38:
		DB	"Year %d Month %d NDow %d DOW %d is not a valid date",0
	ALIGN 2
	DW	0,1,-1,36
	GLOBAL _$SYSCONST$_Ld39
_$SYSCONST$_Ld39:
		DB	"sysconst.serrinvaliddayofweekinmonth",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,37
	GLOBAL _$SYSCONST$_Ld40
_$SYSCONST$_Ld40:
		DB	"Year %d does not have a day number %d",0
	ALIGN 2
	DW	0,1,-1,29
	GLOBAL _$SYSCONST$_Ld41
_$SYSCONST$_Ld41:
		DB	"sysconst.serrinvaliddayofyear",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,29
	GLOBAL _$SYSCONST$_Ld42
_$SYSCONST$_Ld42:
		DB	"Invalid date/timestamp : ",34,"%s",34,0
	ALIGN 2
	DW	0,1,-1,29
	GLOBAL _$SYSCONST$_Ld43
_$SYSCONST$_Ld43:
		DB	"sysconst.serrinvalidtimestamp",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,45
	GLOBAL _$SYSCONST$_Ld44
_$SYSCONST$_Ld44:
		DB	"%f Julian cannot be represented as a DateTime",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$SYSCONST$_Ld45
_$SYSCONST$_Ld45:
		DB	"sysconst.sinvalidjuliandate",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,38
	GLOBAL _$SYSCONST$_Ld46
_$SYSCONST$_Ld46:
		DB	34,"%s",34," is not a valid date format string",0
	ALIGN 2
	DW	0,1,-1,36
	GLOBAL _$SYSCONST$_Ld47
_$SYSCONST$_Ld47:
		DB	"sysconst.serrillegaldateformatstring",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$SYSCONST$_Ld48
_$SYSCONST$_Ld48:
		DB	34,"%s",34," is not a valid time",0
	ALIGN 2
	DW	0,1,-1,30
	GLOBAL _$SYSCONST$_Ld49
_$SYSCONST$_Ld49:
		DB	"sysconst.serrinvalidtimeformat",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,19
	GLOBAL _$SYSCONST$_Ld50
_$SYSCONST$_Ld50:
		DB	"Exception at %p: %s",0
	ALIGN 2
	DW	0,1,-1,31
	GLOBAL _$SYSCONST$_Ld51
_$SYSCONST$_Ld51:
		DB	"sysconst.sexceptionerrormessage",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,21
	GLOBAL _$SYSCONST$_Ld52
_$SYSCONST$_Ld52:
		DB	"Exception stack error",0
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$SYSCONST$_Ld53
_$SYSCONST$_Ld53:
		DB	"sysconst.sexceptionstack",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,38
	GLOBAL _$SYSCONST$_Ld54
_$SYSCONST$_Ld54:
		DB	"Failed to execute ",34,"%s",34,", error code: %d",0
	ALIGN 2
	DW	0,1,-1,30
	GLOBAL _$SYSCONST$_Ld55
_$SYSCONST$_Ld55:
		DB	"sysconst.sexecuteprocessfailed",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,21
	GLOBAL _$SYSCONST$_Ld56
_$SYSCONST$_Ld56:
		DB	"External exception %x",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$SYSCONST$_Ld57
_$SYSCONST$_Ld57:
		DB	"sysconst.sexternalexception",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,17
	GLOBAL _$SYSCONST$_Ld58
_$SYSCONST$_Ld58:
		DB	"File not assigned",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$SYSCONST$_Ld59
_$SYSCONST$_Ld59:
		DB	"sysconst.sfilenotassigned",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,14
	GLOBAL _$SYSCONST$_Ld60
_$SYSCONST$_Ld60:
		DB	"File not found",0
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$SYSCONST$_Ld61
_$SYSCONST$_Ld61:
		DB	"sysconst.sfilenotfound",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,13
	GLOBAL _$SYSCONST$_Ld62
_$SYSCONST$_Ld62:
		DB	"File not open",0
	ALIGN 2
	DW	0,1,-1,21
	GLOBAL _$SYSCONST$_Ld63
_$SYSCONST$_Ld63:
		DB	"sysconst.sfilenotopen",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$SYSCONST$_Ld64
_$SYSCONST$_Ld64:
		DB	"File not open for input",0
	ALIGN 2
	DW	0,1,-1,29
	GLOBAL _$SYSCONST$_Ld65
_$SYSCONST$_Ld65:
		DB	"sysconst.sfilenotopenforinput",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$SYSCONST$_Ld66
_$SYSCONST$_Ld66:
		DB	"File not open for output",0
	ALIGN 2
	DW	0,1,-1,30
	GLOBAL _$SYSCONST$_Ld67
_$SYSCONST$_Ld67:
		DB	"sysconst.sfilenotopenforoutput",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,16
	GLOBAL _$SYSCONST$_Ld68
_$SYSCONST$_Ld68:
		DB	"Invalid filename",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$SYSCONST$_Ld69
_$SYSCONST$_Ld69:
		DB	"sysconst.sinvalidfilename",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,19
	GLOBAL _$SYSCONST$_Ld70
_$SYSCONST$_Ld70:
		DB	"Arithmetic overflow",0
	ALIGN 2
	DW	0,1,-1,21
	GLOBAL _$SYSCONST$_Ld71
_$SYSCONST$_Ld71:
		DB	"sysconst.sintoverflow",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$SYSCONST$_Ld72
_$SYSCONST$_Ld72:
		DB	"Interface not supported",0
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$SYSCONST$_Ld73
_$SYSCONST$_Ld73:
		DB	"sysconst.sintfcasterror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,37
	GLOBAL _$SYSCONST$_Ld74
_$SYSCONST$_Ld74:
		DB	"Invalid argument index in format ",34,"%s",34,0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$SYSCONST$_Ld75
_$SYSCONST$_Ld75:
		DB	"sysconst.sinvalidargindex",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$SYSCONST$_Ld76
_$SYSCONST$_Ld76:
		DB	"%x is an invalid BCD value",0
	ALIGN 2
	DW	0,1,-1,20
	GLOBAL _$SYSCONST$_Ld77
_$SYSCONST$_Ld77:
		DB	"sysconst.sinvalidbcd",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,28
	GLOBAL _$SYSCONST$_Ld78
_$SYSCONST$_Ld78:
		DB	34,"%s",34," is not a valid boolean.",0
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$SYSCONST$_Ld79
_$SYSCONST$_Ld79:
		DB	"sysconst.sinvalidboolean",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,17
	GLOBAL _$SYSCONST$_Ld80
_$SYSCONST$_Ld80:
		DB	"Invalid type cast",0
	ALIGN 2
	DW	0,1,-1,21
	GLOBAL _$SYSCONST$_Ld81
_$SYSCONST$_Ld81:
		DB	"sysconst.sinvalidcast",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$SYSCONST$_Ld82
_$SYSCONST$_Ld82:
		DB	"Invalid currency: ",34,"%s",34,0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$SYSCONST$_Ld83
_$SYSCONST$_Ld83:
		DB	"sysconst.sinvalidcurrency",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,34
	GLOBAL _$SYSCONST$_Ld84
_$SYSCONST$_Ld84:
		DB	"%f is not a valid date/time value.",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$SYSCONST$_Ld85
_$SYSCONST$_Ld85:
		DB	"sysconst.sinvaliddatetime",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$SYSCONST$_Ld86
_$SYSCONST$_Ld86:
		DB	"Invalid drive specified",0
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$SYSCONST$_Ld87
_$SYSCONST$_Ld87:
		DB	"sysconst.sinvaliddrive",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,19
	GLOBAL _$SYSCONST$_Ld88
_$SYSCONST$_Ld88:
		DB	"Invalid file handle",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$SYSCONST$_Ld89
_$SYSCONST$_Ld89:
		DB	"sysconst.sinvalidfilehandle",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$SYSCONST$_Ld90
_$SYSCONST$_Ld90:
		DB	34,"%s",34," is an invalid float",0
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$SYSCONST$_Ld91
_$SYSCONST$_Ld91:
		DB	"sysconst.sinvalidfloat",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,31
	GLOBAL _$SYSCONST$_Ld92
_$SYSCONST$_Ld92:
		DB	"Invalid format specifier : ",34,"%s",34,0
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$SYSCONST$_Ld93
_$SYSCONST$_Ld93:
		DB	"sysconst.sinvalidformat",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,30
	GLOBAL _$SYSCONST$_Ld94
_$SYSCONST$_Ld94:
		DB	34,"%s",34," is not a valid GUID value",0
	ALIGN 2
	DW	0,1,-1,21
	GLOBAL _$SYSCONST$_Ld95
_$SYSCONST$_Ld95:
		DB	"sysconst.sinvalidguid",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,13
	GLOBAL _$SYSCONST$_Ld96
_$SYSCONST$_Ld96:
		DB	"Invalid input",0
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$SYSCONST$_Ld97
_$SYSCONST$_Ld97:
		DB	"sysconst.sinvalidinput",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$SYSCONST$_Ld98
_$SYSCONST$_Ld98:
		DB	34,"%s",34," is an invalid integer",0
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$SYSCONST$_Ld99
_$SYSCONST$_Ld99:
		DB	"sysconst.sinvalidinteger",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$SYSCONST$_Ld100
_$SYSCONST$_Ld100:
		DB	"Invalid floating point operation",0
	ALIGN 2
	DW	0,1,-1,19
	GLOBAL _$SYSCONST$_Ld101
_$SYSCONST$_Ld101:
		DB	"sysconst.sinvalidop",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$SYSCONST$_Ld102
_$SYSCONST$_Ld102:
		DB	"Invalid pointer operation",0
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$SYSCONST$_Ld103
_$SYSCONST$_Ld103:
		DB	"sysconst.sinvalidpointer",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$SYSCONST$_Ld104
_$SYSCONST$_Ld104:
		DB	"Invalid variant type cast",0
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$SYSCONST$_Ld105
_$SYSCONST$_Ld105:
		DB	"sysconst.sinvalidvarcast",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,30
	GLOBAL _$SYSCONST$_Ld106
_$SYSCONST$_Ld106:
		DB	"Invalid NULL variant operation",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$SYSCONST$_Ld107
_$SYSCONST$_Ld107:
		DB	"sysconst.sinvalidvarnullop",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$SYSCONST$_Ld108
_$SYSCONST$_Ld108:
		DB	"Invalid variant operation",0
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$SYSCONST$_Ld109
_$SYSCONST$_Ld109:
		DB	"sysconst.sinvalidvarop",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,34
	GLOBAL _$SYSCONST$_Ld110
_$SYSCONST$_Ld110:
		DB	"Invalid variant operation %s %s %s",0
	ALIGN 2
	DW	0,1,-1,28
	GLOBAL _$SYSCONST$_Ld111
_$SYSCONST$_Ld111:
		DB	"sysconst.sinvalidbinaryvarop",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,31
	GLOBAL _$SYSCONST$_Ld112
_$SYSCONST$_Ld112:
		DB	"Invalid variant operation %s %s",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$SYSCONST$_Ld113
_$SYSCONST$_Ld113:
		DB	"sysconst.sinvalidunaryvarop",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,38
	GLOBAL _$SYSCONST$_Ld114
_$SYSCONST$_Ld114:
		DB	"Invalid variant operation (%s%.8x)",13,10,"%s",0
	ALIGN 2
	DW	0,1,-1,43
	GLOBAL _$SYSCONST$_Ld115
_$SYSCONST$_Ld115:
		DB	"sysconst.sinvalidvaropwithhresultwithprefix",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,9
	GLOBAL _$SYSCONST$_Ld116
_$SYSCONST$_Ld116:
		DB	"No error.",0
	ALIGN 2
	DW	0,1,-1,17
	GLOBAL _$SYSCONST$_Ld117
_$SYSCONST$_Ld117:
		DB	"sysconst.snoerror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,60
	GLOBAL _$SYSCONST$_Ld118
_$SYSCONST$_Ld118:
		DB	"Threads not supported. Recompile program with thread driver.",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$SYSCONST$_Ld119
_$SYSCONST$_Ld119:
		DB	"sysconst.snothreadsupport",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,77
	GLOBAL _$SYSCONST$_Ld120
_$SYSCONST$_Ld120:
		DB	"Widestring manager not available. Recompile program with appropr"
		DB	"iate manager.",0
	ALIGN 2
	DW	0,1,-1,31
	GLOBAL _$SYSCONST$_Ld121
_$SYSCONST$_Ld121:
		DB	"sysconst.smissingwstringmanager",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$SYSCONST$_Ld122
_$SYSCONST$_Ld122:
		DB	"SIGQUIT signal received.",0
	ALIGN 2
	DW	0,1,-1,17
	GLOBAL _$SYSCONST$_Ld123
_$SYSCONST$_Ld123:
		DB	"sysconst.ssigquit",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$SYSCONST$_Ld124
_$SYSCONST$_Ld124:
		DB	"Object reference is Nil",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$SYSCONST$_Ld125
_$SYSCONST$_Ld125:
		DB	"sysconst.sobjectcheckerror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,31
	GLOBAL _$SYSCONST$_Ld126
_$SYSCONST$_Ld126:
		DB	"System error, (OS Code %d):",13,10,"%s",0
	ALIGN 2
	DW	0,1,-1,17
	GLOBAL _$SYSCONST$_Ld127
_$SYSCONST$_Ld127:
		DB	"sysconst.soserror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,13
	GLOBAL _$SYSCONST$_Ld128
_$SYSCONST$_Ld128:
		DB	"Out of memory",0
	ALIGN 2
	DW	0,1,-1,21
	GLOBAL _$SYSCONST$_Ld129
_$SYSCONST$_Ld129:
		DB	"sysconst.soutofmemory",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$SYSCONST$_Ld130
_$SYSCONST$_Ld130:
		DB	"Floating point overflow",0
	ALIGN 2
	DW	0,1,-1,18
	GLOBAL _$SYSCONST$_Ld131
_$SYSCONST$_Ld131:
		DB	"sysconst.soverflow",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$SYSCONST$_Ld132
_$SYSCONST$_Ld132:
		DB	"Privileged instruction",0
	ALIGN 2
	DW	0,1,-1,19
	GLOBAL _$SYSCONST$_Ld133
_$SYSCONST$_Ld133:
		DB	"sysconst.sprivilege",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,17
	GLOBAL _$SYSCONST$_Ld134
_$SYSCONST$_Ld134:
		DB	"Range check error",0
	ALIGN 2
	DW	0,1,-1,20
	GLOBAL _$SYSCONST$_Ld135
_$SYSCONST$_Ld135:
		DB	"sysconst.srangeerror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,14
	GLOBAL _$SYSCONST$_Ld136
_$SYSCONST$_Ld136:
		DB	"Stack overflow",0
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$SYSCONST$_Ld137
_$SYSCONST$_Ld137:
		DB	"sysconst.sstackoverflow",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,28
	GLOBAL _$SYSCONST$_Ld138
_$SYSCONST$_Ld138:
		DB	"Exception in safecall method",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$SYSCONST$_Ld139
_$SYSCONST$_Ld139:
		DB	"sysconst.ssafecallexception",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,11
	GLOBAL _$SYSCONST$_Ld140
_$SYSCONST$_Ld140:
		DB	"iconv error",0
	ALIGN 2
	DW	0,1,-1,20
	GLOBAL _$SYSCONST$_Ld141
_$SYSCONST$_Ld141:
		DB	"sysconst.siconverror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,19
	GLOBAL _$SYSCONST$_Ld142
_$SYSCONST$_Ld142:
		DB	"Too many open files",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$SYSCONST$_Ld143
_$SYSCONST$_Ld143:
		DB	"sysconst.stoomanyopenfiles",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,30
	GLOBAL _$SYSCONST$_Ld144
_$SYSCONST$_Ld144:
		DB	"Unknown Run-Time error : %3.3d",0
	ALIGN 2
	DW	0,1,-1,29
	GLOBAL _$SYSCONST$_Ld145
_$SYSCONST$_Ld145:
		DB	"sysconst.sunknownruntimeerror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$SYSCONST$_Ld146
_$SYSCONST$_Ld146:
		DB	"Floating point underflow",0
	ALIGN 2
	DW	0,1,-1,19
	GLOBAL _$SYSCONST$_Ld147
_$SYSCONST$_Ld147:
		DB	"sysconst.sunderflow",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$SYSCONST$_Ld148
_$SYSCONST$_Ld148:
		DB	"An operating system call failed.",0
	ALIGN 2
	DW	0,1,-1,20
	GLOBAL _$SYSCONST$_Ld149
_$SYSCONST$_Ld149:
		DB	"sysconst.sunkoserror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,29
	GLOBAL _$SYSCONST$_Ld150
_$SYSCONST$_Ld150:
		DB	"Unknown run-time error code: ",0
	ALIGN 2
	DW	0,1,-1,17
	GLOBAL _$SYSCONST$_Ld151
_$SYSCONST$_Ld151:
		DB	"sysconst.sunknown",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$SYSCONST$_Ld152
_$SYSCONST$_Ld152:
		DB	"Unknown error code: %d",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$SYSCONST$_Ld153
_$SYSCONST$_Ld153:
		DB	"sysconst.sunknownerrorcode",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$SYSCONST$_Ld154
_$SYSCONST$_Ld154:
		DB	"Variant array bounds error",0
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$SYSCONST$_Ld155
_$SYSCONST$_Ld155:
		DB	"sysconst.svararraybounds",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,31
	GLOBAL _$SYSCONST$_Ld156
_$SYSCONST$_Ld156:
		DB	"Variant array cannot be created",0
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$SYSCONST$_Ld157
_$SYSCONST$_Ld157:
		DB	"sysconst.svararraycreate",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,20
	GLOBAL _$SYSCONST$_Ld158
_$SYSCONST$_Ld158:
		DB	"Variant array locked",0
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$SYSCONST$_Ld159
_$SYSCONST$_Ld159:
		DB	"sysconst.svararraylocked",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,20
	GLOBAL _$SYSCONST$_Ld160
_$SYSCONST$_Ld160:
		DB	"Invalid variant type",0
	ALIGN 2
	DW	0,1,-1,20
	GLOBAL _$SYSCONST$_Ld161
_$SYSCONST$_Ld161:
		DB	"sysconst.svarbadtype",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,16
	GLOBAL _$SYSCONST$_Ld162
_$SYSCONST$_Ld162:
		DB	"Invalid argument",0
	ALIGN 2
	DW	0,1,-1,20
	GLOBAL _$SYSCONST$_Ld163
_$SYSCONST$_Ld163:
		DB	"sysconst.svarinvalid",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,20
	GLOBAL _$SYSCONST$_Ld164
_$SYSCONST$_Ld164:
		DB	"Invalid argument: %s",0
	ALIGN 2
	DW	0,1,-1,21
	GLOBAL _$SYSCONST$_Ld165
_$SYSCONST$_Ld165:
		DB	"sysconst.svarinvalid1",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$SYSCONST$_Ld166
_$SYSCONST$_Ld166:
		DB	"Variant doesn't contain an array",0
	ALIGN 2
	DW	0,1,-1,21
	GLOBAL _$SYSCONST$_Ld167
_$SYSCONST$_Ld167:
		DB	"sysconst.svarnotarray",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$SYSCONST$_Ld168
_$SYSCONST$_Ld168:
		DB	"Operation not supported",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$SYSCONST$_Ld169
_$SYSCONST$_Ld169:
		DB	"sysconst.svarnotimplemented",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$SYSCONST$_Ld170
_$SYSCONST$_Ld170:
		DB	"Variant operation ran out memory",0
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$SYSCONST$_Ld171
_$SYSCONST$_Ld171:
		DB	"sysconst.svaroutofmemory",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,16
	GLOBAL _$SYSCONST$_Ld172
_$SYSCONST$_Ld172:
		DB	"Variant overflow",0
	ALIGN 2
	DW	0,1,-1,21
	GLOBAL _$SYSCONST$_Ld173
_$SYSCONST$_Ld173:
		DB	"sysconst.svaroverflow",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$SYSCONST$_Ld174
_$SYSCONST$_Ld174:
		DB	"Variant Parameter not found",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$SYSCONST$_Ld175
_$SYSCONST$_Ld175:
		DB	"sysconst.svarparamnotfound",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,47
	GLOBAL _$SYSCONST$_Ld176
_$SYSCONST$_Ld176:
		DB	"Custom variant type (%s%.4x) already used by %s",0
	ALIGN 2
	DW	0,1,-1,38
	GLOBAL _$SYSCONST$_Ld177
_$SYSCONST$_Ld177:
		DB	"sysconst.svartypealreadyusedwithprefix",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,61
	GLOBAL _$SYSCONST$_Ld178
_$SYSCONST$_Ld178:
		DB	"Overflow while converting variant of type (%s) into type (%s)",0
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$SYSCONST$_Ld179
_$SYSCONST$_Ld179:
		DB	"sysconst.svartypeconvertoverflow",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,53
	GLOBAL _$SYSCONST$_Ld180
_$SYSCONST$_Ld180:
		DB	"Could not convert variant of type (%s) into type (%s)",0
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$SYSCONST$_Ld181
_$SYSCONST$_Ld181:
		DB	"sysconst.svartypecouldnotconvert",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,42
	GLOBAL _$SYSCONST$_Ld182
_$SYSCONST$_Ld182:
		DB	"Custom variant type (%s%.4x) is not usable",0
	ALIGN 2
	DW	0,1,-1,36
	GLOBAL _$SYSCONST$_Ld183
_$SYSCONST$_Ld183:
		DB	"sysconst.svartypenotusablewithprefix",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,44
	GLOBAL _$SYSCONST$_Ld184
_$SYSCONST$_Ld184:
		DB	"Custom variant type (%s%.4x) is out of range",0
	ALIGN 2
	DW	0,1,-1,37
	GLOBAL _$SYSCONST$_Ld185
_$SYSCONST$_Ld185:
		DB	"sysconst.svartypeoutofrangewithprefix",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,42
	GLOBAL _$SYSCONST$_Ld186
_$SYSCONST$_Ld186:
		DB	"Range check error for variant of type (%s)",0
	ALIGN 2
	DW	0,1,-1,28
	GLOBAL _$SYSCONST$_Ld187
_$SYSCONST$_Ld187:
		DB	"sysconst.svartyperangecheck1",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,70
	GLOBAL _$SYSCONST$_Ld188
_$SYSCONST$_Ld188:
		DB	"Range check error while converting variant of type (%s) into typ"
		DB	"e (%s)",0
	ALIGN 2
	DW	0,1,-1,28
	GLOBAL _$SYSCONST$_Ld189
_$SYSCONST$_Ld189:
		DB	"sysconst.svartyperangecheck2",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,50
	GLOBAL _$SYSCONST$_Ld190
_$SYSCONST$_Ld190:
		DB	"Too many custom variant types have been registered",0
	ALIGN 2
	DW	0,1,-1,30
	GLOBAL _$SYSCONST$_Ld191
_$SYSCONST$_Ld191:
		DB	"sysconst.svartypetoomanycustom",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$SYSCONST$_Ld192
_$SYSCONST$_Ld192:
		DB	"Unexpected variant error",0
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$SYSCONST$_Ld193
_$SYSCONST$_Ld193:
		DB	"sysconst.svarunexpected",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,31
	GLOBAL _$SYSCONST$_Ld194
_$SYSCONST$_Ld194:
		DB	"Floating point division by zero",0
	ALIGN 2
	DW	0,1,-1,20
	GLOBAL _$SYSCONST$_Ld195
_$SYSCONST$_Ld195:
		DB	"sysconst.szerodivide",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,81
	GLOBAL _$SYSCONST$_Ld196
_$SYSCONST$_Ld196:
		DB	"An error, whose error code is larger than can be returned to the"
		DB	" OS, has occurred",0
	ALIGN 2
	DW	0,1,-1,23
	GLOBAL _$SYSCONST$_Ld197
_$SYSCONST$_Ld197:
		DB	"sysconst.sfallbackerror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,48
	GLOBAL _$SYSCONST$_Ld198
_$SYSCONST$_Ld198:
		DB	"Toolserver is not installed, cannot execute Tool",0
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$SYSCONST$_Ld199
_$SYSCONST$_Ld199:
		DB	"sysconst.snotoolserver",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,32
	GLOBAL _$SYSCONST$_Ld200
_$SYSCONST$_Ld200:
		DB	"%s is not a valid code page name",0
	ALIGN 2
	DW	0,1,-1,30
	GLOBAL _$SYSCONST$_Ld201
_$SYSCONST$_Ld201:
		DB	"sysconst.snotvalidcodepagename",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,18
	GLOBAL _$SYSCONST$_Ld202
_$SYSCONST$_Ld202:
		DB	"invalid count [%d]",0
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$SYSCONST$_Ld203
_$SYSCONST$_Ld203:
		DB	"sysconst.sinvalidcount",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,34
	GLOBAL _$SYSCONST$_Ld204
_$SYSCONST$_Ld204:
		DB	"character index out of bounds [%d]",0
	ALIGN 2
	DW	0,1,-1,35
	GLOBAL _$SYSCONST$_Ld205
_$SYSCONST$_Ld205:
		DB	"sysconst.scharacterindexoutofbounds",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$SYSCONST$_Ld206
_$SYSCONST$_Ld206:
		DB	"invalid destination array",0
	ALIGN 2
	DW	0,1,-1,33
	GLOBAL _$SYSCONST$_Ld207
_$SYSCONST$_Ld207:
		DB	"sysconst.sinvaliddestinationarray",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,30
	GLOBAL _$SYSCONST$_Ld208
_$SYSCONST$_Ld208:
		DB	"invalid destination index [%d]",0
	ALIGN 2
	DW	0,1,-1,33
	GLOBAL _$SYSCONST$_Ld209
_$SYSCONST$_Ld209:
		DB	"sysconst.sinvaliddestinationindex",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,73
	GLOBAL _$SYSCONST$_Ld210
_$SYSCONST$_Ld210:
		DB	"Can't match any allowed value at pattern position %d, string pos"
		DB	"ition %d.",0
	ALIGN 2
	DW	0,1,-1,22
	GLOBAL _$SYSCONST$_Ld211
_$SYSCONST$_Ld211:
		DB	"sysconst.snoarraymatch",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,70
	GLOBAL _$SYSCONST$_Ld212
_$SYSCONST$_Ld212:
		DB	"Mismatch char ",34,"%s",34," <> ",34,"%s",34," at pattern position %d, string positi"
		DB	"on %d.",0
	ALIGN 2
	DW	0,1,-1,21
	GLOBAL _$SYSCONST$_Ld213
_$SYSCONST$_Ld213:
		DB	"sysconst.snocharmatch",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,94
	GLOBAL _$SYSCONST$_Ld214
_$SYSCONST$_Ld214:
		DB	"mm in a sequence hh:mm is interpreted as minutes. No longer vers"
		DB	"ions allowed! (Position : %d).",0
	ALIGN 2
	DW	0,1,-1,19
	GLOBAL _$SYSCONST$_Ld215
_$SYSCONST$_Ld215:
		DB	"sysconst.shhmmerror",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,77
	GLOBAL _$SYSCONST$_Ld216
_$SYSCONST$_Ld216:
		DB	"Couldn't match entire pattern string. Input too short at pattern"
		DB	" position %d.",0
	ALIGN 2
	DW	0,1,-1,21
	GLOBAL _$SYSCONST$_Ld217
_$SYSCONST$_Ld217:
		DB	"sysconst.sfullpattern",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,42
	GLOBAL _$SYSCONST$_Ld218
_$SYSCONST$_Ld218:
		DB	"Pattern mismatch char ",34,"%s",34," at position %d.",0
	ALIGN 2
	DW	0,1,-1,29
	GLOBAL _$SYSCONST$_Ld219
_$SYSCONST$_Ld219:
		DB	"sysconst.spatterncharmismatch",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,3
	GLOBAL _$SYSCONST$_Ld220
_$SYSCONST$_Ld220:
		DB	"Jan",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$SYSCONST$_Ld221
_$SYSCONST$_Ld221:
		DB	"sysconst.sshortmonthnamejan",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,3
	GLOBAL _$SYSCONST$_Ld222
_$SYSCONST$_Ld222:
		DB	"Feb",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$SYSCONST$_Ld223
_$SYSCONST$_Ld223:
		DB	"sysconst.sshortmonthnamefeb",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,3
	GLOBAL _$SYSCONST$_Ld224
_$SYSCONST$_Ld224:
		DB	"Mar",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$SYSCONST$_Ld225
_$SYSCONST$_Ld225:
		DB	"sysconst.sshortmonthnamemar",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,3
	GLOBAL _$SYSCONST$_Ld226
_$SYSCONST$_Ld226:
		DB	"Apr",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$SYSCONST$_Ld227
_$SYSCONST$_Ld227:
		DB	"sysconst.sshortmonthnameapr",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,3
	GLOBAL _$SYSCONST$_Ld228
_$SYSCONST$_Ld228:
		DB	"May",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$SYSCONST$_Ld229
_$SYSCONST$_Ld229:
		DB	"sysconst.sshortmonthnamemay",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,3
	GLOBAL _$SYSCONST$_Ld230
_$SYSCONST$_Ld230:
		DB	"Jun",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$SYSCONST$_Ld231
_$SYSCONST$_Ld231:
		DB	"sysconst.sshortmonthnamejun",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,3
	GLOBAL _$SYSCONST$_Ld232
_$SYSCONST$_Ld232:
		DB	"Jul",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$SYSCONST$_Ld233
_$SYSCONST$_Ld233:
		DB	"sysconst.sshortmonthnamejul",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,3
	GLOBAL _$SYSCONST$_Ld234
_$SYSCONST$_Ld234:
		DB	"Aug",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$SYSCONST$_Ld235
_$SYSCONST$_Ld235:
		DB	"sysconst.sshortmonthnameaug",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,3
	GLOBAL _$SYSCONST$_Ld236
_$SYSCONST$_Ld236:
		DB	"Sep",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$SYSCONST$_Ld237
_$SYSCONST$_Ld237:
		DB	"sysconst.sshortmonthnamesep",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,3
	GLOBAL _$SYSCONST$_Ld238
_$SYSCONST$_Ld238:
		DB	"Oct",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$SYSCONST$_Ld239
_$SYSCONST$_Ld239:
		DB	"sysconst.sshortmonthnameoct",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,3
	GLOBAL _$SYSCONST$_Ld240
_$SYSCONST$_Ld240:
		DB	"Nov",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$SYSCONST$_Ld241
_$SYSCONST$_Ld241:
		DB	"sysconst.sshortmonthnamenov",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,3
	GLOBAL _$SYSCONST$_Ld242
_$SYSCONST$_Ld242:
		DB	"Dec",0
	ALIGN 2
	DW	0,1,-1,27
	GLOBAL _$SYSCONST$_Ld243
_$SYSCONST$_Ld243:
		DB	"sysconst.sshortmonthnamedec",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,7
	GLOBAL _$SYSCONST$_Ld244
_$SYSCONST$_Ld244:
		DB	"January",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$SYSCONST$_Ld245
_$SYSCONST$_Ld245:
		DB	"sysconst.slongmonthnamejan",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,8
	GLOBAL _$SYSCONST$_Ld246
_$SYSCONST$_Ld246:
		DB	"February",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$SYSCONST$_Ld247
_$SYSCONST$_Ld247:
		DB	"sysconst.slongmonthnamefeb",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,5
	GLOBAL _$SYSCONST$_Ld248
_$SYSCONST$_Ld248:
		DB	"March",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$SYSCONST$_Ld249
_$SYSCONST$_Ld249:
		DB	"sysconst.slongmonthnamemar",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,5
	GLOBAL _$SYSCONST$_Ld250
_$SYSCONST$_Ld250:
		DB	"April",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$SYSCONST$_Ld251
_$SYSCONST$_Ld251:
		DB	"sysconst.slongmonthnameapr",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,3
	GLOBAL _$SYSCONST$_Ld252
_$SYSCONST$_Ld252:
		DB	"May",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$SYSCONST$_Ld253
_$SYSCONST$_Ld253:
		DB	"sysconst.slongmonthnamemay",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,4
	GLOBAL _$SYSCONST$_Ld254
_$SYSCONST$_Ld254:
		DB	"June",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$SYSCONST$_Ld255
_$SYSCONST$_Ld255:
		DB	"sysconst.slongmonthnamejun",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,4
	GLOBAL _$SYSCONST$_Ld256
_$SYSCONST$_Ld256:
		DB	"July",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$SYSCONST$_Ld257
_$SYSCONST$_Ld257:
		DB	"sysconst.slongmonthnamejul",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,6
	GLOBAL _$SYSCONST$_Ld258
_$SYSCONST$_Ld258:
		DB	"August",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$SYSCONST$_Ld259
_$SYSCONST$_Ld259:
		DB	"sysconst.slongmonthnameaug",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,9
	GLOBAL _$SYSCONST$_Ld260
_$SYSCONST$_Ld260:
		DB	"September",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$SYSCONST$_Ld261
_$SYSCONST$_Ld261:
		DB	"sysconst.slongmonthnamesep",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,7
	GLOBAL _$SYSCONST$_Ld262
_$SYSCONST$_Ld262:
		DB	"October",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$SYSCONST$_Ld263
_$SYSCONST$_Ld263:
		DB	"sysconst.slongmonthnameoct",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,8
	GLOBAL _$SYSCONST$_Ld264
_$SYSCONST$_Ld264:
		DB	"November",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$SYSCONST$_Ld265
_$SYSCONST$_Ld265:
		DB	"sysconst.slongmonthnamenov",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,8
	GLOBAL _$SYSCONST$_Ld266
_$SYSCONST$_Ld266:
		DB	"December",0
	ALIGN 2
	DW	0,1,-1,26
	GLOBAL _$SYSCONST$_Ld267
_$SYSCONST$_Ld267:
		DB	"sysconst.slongmonthnamedec",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,3
	GLOBAL _$SYSCONST$_Ld268
_$SYSCONST$_Ld268:
		DB	"Mon",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$SYSCONST$_Ld269
_$SYSCONST$_Ld269:
		DB	"sysconst.sshortdaynamemon",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,3
	GLOBAL _$SYSCONST$_Ld270
_$SYSCONST$_Ld270:
		DB	"Tue",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$SYSCONST$_Ld271
_$SYSCONST$_Ld271:
		DB	"sysconst.sshortdaynametue",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,3
	GLOBAL _$SYSCONST$_Ld272
_$SYSCONST$_Ld272:
		DB	"Wed",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$SYSCONST$_Ld273
_$SYSCONST$_Ld273:
		DB	"sysconst.sshortdaynamewed",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,3
	GLOBAL _$SYSCONST$_Ld274
_$SYSCONST$_Ld274:
		DB	"Thu",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$SYSCONST$_Ld275
_$SYSCONST$_Ld275:
		DB	"sysconst.sshortdaynamethu",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,3
	GLOBAL _$SYSCONST$_Ld276
_$SYSCONST$_Ld276:
		DB	"Fri",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$SYSCONST$_Ld277
_$SYSCONST$_Ld277:
		DB	"sysconst.sshortdaynamefri",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,3
	GLOBAL _$SYSCONST$_Ld278
_$SYSCONST$_Ld278:
		DB	"Sat",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$SYSCONST$_Ld279
_$SYSCONST$_Ld279:
		DB	"sysconst.sshortdaynamesat",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,3
	GLOBAL _$SYSCONST$_Ld280
_$SYSCONST$_Ld280:
		DB	"Sun",0
	ALIGN 2
	DW	0,1,-1,25
	GLOBAL _$SYSCONST$_Ld281
_$SYSCONST$_Ld281:
		DB	"sysconst.sshortdaynamesun",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,6
	GLOBAL _$SYSCONST$_Ld282
_$SYSCONST$_Ld282:
		DB	"Monday",0
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$SYSCONST$_Ld283
_$SYSCONST$_Ld283:
		DB	"sysconst.slongdaynamemon",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,7
	GLOBAL _$SYSCONST$_Ld284
_$SYSCONST$_Ld284:
		DB	"Tuesday",0
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$SYSCONST$_Ld285
_$SYSCONST$_Ld285:
		DB	"sysconst.slongdaynametue",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,9
	GLOBAL _$SYSCONST$_Ld286
_$SYSCONST$_Ld286:
		DB	"Wednesday",0
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$SYSCONST$_Ld287
_$SYSCONST$_Ld287:
		DB	"sysconst.slongdaynamewed",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,8
	GLOBAL _$SYSCONST$_Ld288
_$SYSCONST$_Ld288:
		DB	"Thursday",0
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$SYSCONST$_Ld289
_$SYSCONST$_Ld289:
		DB	"sysconst.slongdaynamethu",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,6
	GLOBAL _$SYSCONST$_Ld290
_$SYSCONST$_Ld290:
		DB	"Friday",0
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$SYSCONST$_Ld291
_$SYSCONST$_Ld291:
		DB	"sysconst.slongdaynamefri",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,8
	GLOBAL _$SYSCONST$_Ld292
_$SYSCONST$_Ld292:
		DB	"Saturday",0
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$SYSCONST$_Ld293
_$SYSCONST$_Ld293:
		DB	"sysconst.slongdaynamesat",0

SECTION rodata class=data
	ALIGN 2
	DW	0,1,-1,6
	GLOBAL _$SYSCONST$_Ld294
_$SYSCONST$_Ld294:
		DB	"Sunday",0
	ALIGN 2
	DW	0,1,-1,24
	GLOBAL _$SYSCONST$_Ld295
_$SYSCONST$_Ld295:
		DB	"sysconst.slongdaynamesun",0
; End asmlist al_const
; Begin asmlist al_resourcestrings
