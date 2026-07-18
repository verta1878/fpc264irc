# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_DBCONST
_THREADVARLIST_DBCONST:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.data
	.align 2
.globl	_$DBCONST$_Ld2
_$DBCONST$_Ld2:
	.short	0,1
	.long	0,-1,7
.reference _$DBCONST$_Ld1
.globl	_$DBCONST$_Ld1
_$DBCONST$_Ld1:
.reference _$DBCONST$_Ld2
	.ascii	"DBCONST\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld4
_$DBCONST$_Ld4:
	.short	0,1
	.long	0,-1,50
.reference _$DBCONST$_Ld3
.globl	_$DBCONST$_Ld3
_$DBCONST$_Ld3:
.reference _$DBCONST$_Ld4
	.ascii	"Operation cannot be performed on an active dataset\000"
	.align 2
.globl	_$DBCONST$_Ld6
_$DBCONST$_Ld6:
	.short	0,1
	.long	0,-1,22
.reference _$DBCONST$_Ld5
.globl	_$DBCONST$_Ld5
_$DBCONST$_Ld5:
.reference _$DBCONST$_Ld6
	.ascii	"dbconst.sactivedataset\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld8
_$DBCONST$_Ld8:
	.short	0,1
	.long	0,-1,33
.reference _$DBCONST$_Ld7
.globl	_$DBCONST$_Ld7
_$DBCONST$_Ld7:
.reference _$DBCONST$_Ld8
	.ascii	"Bad fieldtype for parameter \"%s\".\000"
	.align 2
.globl	_$DBCONST$_Ld10
_$DBCONST$_Ld10:
	.short	0,1
	.long	0,-1,26
.reference _$DBCONST$_Ld9
.globl	_$DBCONST$_Ld9
_$DBCONST$_Ld9:
.reference _$DBCONST$_Ld10
	.ascii	"dbconst.sbadparamfieldtype\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld12
_$DBCONST$_Ld12:
	.short	0,1
	.long	0,-1,28
.reference _$DBCONST$_Ld11
.globl	_$DBCONST$_Ld11
_$DBCONST$_Ld11:
.reference _$DBCONST$_Ld12
	.ascii	"AutoInc Fields are read-only\000"
	.align 2
.globl	_$DBCONST$_Ld14
_$DBCONST$_Ld14:
	.short	0,1
	.long	0,-1,29
.reference _$DBCONST$_Ld13
.globl	_$DBCONST$_Ld13
_$DBCONST$_Ld13:
.reference _$DBCONST$_Ld14
	.ascii	"dbconst.scantsetautoincfields\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld16
_$DBCONST$_Ld16:
	.short	0,1
	.long	0,-1,54
.reference _$DBCONST$_Ld15
.globl	_$DBCONST$_Ld15
_$DBCONST$_Ld15:
.reference _$DBCONST$_Ld16
	.ascii	"Operation cannot be performed on an connected datab"
	.ascii	"ase\000"
	.align 2
.globl	_$DBCONST$_Ld18
_$DBCONST$_Ld18:
	.short	0,1
	.long	0,-1,18
.reference _$DBCONST$_Ld17
.globl	_$DBCONST$_Ld17
_$DBCONST$_Ld17:
.reference _$DBCONST$_Ld18
	.ascii	"dbconst.sconnected\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld20
_$DBCONST$_Ld20:
	.short	0,1
	.long	0,-1,21
.reference _$DBCONST$_Ld19
.globl	_$DBCONST$_Ld19
_$DBCONST$_Ld19:
.reference _$DBCONST$_Ld20
	.ascii	"Dataset is read-only.\000"
	.align 2
.globl	_$DBCONST$_Ld22
_$DBCONST$_Ld22:
	.short	0,1
	.long	0,-1,24
.reference _$DBCONST$_Ld21
.globl	_$DBCONST$_Ld21
_$DBCONST$_Ld21:
.reference _$DBCONST$_Ld22
	.ascii	"dbconst.sdatasetreadonly\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld24
_$DBCONST$_Ld24:
	.short	0,1
	.long	0,-1,33
.reference _$DBCONST$_Ld23
.globl	_$DBCONST$_Ld23
_$DBCONST$_Ld23:
.reference _$DBCONST$_Ld24
	.ascii	"Dataset already registered : \"%s\"\000"
	.align 2
.globl	_$DBCONST$_Ld26
_$DBCONST$_Ld26:
	.short	0,1
	.long	0,-1,26
.reference _$DBCONST$_Ld25
.globl	_$DBCONST$_Ld25
_$DBCONST$_Ld25:
.reference _$DBCONST$_Ld26
	.ascii	"dbconst.sdatasetregistered\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld28
_$DBCONST$_Ld28:
	.short	0,1
	.long	0,-1,26
.reference _$DBCONST$_Ld27
.globl	_$DBCONST$_Ld27
_$DBCONST$_Ld27:
.reference _$DBCONST$_Ld28
	.ascii	"Duplicate fieldname : \"%s\"\000"
	.align 2
.globl	_$DBCONST$_Ld30
_$DBCONST$_Ld30:
	.short	0,1
	.long	0,-1,27
.reference _$DBCONST$_Ld29
.globl	_$DBCONST$_Ld29
_$DBCONST$_Ld29:
.reference _$DBCONST$_Ld30
	.ascii	"dbconst.sduplicatefieldname\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld32
_$DBCONST$_Ld32:
	.short	0,1
	.long	0,-1,55
.reference _$DBCONST$_Ld31
.globl	_$DBCONST$_Ld31
_$DBCONST$_Ld31:
.reference _$DBCONST$_Ld32
	.ascii	"Cannot assign transaction while old transaction act"
	.ascii	"ive!\000"
	.align 2
.globl	_$DBCONST$_Ld34
_$DBCONST$_Ld34:
	.short	0,1
	.long	0,-1,26
.reference _$DBCONST$_Ld33
.globl	_$DBCONST$_Ld33
_$DBCONST$_Ld33:
.reference _$DBCONST$_Ld34
	.ascii	"dbconst.serrasstransaction\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld36
_$DBCONST$_Ld36:
	.short	0,1
	.long	0,-1,22
.reference _$DBCONST$_Ld35
.globl	_$DBCONST$_Ld35
_$DBCONST$_Ld35:
.reference _$DBCONST$_Ld36
	.ascii	"Column \"%s\" not found.\000"
	.align 2
.globl	_$DBCONST$_Ld38
_$DBCONST$_Ld38:
	.short	0,1
	.long	0,-1,26
.reference _$DBCONST$_Ld37
.globl	_$DBCONST$_Ld37
_$DBCONST$_Ld37:
.reference _$DBCONST$_Ld38
	.ascii	"dbconst.serrcolumnnotfound\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld40
_$DBCONST$_Ld40:
	.short	0,1
	.long	0,-1,22
.reference _$DBCONST$_Ld39
.globl	_$DBCONST$_Ld39
_$DBCONST$_Ld39:
.reference _$DBCONST$_Ld40
	.ascii	"Database not assigned!\000"
	.align 2
.globl	_$DBCONST$_Ld42
_$DBCONST$_Ld42:
	.short	0,1
	.long	0,-1,29
.reference _$DBCONST$_Ld41
.globl	_$DBCONST$_Ld41
_$DBCONST$_Ld41:
.reference _$DBCONST$_Ld42
	.ascii	"dbconst.serrdatabasenassigned\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld44
_$DBCONST$_Ld44:
	.short	0,1
	.long	0,-1,43
.reference _$DBCONST$_Ld43
.globl	_$DBCONST$_Ld43
_$DBCONST$_Ld43:
.reference _$DBCONST$_Ld44
	.ascii	"Invalid operation: Not attached to database\000"
	.align 2
.globl	_$DBCONST$_Ld46
_$DBCONST$_Ld46:
	.short	0,1
	.long	0,-1,31
.reference _$DBCONST$_Ld45
.globl	_$DBCONST$_Ld45
_$DBCONST$_Ld45:
.reference _$DBCONST$_Ld46
	.ascii	"dbconst.serrnodatabaseavailable\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld48
_$DBCONST$_Ld48:
	.short	0,1
	.long	0,-1,53
.reference _$DBCONST$_Ld47
.globl	_$DBCONST$_Ld47
_$DBCONST$_Ld47:
.reference _$DBCONST$_Ld48
	.ascii	"Database connect string (DatabaseName) not filled i"
	.ascii	"n!\000"
	.align 2
.globl	_$DBCONST$_Ld50
_$DBCONST$_Ld50:
	.short	0,1
	.long	0,-1,26
.reference _$DBCONST$_Ld49
.globl	_$DBCONST$_Ld49
_$DBCONST$_Ld49:
.reference _$DBCONST$_Ld50
	.ascii	"dbconst.serrnodatabasename\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld52
_$DBCONST$_Ld52:
	.short	0,1
	.long	0,-1,34
.reference _$DBCONST$_Ld51
.globl	_$DBCONST$_Ld51
_$DBCONST$_Ld51:
.reference _$DBCONST$_Ld52
	.ascii	"Cannot open a non-select statement\000"
	.align 2
.globl	_$DBCONST$_Ld54
_$DBCONST$_Ld54:
	.short	0,1
	.long	0,-1,29
.reference _$DBCONST$_Ld53
.globl	_$DBCONST$_Ld53
_$DBCONST$_Ld53:
.reference _$DBCONST$_Ld54
	.ascii	"dbconst.serrnoselectstatement\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld56
_$DBCONST$_Ld56:
	.short	0,1
	.long	0,-1,21
.reference _$DBCONST$_Ld55
.globl	_$DBCONST$_Ld55
_$DBCONST$_Ld55:
.reference _$DBCONST$_Ld56
	.ascii	"SQL statement not set\000"
	.align 2
.globl	_$DBCONST$_Ld58
_$DBCONST$_Ld58:
	.short	0,1
	.long	0,-1,23
.reference _$DBCONST$_Ld57
.globl	_$DBCONST$_Ld57
_$DBCONST$_Ld57:
.reference _$DBCONST$_Ld58
	.ascii	"dbconst.serrnostatement\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld60
_$DBCONST$_Ld60:
	.short	0,1
	.long	0,-1,26
.reference _$DBCONST$_Ld59
.globl	_$DBCONST$_Ld59
_$DBCONST$_Ld59:
.reference _$DBCONST$_Ld60
	.ascii	"Transaction already active\000"
	.align 2
.globl	_$DBCONST$_Ld62
_$DBCONST$_Ld62:
	.short	0,1
	.long	0,-1,30
.reference _$DBCONST$_Ld61
.globl	_$DBCONST$_Ld61
_$DBCONST$_Ld61:
.reference _$DBCONST$_Ld62
	.ascii	"dbconst.serrtransalreadyactive\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld64
_$DBCONST$_Ld64:
	.short	0,1
	.long	0,-1,19
.reference _$DBCONST$_Ld63
.globl	_$DBCONST$_Ld63
_$DBCONST$_Ld63:
.reference _$DBCONST$_Ld64
	.ascii	"Transaction not set\000"
	.align 2
.globl	_$DBCONST$_Ld66
_$DBCONST$_Ld66:
	.short	0,1
	.long	0,-1,27
.reference _$DBCONST$_Ld65
.globl	_$DBCONST$_Ld65
_$DBCONST$_Ld65:
.reference _$DBCONST$_Ld66
	.ascii	"dbconst.serrtransactionnset\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld68
_$DBCONST$_Ld68:
	.short	0,1
	.long	0,-1,53
.reference _$DBCONST$_Ld67
.globl	_$DBCONST$_Ld67
_$DBCONST$_Ld67:
.reference _$DBCONST$_Ld68
	.ascii	"Index result for \"%s\" too long, >100 characters ("
	.ascii	"%d).\000"
	.align 2
.globl	_$DBCONST$_Ld70
_$DBCONST$_Ld70:
	.short	0,1
	.long	0,-1,30
.reference _$DBCONST$_Ld69
.globl	_$DBCONST$_Ld69
_$DBCONST$_Ld69:
.reference _$DBCONST$_Ld70
	.ascii	"dbconst.serrindexresulttoolong\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld72
_$DBCONST$_Ld72:
	.short	0,1
	.long	0,-1,59
.reference _$DBCONST$_Ld71
.globl	_$DBCONST$_Ld71
_$DBCONST$_Ld71:
.reference _$DBCONST$_Ld72
	.ascii	"Field \"%s\" has an invalid field type (%s) to base"
	.ascii	" index on.\000"
	.align 2
.globl	_$DBCONST$_Ld74
_$DBCONST$_Ld74:
	.short	0,1
	.long	0,-1,32
.reference _$DBCONST$_Ld73
.globl	_$DBCONST$_Ld73
_$DBCONST$_Ld73:
.reference _$DBCONST$_Ld74
	.ascii	"dbconst.serrindexbasedoninvfield\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld76
_$DBCONST$_Ld76:
	.short	0,1
	.long	0,-1,34
.reference _$DBCONST$_Ld75
.globl	_$DBCONST$_Ld75
_$DBCONST$_Ld75:
.reference _$DBCONST$_Ld76
	.ascii	"Index based on unknown field \"%s\".\000"
	.align 2
.globl	_$DBCONST$_Ld78
_$DBCONST$_Ld78:
	.short	0,1
	.long	0,-1,32
.reference _$DBCONST$_Ld77
.globl	_$DBCONST$_Ld77
_$DBCONST$_Ld77:
.reference _$DBCONST$_Ld78
	.ascii	"dbconst.serrindexbasedonunkfield\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld80
_$DBCONST$_Ld80:
	.short	0,1
	.long	0,-1,33
.reference _$DBCONST$_Ld79
.globl	_$DBCONST$_Ld79
_$DBCONST$_Ld79:
.reference _$DBCONST$_Ld80
	.ascii	"Transaction of connection not set\000"
	.align 2
.globl	_$DBCONST$_Ld82
_$DBCONST$_Ld82:
	.short	0,1
	.long	0,-1,31
.reference _$DBCONST$_Ld81
.globl	_$DBCONST$_Ld81
_$DBCONST$_Ld81:
.reference _$DBCONST$_Ld82
	.ascii	"dbconst.serrconntransactionnset\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld84
_$DBCONST$_Ld84:
	.short	0,1
	.long	0,-1,28
.reference _$DBCONST$_Ld83
.globl	_$DBCONST$_Ld83
_$DBCONST$_Ld83:
.reference _$DBCONST$_Ld84
	.ascii	"\"%s\" is not a TSQLConnection\000"
	.align 2
.globl	_$DBCONST$_Ld86
_$DBCONST$_Ld86:
	.short	0,1
	.long	0,-1,29
.reference _$DBCONST$_Ld85
.globl	_$DBCONST$_Ld85
_$DBCONST$_Ld85:
.reference _$DBCONST$_Ld86
	.ascii	"dbconst.serrnotasqlconnection\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld88
_$DBCONST$_Ld88:
	.short	0,1
	.long	0,-1,29
.reference _$DBCONST$_Ld87
.globl	_$DBCONST$_Ld87
_$DBCONST$_Ld87:
.reference _$DBCONST$_Ld88
	.ascii	"\"%s\" is not a TCustomSQLQuery\000"
	.align 2
.globl	_$DBCONST$_Ld90
_$DBCONST$_Ld90:
	.short	0,1
	.long	0,-1,24
.reference _$DBCONST$_Ld89
.globl	_$DBCONST$_Ld89
_$DBCONST$_Ld89:
.reference _$DBCONST$_Ld90
	.ascii	"dbconst.serrnotasqlquery\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld92
_$DBCONST$_Ld92:
	.short	0,1
	.long	0,-1,56
.reference _$DBCONST$_Ld91
.globl	_$DBCONST$_Ld91
_$DBCONST$_Ld91:
.reference _$DBCONST$_Ld92
	.ascii	"Operation cannot be performed on an inactive transa"
	.ascii	"ction\000"
	.align 2
.globl	_$DBCONST$_Ld94
_$DBCONST$_Ld94:
	.short	0,1
	.long	0,-1,23
.reference _$DBCONST$_Ld93
.globl	_$DBCONST$_Ld93
_$DBCONST$_Ld93:
.reference _$DBCONST$_Ld94
	.ascii	"dbconst.stransnotactive\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld96
_$DBCONST$_Ld96:
	.short	0,1
	.long	0,-1,54
.reference _$DBCONST$_Ld95
.globl	_$DBCONST$_Ld95
_$DBCONST$_Ld95:
.reference _$DBCONST$_Ld96
	.ascii	"Operation cannot be performed on an active transact"
	.ascii	"ion\000"
	.align 2
.globl	_$DBCONST$_Ld98
_$DBCONST$_Ld98:
	.short	0,1
	.long	0,-1,20
.reference _$DBCONST$_Ld97
.globl	_$DBCONST$_Ld97
_$DBCONST$_Ld97:
.reference _$DBCONST$_Ld98
	.ascii	"dbconst.stransactive\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld100
_$DBCONST$_Ld100:
	.short	0,1
	.long	0,-1,22
.reference _$DBCONST$_Ld99
.globl	_$DBCONST$_Ld99
_$DBCONST$_Ld99:
.reference _$DBCONST$_Ld100
	.ascii	"Field not found : \"%s\"\000"
	.align 2
.globl	_$DBCONST$_Ld102
_$DBCONST$_Ld102:
	.short	0,1
	.long	0,-1,22
.reference _$DBCONST$_Ld101
.globl	_$DBCONST$_Ld101
_$DBCONST$_Ld101:
.reference _$DBCONST$_Ld102
	.ascii	"dbconst.sfieldnotfound\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld104
_$DBCONST$_Ld104:
	.short	0,1
	.long	0,-1,52
.reference _$DBCONST$_Ld103
.globl	_$DBCONST$_Ld103
_$DBCONST$_Ld103:
.reference _$DBCONST$_Ld104
	.ascii	"Operation cannot be performed on an inactive datase"
	.ascii	"t\000"
	.align 2
.globl	_$DBCONST$_Ld106
_$DBCONST$_Ld106:
	.short	0,1
	.long	0,-1,24
.reference _$DBCONST$_Ld105
.globl	_$DBCONST$_Ld105
_$DBCONST$_Ld105:
.reference _$DBCONST$_Ld106
	.ascii	"dbconst.sinactivedataset\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld108
_$DBCONST$_Ld108:
	.short	0,1
	.long	0,-1,40
.reference _$DBCONST$_Ld107
.globl	_$DBCONST$_Ld107
_$DBCONST$_Ld107:
.reference _$DBCONST$_Ld108
	.ascii	"\"%s\" are not valid boolean displayvalues\000"
	.align 2
.globl	_$DBCONST$_Ld110
_$DBCONST$_Ld110:
	.short	0,1
	.long	0,-1,29
.reference _$DBCONST$_Ld109
.globl	_$DBCONST$_Ld109
_$DBCONST$_Ld109:
.reference _$DBCONST$_Ld110
	.ascii	"dbconst.sinvaliddisplayvalues\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld112
_$DBCONST$_Ld112:
	.short	0,1
	.long	0,-1,26
.reference _$DBCONST$_Ld111
.globl	_$DBCONST$_Ld111
_$DBCONST$_Ld111:
.reference _$DBCONST$_Ld112
	.ascii	"%s : invalid field kind : \000"
	.align 2
.globl	_$DBCONST$_Ld114
_$DBCONST$_Ld114:
	.short	0,1
	.long	0,-1,25
.reference _$DBCONST$_Ld113
.globl	_$DBCONST$_Ld113
_$DBCONST$_Ld113:
.reference _$DBCONST$_Ld114
	.ascii	"dbconst.sinvalidfieldkind\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld116
_$DBCONST$_Ld116:
	.short	0,1
	.long	0,-1,16
.reference _$DBCONST$_Ld115
.globl	_$DBCONST$_Ld115
_$DBCONST$_Ld115:
.reference _$DBCONST$_Ld116
	.ascii	"Invalid bookmark\000"
	.align 2
.globl	_$DBCONST$_Ld118
_$DBCONST$_Ld118:
	.short	0,1
	.long	0,-1,24
.reference _$DBCONST$_Ld117
.globl	_$DBCONST$_Ld117
_$DBCONST$_Ld117:
.reference _$DBCONST$_Ld118
	.ascii	"dbconst.sinvalidbookmark\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld120
_$DBCONST$_Ld120:
	.short	0,1
	.long	0,-1,23
.reference _$DBCONST$_Ld119
.globl	_$DBCONST$_Ld119
_$DBCONST$_Ld119:
.reference _$DBCONST$_Ld120
	.ascii	"Invalid field size : %d\000"
	.align 2
.globl	_$DBCONST$_Ld122
_$DBCONST$_Ld122:
	.short	0,1
	.long	0,-1,25
.reference _$DBCONST$_Ld121
.globl	_$DBCONST$_Ld121
_$DBCONST$_Ld121:
.reference _$DBCONST$_Ld122
	.ascii	"dbconst.sinvalidfieldsize\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld124
_$DBCONST$_Ld124:
	.short	0,1
	.long	0,-1,41
.reference _$DBCONST$_Ld123
.globl	_$DBCONST$_Ld123
_$DBCONST$_Ld123:
.reference _$DBCONST$_Ld124
	.ascii	"Invalid type conversion to %s in field %s\000"
	.align 2
.globl	_$DBCONST$_Ld126
_$DBCONST$_Ld126:
	.short	0,1
	.long	0,-1,30
.reference _$DBCONST$_Ld125
.globl	_$DBCONST$_Ld125
_$DBCONST$_Ld125:
.reference _$DBCONST$_Ld126
	.ascii	"dbconst.sinvalidtypeconversion\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld128
_$DBCONST$_Ld128:
	.short	0,1
	.long	0,-1,39
.reference _$DBCONST$_Ld127
.globl	_$DBCONST$_Ld127
_$DBCONST$_Ld127:
.reference _$DBCONST$_Ld128
	.ascii	"Field %s is required, but not supplied.\000"
	.align 2
.globl	_$DBCONST$_Ld130
_$DBCONST$_Ld130:
	.short	0,1
	.long	0,-1,18
.reference _$DBCONST$_Ld129
.globl	_$DBCONST$_Ld129
_$DBCONST$_Ld129:
.reference _$DBCONST$_Ld130
	.ascii	"dbconst.sneedfield\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld132
_$DBCONST$_Ld132:
	.short	0,1
	.long	0,-1,18
.reference _$DBCONST$_Ld131
.globl	_$DBCONST$_Ld131
_$DBCONST$_Ld131:
.reference _$DBCONST$_Ld132
	.ascii	"Field needs a name\000"
	.align 2
.globl	_$DBCONST$_Ld134
_$DBCONST$_Ld134:
	.short	0,1
	.long	0,-1,22
.reference _$DBCONST$_Ld133
.globl	_$DBCONST$_Ld133
_$DBCONST$_Ld133:
.reference _$DBCONST$_Ld134
	.ascii	"dbconst.sneedfieldname\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld136
_$DBCONST$_Ld136:
	.short	0,1
	.long	0,-1,37
.reference _$DBCONST$_Ld135
.globl	_$DBCONST$_Ld135
_$DBCONST$_Ld135:
.reference _$DBCONST$_Ld136
	.ascii	"No dataset asssigned for field : \"%s\"\000"
	.align 2
.globl	_$DBCONST$_Ld138
_$DBCONST$_Ld138:
	.short	0,1
	.long	0,-1,18
.reference _$DBCONST$_Ld137
.globl	_$DBCONST$_Ld137
_$DBCONST$_Ld137:
.reference _$DBCONST$_Ld138
	.ascii	"dbconst.snodataset\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld140
_$DBCONST$_Ld140:
	.short	0,1
	.long	0,-1,33
.reference _$DBCONST$_Ld139
.globl	_$DBCONST$_Ld139
_$DBCONST$_Ld139:
.reference _$DBCONST$_Ld140
	.ascii	"No such dataset registered : \"%s\"\000"
	.align 2
.globl	_$DBCONST$_Ld142
_$DBCONST$_Ld142:
	.short	0,1
	.long	0,-1,28
.reference _$DBCONST$_Ld141
.globl	_$DBCONST$_Ld141
_$DBCONST$_Ld141:
.reference _$DBCONST$_Ld142
	.ascii	"dbconst.snodatasetregistered\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld144
_$DBCONST$_Ld144:
	.short	0,1
	.long	0,-1,40
.reference _$DBCONST$_Ld143
.globl	_$DBCONST$_Ld143
_$DBCONST$_Ld143:
.reference _$DBCONST$_Ld144
	.ascii	"No datasets are attached to the database\000"
	.align 2
.globl	_$DBCONST$_Ld146
_$DBCONST$_Ld146:
	.short	0,1
	.long	0,-1,19
.reference _$DBCONST$_Ld145
.globl	_$DBCONST$_Ld145
_$DBCONST$_Ld145:
.reference _$DBCONST$_Ld146
	.ascii	"dbconst.snodatasets\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld148
_$DBCONST$_Ld148:
	.short	0,1
	.long	0,-1,36
.reference _$DBCONST$_Ld147
.globl	_$DBCONST$_Ld147
_$DBCONST$_Ld147:
.reference _$DBCONST$_Ld148
	.ascii	"Could not find the requested record.\000"
	.align 2
.globl	_$DBCONST$_Ld150
_$DBCONST$_Ld150:
	.short	0,1
	.long	0,-1,21
.reference _$DBCONST$_Ld149
.globl	_$DBCONST$_Ld149
_$DBCONST$_Ld149:
.reference _$DBCONST$_Ld150
	.ascii	"dbconst.snosuchrecord\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld152
_$DBCONST$_Ld152:
	.short	0,1
	.long	0,-1,37
.reference _$DBCONST$_Ld151
.globl	_$DBCONST$_Ld151
_$DBCONST$_Ld151:
.reference _$DBCONST$_Ld152
	.ascii	"No such transaction registered : \"%s\"\000"
	.align 2
.globl	_$DBCONST$_Ld154
_$DBCONST$_Ld154:
	.short	0,1
	.long	0,-1,32
.reference _$DBCONST$_Ld153
.globl	_$DBCONST$_Ld153
_$DBCONST$_Ld153:
.reference _$DBCONST$_Ld154
	.ascii	"dbconst.snotransactionregistered\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld156
_$DBCONST$_Ld156:
	.short	0,1
	.long	0,-1,44
.reference _$DBCONST$_Ld155
.globl	_$DBCONST$_Ld155
_$DBCONST$_Ld155:
.reference _$DBCONST$_Ld156
	.ascii	"No transactions are attached to the database\000"
	.align 2
.globl	_$DBCONST$_Ld158
_$DBCONST$_Ld158:
	.short	0,1
	.long	0,-1,23
.reference _$DBCONST$_Ld157
.globl	_$DBCONST$_Ld157
_$DBCONST$_Ld157:
.reference _$DBCONST$_Ld158
	.ascii	"dbconst.snotransactions\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld160
_$DBCONST$_Ld160:
	.short	0,1
	.long	0,-1,27
.reference _$DBCONST$_Ld159
.globl	_$DBCONST$_Ld159
_$DBCONST$_Ld159:
.reference _$DBCONST$_Ld160
	.ascii	"\"%s\" is not a valid boolean\000"
	.align 2
.globl	_$DBCONST$_Ld162
_$DBCONST$_Ld162:
	.short	0,1
	.long	0,-1,20
.reference _$DBCONST$_Ld161
.globl	_$DBCONST$_Ld161
_$DBCONST$_Ld161:
.reference _$DBCONST$_Ld162
	.ascii	"dbconst.snotaboolean\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld164
_$DBCONST$_Ld164:
	.short	0,1
	.long	0,-1,25
.reference _$DBCONST$_Ld163
.globl	_$DBCONST$_Ld163
_$DBCONST$_Ld163:
.reference _$DBCONST$_Ld164
	.ascii	"\"%s\" is not a valid float\000"
	.align 2
.globl	_$DBCONST$_Ld166
_$DBCONST$_Ld166:
	.short	0,1
	.long	0,-1,18
.reference _$DBCONST$_Ld165
.globl	_$DBCONST$_Ld165
_$DBCONST$_Ld165:
.reference _$DBCONST$_Ld166
	.ascii	"dbconst.snotafloat\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld168
_$DBCONST$_Ld168:
	.short	0,1
	.long	0,-1,27
.reference _$DBCONST$_Ld167
.globl	_$DBCONST$_Ld167
_$DBCONST$_Ld167:
.reference _$DBCONST$_Ld168
	.ascii	"\"%s\" is not a valid integer\000"
	.align 2
.globl	_$DBCONST$_Ld170
_$DBCONST$_Ld170:
	.short	0,1
	.long	0,-1,21
.reference _$DBCONST$_Ld169
.globl	_$DBCONST$_Ld169
_$DBCONST$_Ld169:
.reference _$DBCONST$_Ld170
	.ascii	"dbconst.snotaninteger\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld172
_$DBCONST$_Ld172:
	.short	0,1
	.long	0,-1,57
.reference _$DBCONST$_Ld171
.globl	_$DBCONST$_Ld171
_$DBCONST$_Ld171:
.reference _$DBCONST$_Ld172
	.ascii	"Operation cannot be performed on an disconnected da"
	.ascii	"tabase\000"
	.align 2
.globl	_$DBCONST$_Ld174
_$DBCONST$_Ld174:
	.short	0,1
	.long	0,-1,21
.reference _$DBCONST$_Ld173
.globl	_$DBCONST$_Ld173
_$DBCONST$_Ld173:
.reference _$DBCONST$_Ld174
	.ascii	"dbconst.snotconnected\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld176
_$DBCONST$_Ld176:
	.short	0,1
	.long	0,-1,70
.reference _$DBCONST$_Ld175
.globl	_$DBCONST$_Ld175
_$DBCONST$_Ld175:
.reference _$DBCONST$_Ld176
	.ascii	"Operation not allowed, dataset \"%s\" is not in an "
	.ascii	"edit or insert state.\000"
	.align 2
.globl	_$DBCONST$_Ld178
_$DBCONST$_Ld178:
	.short	0,1
	.long	0,-1,19
.reference _$DBCONST$_Ld177
.globl	_$DBCONST$_Ld177
_$DBCONST$_Ld177:
.reference _$DBCONST$_Ld178
	.ascii	"dbconst.snotediting\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld180
_$DBCONST$_Ld180:
	.short	0,1
	.long	0,-1,24
.reference _$DBCONST$_Ld179
.globl	_$DBCONST$_Ld179
_$DBCONST$_Ld179:
.reference _$DBCONST$_Ld180
	.ascii	"Parameter \"%s\" not found\000"
	.align 2
.globl	_$DBCONST$_Ld182
_$DBCONST$_Ld182:
	.short	0,1
	.long	0,-1,26
.reference _$DBCONST$_Ld181
.globl	_$DBCONST$_Ld181
_$DBCONST$_Ld181:
.reference _$DBCONST$_Ld182
	.ascii	"dbconst.sparameternotfound\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld184
_$DBCONST$_Ld184:
	.short	0,1
	.long	0,-1,34
.reference _$DBCONST$_Ld183
.globl	_$DBCONST$_Ld183
_$DBCONST$_Ld183:
.reference _$DBCONST$_Ld184
	.ascii	"%f is not between %f and %f for %s\000"
	.align 2
.globl	_$DBCONST$_Ld186
_$DBCONST$_Ld186:
	.short	0,1
	.long	0,-1,19
.reference _$DBCONST$_Ld185
.globl	_$DBCONST$_Ld185
_$DBCONST$_Ld185:
.reference _$DBCONST$_Ld186
	.ascii	"dbconst.srangeerror\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld188
_$DBCONST$_Ld188:
	.short	0,1
	.long	0,-1,45
.reference _$DBCONST$_Ld187
.globl	_$DBCONST$_Ld187
_$DBCONST$_Ld187:
.reference _$DBCONST$_Ld188
	.ascii	"Field %s cannot be modified, it is read-only.\000"
	.align 2
.globl	_$DBCONST$_Ld190
_$DBCONST$_Ld190:
	.short	0,1
	.long	0,-1,22
.reference _$DBCONST$_Ld189
.globl	_$DBCONST$_Ld189
_$DBCONST$_Ld189:
.reference _$DBCONST$_Ld190
	.ascii	"dbconst.sreadonlyfield\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld192
_$DBCONST$_Ld192:
	.short	0,1
	.long	0,-1,37
.reference _$DBCONST$_Ld191
.globl	_$DBCONST$_Ld191
_$DBCONST$_Ld191:
.reference _$DBCONST$_Ld192
	.ascii	"Transaction already registered : \"%s\"\000"
	.align 2
.globl	_$DBCONST$_Ld194
_$DBCONST$_Ld194:
	.short	0,1
	.long	0,-1,30
.reference _$DBCONST$_Ld193
.globl	_$DBCONST$_Ld193
_$DBCONST$_Ld193:
.reference _$DBCONST$_Ld194
	.ascii	"dbconst.stransactionregistered\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld196
_$DBCONST$_Ld196:
	.short	0,1
	.long	0,-1,58
.reference _$DBCONST$_Ld195
.globl	_$DBCONST$_Ld195
_$DBCONST$_Ld195:
.reference _$DBCONST$_Ld196
	.ascii	"Operation cannot be performed on an unidirectional "
	.ascii	"dataset\000"
	.align 2
.globl	_$DBCONST$_Ld198
_$DBCONST$_Ld198:
	.short	0,1
	.long	0,-1,23
.reference _$DBCONST$_Ld197
.globl	_$DBCONST$_Ld197
_$DBCONST$_Ld197:
.reference _$DBCONST$_Ld198
	.ascii	"dbconst.sunidirectional\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld200
_$DBCONST$_Ld200:
	.short	0,1
	.long	0,-1,45
.reference _$DBCONST$_Ld199
.globl	_$DBCONST$_Ld199
_$DBCONST$_Ld199:
.reference _$DBCONST$_Ld200
	.ascii	"No field named \"%s\" was found in dataset \"%s\"\000"
	.align 2
.globl	_$DBCONST$_Ld202
_$DBCONST$_Ld202:
	.short	0,1
	.long	0,-1,21
.reference _$DBCONST$_Ld201
.globl	_$DBCONST$_Ld201
_$DBCONST$_Ld201:
.reference _$DBCONST$_Ld202
	.ascii	"dbconst.sunknownfield\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld204
_$DBCONST$_Ld204:
	.short	0,1
	.long	0,-1,23
.reference _$DBCONST$_Ld203
.globl	_$DBCONST$_Ld203
_$DBCONST$_Ld203:
.reference _$DBCONST$_Ld204
	.ascii	"Unknown field type : %s\000"
	.align 2
.globl	_$DBCONST$_Ld206
_$DBCONST$_Ld206:
	.short	0,1
	.long	0,-1,25
.reference _$DBCONST$_Ld205
.globl	_$DBCONST$_Ld205
_$DBCONST$_Ld205:
.reference _$DBCONST$_Ld206
	.ascii	"dbconst.sunknownfieldtype\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld208
_$DBCONST$_Ld208:
	.short	0,1
	.long	0,-1,37
.reference _$DBCONST$_Ld207
.globl	_$DBCONST$_Ld207
_$DBCONST$_Ld207:
.reference _$DBCONST$_Ld208
	.ascii	"Unknown fieldtype for parameter \"%s\".\000"
	.align 2
.globl	_$DBCONST$_Ld210
_$DBCONST$_Ld210:
	.short	0,1
	.long	0,-1,30
.reference _$DBCONST$_Ld209
.globl	_$DBCONST$_Ld209
_$DBCONST$_Ld209:
.reference _$DBCONST$_Ld210
	.ascii	"dbconst.sunknownparamfieldtype\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld212
_$DBCONST$_Ld212:
	.short	0,1
	.long	0,-1,56
.reference _$DBCONST$_Ld211
.globl	_$DBCONST$_Ld211
_$DBCONST$_Ld211:
.reference _$DBCONST$_Ld212
	.ascii	"The metadata is not available for this type of data"
	.ascii	"base.\000"
	.align 2
.globl	_$DBCONST$_Ld214
_$DBCONST$_Ld214:
	.short	0,1
	.long	0,-1,28
.reference _$DBCONST$_Ld213
.globl	_$DBCONST$_Ld213
_$DBCONST$_Ld213:
.reference _$DBCONST$_Ld214
	.ascii	"dbconst.smetadataunavailable\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld216
_$DBCONST$_Ld216:
	.short	0,1
	.long	0,-1,22
.reference _$DBCONST$_Ld215
.globl	_$DBCONST$_Ld215
_$DBCONST$_Ld215:
.reference _$DBCONST$_Ld216
	.ascii	"The record is deleted.\000"
	.align 2
.globl	_$DBCONST$_Ld218
_$DBCONST$_Ld218:
	.short	0,1
	.long	0,-1,22
.reference _$DBCONST$_Ld217
.globl	_$DBCONST$_Ld217
_$DBCONST$_Ld217:
.reference _$DBCONST$_Ld218
	.ascii	"dbconst.sdeletedrecord\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld220
_$DBCONST$_Ld220:
	.short	0,1
	.long	0,-1,20
.reference _$DBCONST$_Ld219
.globl	_$DBCONST$_Ld219
_$DBCONST$_Ld219:
.reference _$DBCONST$_Ld220
	.ascii	"Index '%s' not found\000"
	.align 2
.globl	_$DBCONST$_Ld222
_$DBCONST$_Ld222:
	.short	0,1
	.long	0,-1,22
.reference _$DBCONST$_Ld221
.globl	_$DBCONST$_Ld221
_$DBCONST$_Ld221:
.reference _$DBCONST$_Ld222
	.ascii	"dbconst.sindexnotfound\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld224
_$DBCONST$_Ld224:
	.short	0,1
	.long	0,-1,38
.reference _$DBCONST$_Ld223
.globl	_$DBCONST$_Ld223
_$DBCONST$_Ld223:
.reference _$DBCONST$_Ld224
	.ascii	"The number of parameters is incorrect.\000"
	.align 2
.globl	_$DBCONST$_Ld226
_$DBCONST$_Ld226:
	.short	0,1
	.long	0,-1,32
.reference _$DBCONST$_Ld225
.globl	_$DBCONST$_Ld225
_$DBCONST$_Ld225:
.reference _$DBCONST$_Ld226
	.ascii	"dbconst.sparametercountincorrect\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld228
_$DBCONST$_Ld228:
	.short	0,1
	.long	0,-1,52
.reference _$DBCONST$_Ld227
.globl	_$DBCONST$_Ld227
_$DBCONST$_Ld227:
.reference _$DBCONST$_Ld228
	.ascii	"Parameters of the type '%s' are not (yet) supported"
	.ascii	".\000"
	.align 2
.globl	_$DBCONST$_Ld230
_$DBCONST$_Ld230:
	.short	0,1
	.long	0,-1,29
.reference _$DBCONST$_Ld229
.globl	_$DBCONST$_Ld229
_$DBCONST$_Ld229:
.reference _$DBCONST$_Ld230
	.ascii	"dbconst.sunsupportedparameter\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld232
_$DBCONST$_Ld232:
	.short	0,1
	.long	0,-1,28
.reference _$DBCONST$_Ld231
.globl	_$DBCONST$_Ld231
_$DBCONST$_Ld231:
.reference _$DBCONST$_Ld232
	.ascii	"Invalid value for field '%s'\000"
	.align 2
.globl	_$DBCONST$_Ld234
_$DBCONST$_Ld234:
	.short	0,1
	.long	0,-1,24
.reference _$DBCONST$_Ld233
.globl	_$DBCONST$_Ld233
_$DBCONST$_Ld233:
.reference _$DBCONST$_Ld234
	.ascii	"dbconst.sfieldvalueerror\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld236
_$DBCONST$_Ld236:
	.short	0,1
	.long	0,-1,49
.reference _$DBCONST$_Ld235
.globl	_$DBCONST$_Ld235
_$DBCONST$_Ld235:
.reference _$DBCONST$_Ld236
	.ascii	"Field '%s' cannot be a calculated or lookup field\000"
	.align 2
.globl	_$DBCONST$_Ld238
_$DBCONST$_Ld238:
	.short	0,1
	.long	0,-1,24
.reference _$DBCONST$_Ld237
.globl	_$DBCONST$_Ld237
_$DBCONST$_Ld237:
.reference _$DBCONST$_Ld238
	.ascii	"dbconst.sinvalidcalctype\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld240
_$DBCONST$_Ld240:
	.short	0,1
	.long	0,-1,25
.reference _$DBCONST$_Ld239
.globl	_$DBCONST$_Ld239
_$DBCONST$_Ld239:
.reference _$DBCONST$_Ld240
	.ascii	"Duplicate name '%s' in %s\000"
	.align 2
.globl	_$DBCONST$_Ld242
_$DBCONST$_Ld242:
	.short	0,1
	.long	0,-1,22
.reference _$DBCONST$_Ld241
.globl	_$DBCONST$_Ld241
_$DBCONST$_Ld241:
.reference _$DBCONST$_Ld242
	.ascii	"dbconst.sduplicatename\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld244
_$DBCONST$_Ld244:
	.short	0,1
	.long	0,-1,39
.reference _$DBCONST$_Ld243
.globl	_$DBCONST$_Ld243
_$DBCONST$_Ld243:
.reference _$DBCONST$_Ld244
	.ascii	"%s is only possible if ParseSQL is True\000"
	.align 2
.globl	_$DBCONST$_Ld246
_$DBCONST$_Ld246:
	.short	0,1
	.long	0,-1,19
.reference _$DBCONST$_Ld245
.globl	_$DBCONST$_Ld245
_$DBCONST$_Ld245:
.reference _$DBCONST$_Ld246
	.ascii	"dbconst.snoparsesql\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld248
_$DBCONST$_Ld248:
	.short	0,1
	.long	0,-1,47
.reference _$DBCONST$_Ld247
.globl	_$DBCONST$_Ld247
_$DBCONST$_Ld247:
.reference _$DBCONST$_Ld248
	.ascii	"Lookup information for field '%s' is incomplete\000"
	.align 2
.globl	_$DBCONST$_Ld250
_$DBCONST$_Ld250:
	.short	0,1
	.long	0,-1,24
.reference _$DBCONST$_Ld249
.globl	_$DBCONST$_Ld249
_$DBCONST$_Ld249:
.reference _$DBCONST$_Ld250
	.ascii	"dbconst.slookupinfoerror\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld252
_$DBCONST$_Ld252:
	.short	0,1
	.long	0,-1,29
.reference _$DBCONST$_Ld251
.globl	_$DBCONST$_Ld251
_$DBCONST$_Ld251:
.reference _$DBCONST$_Ld252
	.ascii	"Fieldtype %s is not supported\000"
	.align 2
.globl	_$DBCONST$_Ld254
_$DBCONST$_Ld254:
	.short	0,1
	.long	0,-1,29
.reference _$DBCONST$_Ld253
.globl	_$DBCONST$_Ld253
_$DBCONST$_Ld253:
.reference _$DBCONST$_Ld254
	.ascii	"dbconst.sunsupportedfieldtype\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld256
_$DBCONST$_Ld256:
	.short	0,1
	.long	0,-1,37
.reference _$DBCONST$_Ld255
.globl	_$DBCONST$_Ld255
_$DBCONST$_Ld255:
.reference _$DBCONST$_Ld256
	.ascii	"PacketRecords has to be larger then 0\000"
	.align 2
.globl	_$DBCONST$_Ld258
_$DBCONST$_Ld258:
	.short	0,1
	.long	0,-1,30
.reference _$DBCONST$_Ld257
.globl	_$DBCONST$_Ld257
_$DBCONST$_Ld257:
.reference _$DBCONST$_Ld258
	.ascii	"dbconst.sinvpacketrecordsvalue\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld260
_$DBCONST$_Ld260:
	.short	0,1
	.long	0,-1,47
.reference _$DBCONST$_Ld259
.globl	_$DBCONST$_Ld259
_$DBCONST$_Ld259:
.reference _$DBCONST$_Ld260
	.ascii	"Searching in fields of type %s is not supported\000"
	.align 2
.globl	_$DBCONST$_Ld262
_$DBCONST$_Ld262:
	.short	0,1
	.long	0,-1,31
.reference _$DBCONST$_Ld261
.globl	_$DBCONST$_Ld261
_$DBCONST$_Ld261:
.reference _$DBCONST$_Ld262
	.ascii	"dbconst.sinvalidsearchfieldtype\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld264
_$DBCONST$_Ld264:
	.short	0,1
	.long	0,-1,20
.reference _$DBCONST$_Ld263
.globl	_$DBCONST$_Ld263
_$DBCONST$_Ld263:
.reference _$DBCONST$_Ld264
	.ascii	"The dataset is empty\000"
	.align 2
.globl	_$DBCONST$_Ld266
_$DBCONST$_Ld266:
	.short	0,1
	.long	0,-1,21
.reference _$DBCONST$_Ld265
.globl	_$DBCONST$_Ld265
_$DBCONST$_Ld265:
.reference _$DBCONST$_Ld266
	.ascii	"dbconst.sdatasetempty\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld268
_$DBCONST$_Ld268:
	.short	0,1
	.long	0,-1,17
.reference _$DBCONST$_Ld267
.globl	_$DBCONST$_Ld267
_$DBCONST$_Ld267:
.reference _$DBCONST$_Ld268
	.ascii	"The field is null\000"
	.align 2
.globl	_$DBCONST$_Ld270
_$DBCONST$_Ld270:
	.short	0,1
	.long	0,-1,20
.reference _$DBCONST$_Ld269
.globl	_$DBCONST$_Ld269
_$DBCONST$_Ld269:
.reference _$DBCONST$_Ld270
	.ascii	"dbconst.sfieldisnull\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld272
_$DBCONST$_Ld272:
	.short	0,1
	.long	0,-1,59
.reference _$DBCONST$_Ld271
.globl	_$DBCONST$_Ld271
_$DBCONST$_Ld271:
.reference _$DBCONST$_Ld272
	.ascii	"An error occured while applying the updates in a re"
	.ascii	"cord: %s\000"
	.align 2
.globl	_$DBCONST$_Ld274
_$DBCONST$_Ld274:
	.short	0,1
	.long	0,-1,22
.reference _$DBCONST$_Ld273
.globl	_$DBCONST$_Ld273
_$DBCONST$_Ld273:
.reference _$DBCONST$_Ld274
	.ascii	"dbconst.sonupdateerror\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld276
_$DBCONST$_Ld276:
	.short	0,1
	.long	0,-1,61
.reference _$DBCONST$_Ld275
.globl	_$DBCONST$_Ld275
_$DBCONST$_Ld275:
.reference _$DBCONST$_Ld276
	.ascii	"Applying updates is not supported by this TDataset "
	.ascii	"descendent\000"
	.align 2
.globl	_$DBCONST$_Ld278
_$DBCONST$_Ld278:
	.short	0,1
	.long	0,-1,29
.reference _$DBCONST$_Ld277
.globl	_$DBCONST$_Ld277
_$DBCONST$_Ld277:
.reference _$DBCONST$_Ld278
	.ascii	"dbconst.sapplyrecnotsupported\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld280
_$DBCONST$_Ld280:
	.short	0,1
	.long	0,-1,100
.reference _$DBCONST$_Ld279
.globl	_$DBCONST$_Ld279
_$DBCONST$_Ld279:
.reference _$DBCONST$_Ld280
	.ascii	"No %s query specified and failed to generate one. ("
	.ascii	"No fields for inclusion in where statement found)\000"
	.align 2
.globl	_$DBCONST$_Ld282
_$DBCONST$_Ld282:
	.short	0,1
	.long	0,-1,22
.reference _$DBCONST$_Ld281
.globl	_$DBCONST$_Ld281
_$DBCONST$_Ld281:
.reference _$DBCONST$_Ld282
	.ascii	"dbconst.snowherefields\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld284
_$DBCONST$_Ld284:
	.short	0,1
	.long	0,-1,105
.reference _$DBCONST$_Ld283
.globl	_$DBCONST$_Ld283
_$DBCONST$_Ld283:
.reference _$DBCONST$_Ld284
	.ascii	"No %s query specified and failed to generate one. ("
	.ascii	"No fields found for insert- or update-statement fou"
	.ascii	"nd)\000"
	.align 2
.globl	_$DBCONST$_Ld286
_$DBCONST$_Ld286:
	.short	0,1
	.long	0,-1,23
.reference _$DBCONST$_Ld285
.globl	_$DBCONST$_Ld285
_$DBCONST$_Ld285:
.reference _$DBCONST$_Ld286
	.ascii	"dbconst.snoupdatefields\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld288
_$DBCONST$_Ld288:
	.short	0,1
	.long	0,-1,51
.reference _$DBCONST$_Ld287
.globl	_$DBCONST$_Ld287
_$DBCONST$_Ld287:
.reference _$DBCONST$_Ld288
	.ascii	"Operation is not supported by this type of database"
	.ascii	"\000"
	.align 2
.globl	_$DBCONST$_Ld290
_$DBCONST$_Ld290:
	.short	0,1
	.long	0,-1,21
.reference _$DBCONST$_Ld289
.globl	_$DBCONST$_Ld289
_$DBCONST$_Ld289:
.reference _$DBCONST$_Ld290
	.ascii	"dbconst.snotsupported\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld292
_$DBCONST$_Ld292:
	.short	0,1
	.long	0,-1,39
.reference _$DBCONST$_Ld291
.globl	_$DBCONST$_Ld291
_$DBCONST$_Ld291:
.reference _$DBCONST$_Ld292
	.ascii	"Creation or dropping of database failed\000"
	.align 2
.globl	_$DBCONST$_Ld294
_$DBCONST$_Ld294:
	.short	0,1
	.long	0,-1,27
.reference _$DBCONST$_Ld293
.globl	_$DBCONST$_Ld293
_$DBCONST$_Ld293:
.reference _$DBCONST$_Ld294
	.ascii	"dbconst.sdbcreatedropfailed\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld296
_$DBCONST$_Ld296:
	.short	0,1
	.long	0,-1,40
.reference _$DBCONST$_Ld295
.globl	_$DBCONST$_Ld295
_$DBCONST$_Ld295:
.reference _$DBCONST$_Ld296
	.ascii	"The maximum amount of indexes is reached\000"
	.align 2
.globl	_$DBCONST$_Ld298
_$DBCONST$_Ld298:
	.short	0,1
	.long	0,-1,19
.reference _$DBCONST$_Ld297
.globl	_$DBCONST$_Ld297
_$DBCONST$_Ld297:
.reference _$DBCONST$_Ld298
	.ascii	"dbconst.smaxindexes\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld300
_$DBCONST$_Ld300:
	.short	0,1
	.long	0,-1,34
.reference _$DBCONST$_Ld299
.globl	_$DBCONST$_Ld299
_$DBCONST$_Ld299:
.reference _$DBCONST$_Ld300
	.ascii	"The minimum amount of indexes is 1\000"
	.align 2
.globl	_$DBCONST$_Ld302
_$DBCONST$_Ld302:
	.short	0,1
	.long	0,-1,19
.reference _$DBCONST$_Ld301
.globl	_$DBCONST$_Ld301
_$DBCONST$_Ld301:
.reference _$DBCONST$_Ld302
	.ascii	"dbconst.sminindexes\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld304
_$DBCONST$_Ld304:
	.short	0,1
	.long	0,-1,39
.reference _$DBCONST$_Ld303
.globl	_$DBCONST$_Ld303
_$DBCONST$_Ld303:
.reference _$DBCONST$_Ld304
	.ascii	"More fields specified then really exist\000"
	.align 2
.globl	_$DBCONST$_Ld306
_$DBCONST$_Ld306:
	.short	0,1
	.long	0,-1,22
.reference _$DBCONST$_Ld305
.globl	_$DBCONST$_Ld305
_$DBCONST$_Ld305:
.reference _$DBCONST$_Ld306
	.ascii	"dbconst.stoomanyfields\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld308
_$DBCONST$_Ld308:
	.short	0,1
	.long	0,-1,24
.reference _$DBCONST$_Ld307
.globl	_$DBCONST$_Ld307
_$DBCONST$_Ld307:
.reference _$DBCONST$_Ld308
	.ascii	"Field index out of range\000"
	.align 2
.globl	_$DBCONST$_Ld310
_$DBCONST$_Ld310:
	.short	0,1
	.long	0,-1,24
.reference _$DBCONST$_Ld309
.globl	_$DBCONST$_Ld309
_$DBCONST$_Ld309:
.reference _$DBCONST$_Ld310
	.ascii	"dbconst.sfieldindexerror\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld312
_$DBCONST$_Ld312:
	.short	0,1
	.long	0,-1,30
.reference _$DBCONST$_Ld311
.globl	_$DBCONST$_Ld311
_$DBCONST$_Ld311:
.reference _$DBCONST$_Ld312
	.ascii	"Cannot access index field '%s'\000"
	.align 2
.globl	_$DBCONST$_Ld314
_$DBCONST$_Ld314:
	.short	0,1
	.long	0,-1,26
.reference _$DBCONST$_Ld313
.globl	_$DBCONST$_Ld313
_$DBCONST$_Ld313:
.reference _$DBCONST$_Ld314
	.ascii	"dbconst.sindexfieldmissing\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld316
_$DBCONST$_Ld316:
	.short	0,1
	.long	0,-1,25
.reference _$DBCONST$_Ld315
.globl	_$DBCONST$_Ld315
_$DBCONST$_Ld315:
.reference _$DBCONST$_Ld316
	.ascii	"No index currently active\000"
	.align 2
.globl	_$DBCONST$_Ld318
_$DBCONST$_Ld318:
	.short	0,1
	.long	0,-1,23
.reference _$DBCONST$_Ld317
.globl	_$DBCONST$_Ld317
_$DBCONST$_Ld317:
.reference _$DBCONST$_Ld318
	.ascii	"dbconst.snofieldindexes\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld320
_$DBCONST$_Ld320:
	.short	0,1
	.long	0,-1,48
.reference _$DBCONST$_Ld319
.globl	_$DBCONST$_Ld319
_$DBCONST$_Ld319:
.reference _$DBCONST$_Ld320
	.ascii	"Field '%s' is not indexed and cannot be modified\000"
	.align 2
.globl	_$DBCONST$_Ld322
_$DBCONST$_Ld322:
	.short	0,1
	.long	0,-1,22
.reference _$DBCONST$_Ld321
.globl	_$DBCONST$_Ld321
_$DBCONST$_Ld321:
.reference _$DBCONST$_Ld322
	.ascii	"dbconst.snotindexfield\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld324
_$DBCONST$_Ld324:
	.short	0,1
	.long	0,-1,22
.reference _$DBCONST$_Ld323
.globl	_$DBCONST$_Ld323
_$DBCONST$_Ld323:
.reference _$DBCONST$_Ld324
	.ascii	"Unknown connector type\000"
	.align 2
.globl	_$DBCONST$_Ld326
_$DBCONST$_Ld326:
	.short	0,1
	.long	0,-1,32
.reference _$DBCONST$_Ld325
.globl	_$DBCONST$_Ld325
_$DBCONST$_Ld325:
.reference _$DBCONST$_Ld326
	.ascii	"dbconst.serrunknownconnectortype\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld328
_$DBCONST$_Ld328:
	.short	0,1
	.long	0,-1,49
.reference _$DBCONST$_Ld327
.globl	_$DBCONST$_Ld327
_$DBCONST$_Ld327:
.reference _$DBCONST$_Ld328
	.ascii	"There are no fields selected to base the index on\000"
	.align 2
.globl	_$DBCONST$_Ld330
_$DBCONST$_Ld330:
	.short	0,1
	.long	0,-1,30
.reference _$DBCONST$_Ld329
.globl	_$DBCONST$_Ld329
_$DBCONST$_Ld329:
.reference _$DBCONST$_Ld330
	.ascii	"dbconst.snoindexfieldnamegiven\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld332
_$DBCONST$_Ld332:
	.short	0,1
	.long	0,-1,40
.reference _$DBCONST$_Ld331
.globl	_$DBCONST$_Ld331
_$DBCONST$_Ld331:
.reference _$DBCONST$_Ld332
	.ascii	"The data-stream format is not recognized\000"
	.align 2
.globl	_$DBCONST$_Ld334
_$DBCONST$_Ld334:
	.short	0,1
	.long	0,-1,28
.reference _$DBCONST$_Ld333
.globl	_$DBCONST$_Ld333
_$DBCONST$_Ld333:
.reference _$DBCONST$_Ld334
	.ascii	"dbconst.sstreamnotrecognised\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld336
_$DBCONST$_Ld336:
	.short	0,1
	.long	0,-1,74
.reference _$DBCONST$_Ld335
.globl	_$DBCONST$_Ld335
_$DBCONST$_Ld335:
.reference _$DBCONST$_Ld336
	.ascii	"There is no TDatapacketReaderClass registered for t"
	.ascii	"his kind of data-stream\000"
	.align 2
.globl	_$DBCONST$_Ld338
_$DBCONST$_Ld338:
	.short	0,1
	.long	0,-1,32
.reference _$DBCONST$_Ld337
.globl	_$DBCONST$_Ld337
_$DBCONST$_Ld337:
.reference _$DBCONST$_Ld338
	.ascii	"dbconst.snoreaderclassregistered\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld340
_$DBCONST$_Ld340:
	.short	0,1
	.long	0,-1,47
.reference _$DBCONST$_Ld339
.globl	_$DBCONST$_Ld339
_$DBCONST$_Ld339:
.reference _$DBCONST$_Ld340
	.ascii	"Circular datasource references are not allowed.\000"
	.align 2
.globl	_$DBCONST$_Ld342
_$DBCONST$_Ld342:
	.short	0,1
	.long	0,-1,49
.reference _$DBCONST$_Ld341
.globl	_$DBCONST$_Ld341
_$DBCONST$_Ld341:
.reference _$DBCONST$_Ld342
	.ascii	"dbconst.serrcirculardatasourcereferencenotallowed\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld344
_$DBCONST$_Ld344:
	.short	0,1
	.long	0,-1,22
.reference _$DBCONST$_Ld343
.globl	_$DBCONST$_Ld343
_$DBCONST$_Ld343:
.reference _$DBCONST$_Ld344
	.ascii	"Committing transaction\000"
	.align 2
.globl	_$DBCONST$_Ld346
_$DBCONST$_Ld346:
	.short	0,1
	.long	0,-1,19
.reference _$DBCONST$_Ld345
.globl	_$DBCONST$_Ld345
_$DBCONST$_Ld345:
.reference _$DBCONST$_Ld346
	.ascii	"dbconst.scommitting\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld348
_$DBCONST$_Ld348:
	.short	0,1
	.long	0,-1,24
.reference _$DBCONST$_Ld347
.globl	_$DBCONST$_Ld347
_$DBCONST$_Ld347:
.reference _$DBCONST$_Ld348
	.ascii	"Rolling back transaction\000"
	.align 2
.globl	_$DBCONST$_Ld350
_$DBCONST$_Ld350:
	.short	0,1
	.long	0,-1,20
.reference _$DBCONST$_Ld349
.globl	_$DBCONST$_Ld349
_$DBCONST$_Ld349:
.reference _$DBCONST$_Ld350
	.ascii	"dbconst.srollingback\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld352
_$DBCONST$_Ld352:
	.short	0,1
	.long	0,-1,32
.reference _$DBCONST$_Ld351
.globl	_$DBCONST$_Ld351
_$DBCONST$_Ld351:
.reference _$DBCONST$_Ld352
	.ascii	"Commit and retaining transaction\000"
	.align 2
.globl	_$DBCONST$_Ld354
_$DBCONST$_Ld354:
	.short	0,1
	.long	0,-1,24
.reference _$DBCONST$_Ld353
.globl	_$DBCONST$_Ld353
_$DBCONST$_Ld353:
.reference _$DBCONST$_Ld354
	.ascii	"dbconst.scommitretaining\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld356
_$DBCONST$_Ld356:
	.short	0,1
	.long	0,-1,34
.reference _$DBCONST$_Ld355
.globl	_$DBCONST$_Ld355
_$DBCONST$_Ld355:
.reference _$DBCONST$_Ld356
	.ascii	"Rollback and retaining transaction\000"
	.align 2
.globl	_$DBCONST$_Ld358
_$DBCONST$_Ld358:
	.short	0,1
	.long	0,-1,26
.reference _$DBCONST$_Ld357
.globl	_$DBCONST$_Ld357
_$DBCONST$_Ld357:
.reference _$DBCONST$_Ld358
	.ascii	"dbconst.srollbackretaining\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld360
_$DBCONST$_Ld360:
	.short	0,1
	.long	0,-1,77
.reference _$DBCONST$_Ld359
.globl	_$DBCONST$_Ld359
_$DBCONST$_Ld359:
.reference _$DBCONST$_Ld360
	.ascii	"Can not create a dataset when there are no fielddef"
	.ascii	"initions or fields defined\000"
	.align 2
.globl	_$DBCONST$_Ld362
_$DBCONST$_Ld362:
	.short	0,1
	.long	0,-1,27
.reference _$DBCONST$_Ld361
.globl	_$DBCONST$_Ld361
_$DBCONST$_Ld361:
.reference _$DBCONST$_Ld362
	.ascii	"dbconst.serrnofieldsdefined\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld364
_$DBCONST$_Ld364:
	.short	0,1
	.long	0,-1,41
.reference _$DBCONST$_Ld363
.globl	_$DBCONST$_Ld363
_$DBCONST$_Ld363:
.reference _$DBCONST$_Ld364
	.ascii	"Must apply updates before refreshing data\000"
	.align 2
.globl	_$DBCONST$_Ld366
_$DBCONST$_Ld366:
	.short	0,1
	.long	0,-1,33
.reference _$DBCONST$_Ld365
.globl	_$DBCONST$_Ld365
_$DBCONST$_Ld365:
.reference _$DBCONST$_Ld366
	.ascii	"dbconst.serrapplyupdbeforerefresh\000"

.const_data
	.align 2
.globl	_$DBCONST$_Ld368
_$DBCONST$_Ld368:
	.short	0,1
	.long	0,-1,53
.reference _$DBCONST$_Ld367
.globl	_$DBCONST$_Ld367
_$DBCONST$_Ld367:
.reference _$DBCONST$_Ld368
	.ascii	"Missing (compatible) underlying dataset, can not op"
	.ascii	"en\000"
	.align 2
.globl	_$DBCONST$_Ld370
_$DBCONST$_Ld370:
	.short	0,1
	.long	0,-1,21
.reference _$DBCONST$_Ld369
.globl	_$DBCONST$_Ld369
_$DBCONST$_Ld369:
.reference _$DBCONST$_Ld370
	.ascii	"dbconst.serrnodataset\000"
# End asmlist al_const
# Begin asmlist al_typedconsts
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports
# End asmlist al_imports
# Begin asmlist al_exports
# End asmlist al_exports
# Begin asmlist al_resources
# End asmlist al_resources
# Begin asmlist al_rtti
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

.data
	.align 2
.globl	_RESSTR_DBCONST_START
_RESSTR_DBCONST_START:
	.long	_$DBCONST$_Ld1
	.long	0,0,0

.data
	.align 2
.globl	_RESSTR_DBCONST_SACTIVEDATASET
_RESSTR_DBCONST_SACTIVEDATASET:
	.long	_$DBCONST$_Ld5
	.long	_$DBCONST$_Ld3
	.long	_$DBCONST$_Ld3
	.long	264491284

.data
	.align 2
.globl	_RESSTR_DBCONST_SBADPARAMFIELDTYPE
_RESSTR_DBCONST_SBADPARAMFIELDTYPE:
	.long	_$DBCONST$_Ld9
	.long	_$DBCONST$_Ld7
	.long	_$DBCONST$_Ld7
	.long	254782014

.data
	.align 2
.globl	_RESSTR_DBCONST_SCANTSETAUTOINCFIELDS
_RESSTR_DBCONST_SCANTSETAUTOINCFIELDS:
	.long	_$DBCONST$_Ld13
	.long	_$DBCONST$_Ld11
	.long	_$DBCONST$_Ld11
	.long	70734489

.data
	.align 2
.globl	_RESSTR_DBCONST_SCONNECTED
_RESSTR_DBCONST_SCONNECTED:
	.long	_$DBCONST$_Ld17
	.long	_$DBCONST$_Ld15
	.long	_$DBCONST$_Ld15
	.long	224854805

.data
	.align 2
.globl	_RESSTR_DBCONST_SDATASETREADONLY
_RESSTR_DBCONST_SDATASETREADONLY:
	.long	_$DBCONST$_Ld21
	.long	_$DBCONST$_Ld19
	.long	_$DBCONST$_Ld19
	.long	234640446

.data
	.align 2
.globl	_RESSTR_DBCONST_SDATASETREGISTERED
_RESSTR_DBCONST_SDATASETREGISTERED:
	.long	_$DBCONST$_Ld25
	.long	_$DBCONST$_Ld23
	.long	_$DBCONST$_Ld23
	.long	212287586

.data
	.align 2
.globl	_RESSTR_DBCONST_SDUPLICATEFIELDNAME
_RESSTR_DBCONST_SDUPLICATEFIELDNAME:
	.long	_$DBCONST$_Ld29
	.long	_$DBCONST$_Ld27
	.long	_$DBCONST$_Ld27
	.long	124919218

.data
	.align 2
.globl	_RESSTR_DBCONST_SERRASSTRANSACTION
_RESSTR_DBCONST_SERRASSTRANSACTION:
	.long	_$DBCONST$_Ld33
	.long	_$DBCONST$_Ld31
	.long	_$DBCONST$_Ld31
	.long	128335137

.data
	.align 2
.globl	_RESSTR_DBCONST_SERRCOLUMNNOTFOUND
_RESSTR_DBCONST_SERRCOLUMNNOTFOUND:
	.long	_$DBCONST$_Ld37
	.long	_$DBCONST$_Ld35
	.long	_$DBCONST$_Ld35
	.long	265646334

.data
	.align 2
.globl	_RESSTR_DBCONST_SERRDATABASENASSIGNED
_RESSTR_DBCONST_SERRDATABASENASSIGNED:
	.long	_$DBCONST$_Ld41
	.long	_$DBCONST$_Ld39
	.long	_$DBCONST$_Ld39
	.long	219683857

.data
	.align 2
.globl	_RESSTR_DBCONST_SERRNODATABASEAVAILABLE
_RESSTR_DBCONST_SERRNODATABASEAVAILABLE:
	.long	_$DBCONST$_Ld45
	.long	_$DBCONST$_Ld43
	.long	_$DBCONST$_Ld43
	.long	248097253

.data
	.align 2
.globl	_RESSTR_DBCONST_SERRNODATABASENAME
_RESSTR_DBCONST_SERRNODATABASENAME:
	.long	_$DBCONST$_Ld49
	.long	_$DBCONST$_Ld47
	.long	_$DBCONST$_Ld47
	.long	92269489

.data
	.align 2
.globl	_RESSTR_DBCONST_SERRNOSELECTSTATEMENT
_RESSTR_DBCONST_SERRNOSELECTSTATEMENT:
	.long	_$DBCONST$_Ld53
	.long	_$DBCONST$_Ld51
	.long	_$DBCONST$_Ld51
	.long	142467924

.data
	.align 2
.globl	_RESSTR_DBCONST_SERRNOSTATEMENT
_RESSTR_DBCONST_SERRNOSTATEMENT:
	.long	_$DBCONST$_Ld57
	.long	_$DBCONST$_Ld55
	.long	_$DBCONST$_Ld55
	.long	52748132

.data
	.align 2
.globl	_RESSTR_DBCONST_SERRTRANSALREADYACTIVE
_RESSTR_DBCONST_SERRTRANSALREADYACTIVE:
	.long	_$DBCONST$_Ld61
	.long	_$DBCONST$_Ld59
	.long	_$DBCONST$_Ld59
	.long	124804869

.data
	.align 2
.globl	_RESSTR_DBCONST_SERRTRANSACTIONNSET
_RESSTR_DBCONST_SERRTRANSACTIONNSET:
	.long	_$DBCONST$_Ld65
	.long	_$DBCONST$_Ld63
	.long	_$DBCONST$_Ld63
	.long	105799828

.data
	.align 2
.globl	_RESSTR_DBCONST_SERRINDEXRESULTTOOLONG
_RESSTR_DBCONST_SERRINDEXRESULTTOOLONG:
	.long	_$DBCONST$_Ld69
	.long	_$DBCONST$_Ld67
	.long	_$DBCONST$_Ld67
	.long	143381534

.data
	.align 2
.globl	_RESSTR_DBCONST_SERRINDEXBASEDONINVFIELD
_RESSTR_DBCONST_SERRINDEXBASEDONINVFIELD:
	.long	_$DBCONST$_Ld73
	.long	_$DBCONST$_Ld71
	.long	_$DBCONST$_Ld71
	.long	91530510

.data
	.align 2
.globl	_RESSTR_DBCONST_SERRINDEXBASEDONUNKFIELD
_RESSTR_DBCONST_SERRINDEXBASEDONUNKFIELD:
	.long	_$DBCONST$_Ld77
	.long	_$DBCONST$_Ld75
	.long	_$DBCONST$_Ld75
	.long	198215630

.data
	.align 2
.globl	_RESSTR_DBCONST_SERRCONNTRANSACTIONNSET
_RESSTR_DBCONST_SERRCONNTRANSACTIONNSET:
	.long	_$DBCONST$_Ld81
	.long	_$DBCONST$_Ld79
	.long	_$DBCONST$_Ld79
	.long	22411588

.data
	.align 2
.globl	_RESSTR_DBCONST_SERRNOTASQLCONNECTION
_RESSTR_DBCONST_SERRNOTASQLCONNECTION:
	.long	_$DBCONST$_Ld85
	.long	_$DBCONST$_Ld83
	.long	_$DBCONST$_Ld83
	.long	250504030

.data
	.align 2
.globl	_RESSTR_DBCONST_SERRNOTASQLQUERY
_RESSTR_DBCONST_SERRNOTASQLQUERY:
	.long	_$DBCONST$_Ld89
	.long	_$DBCONST$_Ld87
	.long	_$DBCONST$_Ld87
	.long	166818969

.data
	.align 2
.globl	_RESSTR_DBCONST_STRANSNOTACTIVE
_RESSTR_DBCONST_STRANSNOTACTIVE:
	.long	_$DBCONST$_Ld93
	.long	_$DBCONST$_Ld91
	.long	_$DBCONST$_Ld91
	.long	98723726

.data
	.align 2
.globl	_RESSTR_DBCONST_STRANSACTIVE
_RESSTR_DBCONST_STRANSACTIVE:
	.long	_$DBCONST$_Ld97
	.long	_$DBCONST$_Ld95
	.long	_$DBCONST$_Ld95
	.long	28598622

.data
	.align 2
.globl	_RESSTR_DBCONST_SFIELDNOTFOUND
_RESSTR_DBCONST_SFIELDNOTFOUND:
	.long	_$DBCONST$_Ld101
	.long	_$DBCONST$_Ld99
	.long	_$DBCONST$_Ld99
	.long	125268370

.data
	.align 2
.globl	_RESSTR_DBCONST_SINACTIVEDATASET
_RESSTR_DBCONST_SINACTIVEDATASET:
	.long	_$DBCONST$_Ld105
	.long	_$DBCONST$_Ld103
	.long	_$DBCONST$_Ld103
	.long	163906884

.data
	.align 2
.globl	_RESSTR_DBCONST_SINVALIDDISPLAYVALUES
_RESSTR_DBCONST_SINVALIDDISPLAYVALUES:
	.long	_$DBCONST$_Ld109
	.long	_$DBCONST$_Ld107
	.long	_$DBCONST$_Ld107
	.long	236841235

.data
	.align 2
.globl	_RESSTR_DBCONST_SINVALIDFIELDKIND
_RESSTR_DBCONST_SINVALIDFIELDKIND:
	.long	_$DBCONST$_Ld113
	.long	_$DBCONST$_Ld111
	.long	_$DBCONST$_Ld111
	.long	73588064

.data
	.align 2
.globl	_RESSTR_DBCONST_SINVALIDBOOKMARK
_RESSTR_DBCONST_SINVALIDBOOKMARK:
	.long	_$DBCONST$_Ld117
	.long	_$DBCONST$_Ld115
	.long	_$DBCONST$_Ld115
	.long	244079579

.data
	.align 2
.globl	_RESSTR_DBCONST_SINVALIDFIELDSIZE
_RESSTR_DBCONST_SINVALIDFIELDSIZE:
	.long	_$DBCONST$_Ld121
	.long	_$DBCONST$_Ld119
	.long	_$DBCONST$_Ld119
	.long	183732276

.data
	.align 2
.globl	_RESSTR_DBCONST_SINVALIDTYPECONVERSION
_RESSTR_DBCONST_SINVALIDTYPECONVERSION:
	.long	_$DBCONST$_Ld125
	.long	_$DBCONST$_Ld123
	.long	_$DBCONST$_Ld123
	.long	47064147

.data
	.align 2
.globl	_RESSTR_DBCONST_SNEEDFIELD
_RESSTR_DBCONST_SNEEDFIELD:
	.long	_$DBCONST$_Ld129
	.long	_$DBCONST$_Ld127
	.long	_$DBCONST$_Ld127
	.long	232707294

.data
	.align 2
.globl	_RESSTR_DBCONST_SNEEDFIELDNAME
_RESSTR_DBCONST_SNEEDFIELDNAME:
	.long	_$DBCONST$_Ld133
	.long	_$DBCONST$_Ld131
	.long	_$DBCONST$_Ld131
	.long	95633157

.data
	.align 2
.globl	_RESSTR_DBCONST_SNODATASET
_RESSTR_DBCONST_SNODATASET:
	.long	_$DBCONST$_Ld137
	.long	_$DBCONST$_Ld135
	.long	_$DBCONST$_Ld135
	.long	155946050

.data
	.align 2
.globl	_RESSTR_DBCONST_SNODATASETREGISTERED
_RESSTR_DBCONST_SNODATASETREGISTERED:
	.long	_$DBCONST$_Ld141
	.long	_$DBCONST$_Ld139
	.long	_$DBCONST$_Ld139
	.long	37174146

.data
	.align 2
.globl	_RESSTR_DBCONST_SNODATASETS
_RESSTR_DBCONST_SNODATASETS:
	.long	_$DBCONST$_Ld145
	.long	_$DBCONST$_Ld143
	.long	_$DBCONST$_Ld143
	.long	116224101

.data
	.align 2
.globl	_RESSTR_DBCONST_SNOSUCHRECORD
_RESSTR_DBCONST_SNOSUCHRECORD:
	.long	_$DBCONST$_Ld149
	.long	_$DBCONST$_Ld147
	.long	_$DBCONST$_Ld147
	.long	249481454

.data
	.align 2
.globl	_RESSTR_DBCONST_SNOTRANSACTIONREGISTERED
_RESSTR_DBCONST_SNOTRANSACTIONREGISTERED:
	.long	_$DBCONST$_Ld153
	.long	_$DBCONST$_Ld151
	.long	_$DBCONST$_Ld151
	.long	251721954

.data
	.align 2
.globl	_RESSTR_DBCONST_SNOTRANSACTIONS
_RESSTR_DBCONST_SNOTRANSACTIONS:
	.long	_$DBCONST$_Ld157
	.long	_$DBCONST$_Ld155
	.long	_$DBCONST$_Ld155
	.long	174294949

.data
	.align 2
.globl	_RESSTR_DBCONST_SNOTABOOLEAN
_RESSTR_DBCONST_SNOTABOOLEAN:
	.long	_$DBCONST$_Ld161
	.long	_$DBCONST$_Ld159
	.long	_$DBCONST$_Ld159
	.long	122134494

.data
	.align 2
.globl	_RESSTR_DBCONST_SNOTAFLOAT
_RESSTR_DBCONST_SNOTAFLOAT:
	.long	_$DBCONST$_Ld165
	.long	_$DBCONST$_Ld163
	.long	_$DBCONST$_Ld163
	.long	77813300

.data
	.align 2
.globl	_RESSTR_DBCONST_SNOTANINTEGER
_RESSTR_DBCONST_SNOTANINTEGER:
	.long	_$DBCONST$_Ld169
	.long	_$DBCONST$_Ld167
	.long	_$DBCONST$_Ld167
	.long	37292386

.data
	.align 2
.globl	_RESSTR_DBCONST_SNOTCONNECTED
_RESSTR_DBCONST_SNOTCONNECTED:
	.long	_$DBCONST$_Ld173
	.long	_$DBCONST$_Ld171
	.long	_$DBCONST$_Ld171
	.long	34680181

.data
	.align 2
.globl	_RESSTR_DBCONST_SNOTEDITING
_RESSTR_DBCONST_SNOTEDITING:
	.long	_$DBCONST$_Ld177
	.long	_$DBCONST$_Ld175
	.long	_$DBCONST$_Ld175
	.long	76845630

.data
	.align 2
.globl	_RESSTR_DBCONST_SPARAMETERNOTFOUND
_RESSTR_DBCONST_SPARAMETERNOTFOUND:
	.long	_$DBCONST$_Ld181
	.long	_$DBCONST$_Ld179
	.long	_$DBCONST$_Ld179
	.long	66966868

.data
	.align 2
.globl	_RESSTR_DBCONST_SRANGEERROR
_RESSTR_DBCONST_SRANGEERROR:
	.long	_$DBCONST$_Ld185
	.long	_$DBCONST$_Ld183
	.long	_$DBCONST$_Ld183
	.long	208167555

.data
	.align 2
.globl	_RESSTR_DBCONST_SREADONLYFIELD
_RESSTR_DBCONST_SREADONLYFIELD:
	.long	_$DBCONST$_Ld189
	.long	_$DBCONST$_Ld187
	.long	_$DBCONST$_Ld187
	.long	185029678

.data
	.align 2
.globl	_RESSTR_DBCONST_STRANSACTIONREGISTERED
_RESSTR_DBCONST_STRANSACTIONREGISTERED:
	.long	_$DBCONST$_Ld193
	.long	_$DBCONST$_Ld191
	.long	_$DBCONST$_Ld191
	.long	84333506

.data
	.align 2
.globl	_RESSTR_DBCONST_SUNIDIRECTIONAL
_RESSTR_DBCONST_SUNIDIRECTIONAL:
	.long	_$DBCONST$_Ld197
	.long	_$DBCONST$_Ld195
	.long	_$DBCONST$_Ld195
	.long	106481252

.data
	.align 2
.globl	_RESSTR_DBCONST_SUNKNOWNFIELD
_RESSTR_DBCONST_SUNKNOWNFIELD:
	.long	_$DBCONST$_Ld201
	.long	_$DBCONST$_Ld199
	.long	_$DBCONST$_Ld199
	.long	214728642

.data
	.align 2
.globl	_RESSTR_DBCONST_SUNKNOWNFIELDTYPE
_RESSTR_DBCONST_SUNKNOWNFIELDTYPE:
	.long	_$DBCONST$_Ld205
	.long	_$DBCONST$_Ld203
	.long	_$DBCONST$_Ld203
	.long	147424355

.data
	.align 2
.globl	_RESSTR_DBCONST_SUNKNOWNPARAMFIELDTYPE
_RESSTR_DBCONST_SUNKNOWNPARAMFIELDTYPE:
	.long	_$DBCONST$_Ld209
	.long	_$DBCONST$_Ld207
	.long	_$DBCONST$_Ld207
	.long	12431582

.data
	.align 2
.globl	_RESSTR_DBCONST_SMETADATAUNAVAILABLE
_RESSTR_DBCONST_SMETADATAUNAVAILABLE:
	.long	_$DBCONST$_Ld213
	.long	_$DBCONST$_Ld211
	.long	_$DBCONST$_Ld211
	.long	76131214

.data
	.align 2
.globl	_RESSTR_DBCONST_SDELETEDRECORD
_RESSTR_DBCONST_SDELETEDRECORD:
	.long	_$DBCONST$_Ld217
	.long	_$DBCONST$_Ld215
	.long	_$DBCONST$_Ld215
	.long	198358334

.data
	.align 2
.globl	_RESSTR_DBCONST_SINDEXNOTFOUND
_RESSTR_DBCONST_SINDEXNOTFOUND:
	.long	_$DBCONST$_Ld221
	.long	_$DBCONST$_Ld219
	.long	_$DBCONST$_Ld219
	.long	245022900

.data
	.align 2
.globl	_RESSTR_DBCONST_SPARAMETERCOUNTINCORRECT
_RESSTR_DBCONST_SPARAMETERCOUNTINCORRECT:
	.long	_$DBCONST$_Ld225
	.long	_$DBCONST$_Ld223
	.long	_$DBCONST$_Ld223
	.long	196675006

.data
	.align 2
.globl	_RESSTR_DBCONST_SUNSUPPORTEDPARAMETER
_RESSTR_DBCONST_SUNSUPPORTEDPARAMETER:
	.long	_$DBCONST$_Ld229
	.long	_$DBCONST$_Ld227
	.long	_$DBCONST$_Ld227
	.long	83970510

.data
	.align 2
.globl	_RESSTR_DBCONST_SFIELDVALUEERROR
_RESSTR_DBCONST_SFIELDVALUEERROR:
	.long	_$DBCONST$_Ld233
	.long	_$DBCONST$_Ld231
	.long	_$DBCONST$_Ld231
	.long	70600503

.data
	.align 2
.globl	_RESSTR_DBCONST_SINVALIDCALCTYPE
_RESSTR_DBCONST_SINVALIDCALCTYPE:
	.long	_$DBCONST$_Ld237
	.long	_$DBCONST$_Ld235
	.long	_$DBCONST$_Ld235
	.long	4107812

.data
	.align 2
.globl	_RESSTR_DBCONST_SDUPLICATENAME
_RESSTR_DBCONST_SDUPLICATENAME:
	.long	_$DBCONST$_Ld241
	.long	_$DBCONST$_Ld239
	.long	_$DBCONST$_Ld239
	.long	159302947

.data
	.align 2
.globl	_RESSTR_DBCONST_SNOPARSESQL
_RESSTR_DBCONST_SNOPARSESQL:
	.long	_$DBCONST$_Ld245
	.long	_$DBCONST$_Ld243
	.long	_$DBCONST$_Ld243
	.long	187950229

.data
	.align 2
.globl	_RESSTR_DBCONST_SLOOKUPINFOERROR
_RESSTR_DBCONST_SLOOKUPINFOERROR:
	.long	_$DBCONST$_Ld249
	.long	_$DBCONST$_Ld247
	.long	_$DBCONST$_Ld247
	.long	255930021

.data
	.align 2
.globl	_RESSTR_DBCONST_SUNSUPPORTEDFIELDTYPE
_RESSTR_DBCONST_SUNSUPPORTEDFIELDTYPE:
	.long	_$DBCONST$_Ld253
	.long	_$DBCONST$_Ld251
	.long	_$DBCONST$_Ld251
	.long	40599044

.data
	.align 2
.globl	_RESSTR_DBCONST_SINVPACKETRECORDSVALUE
_RESSTR_DBCONST_SINVPACKETRECORDSVALUE:
	.long	_$DBCONST$_Ld257
	.long	_$DBCONST$_Ld255
	.long	_$DBCONST$_Ld255
	.long	127543808

.data
	.align 2
.globl	_RESSTR_DBCONST_SINVALIDSEARCHFIELDTYPE
_RESSTR_DBCONST_SINVALIDSEARCHFIELDTYPE:
	.long	_$DBCONST$_Ld261
	.long	_$DBCONST$_Ld259
	.long	_$DBCONST$_Ld259
	.long	212068804

.data
	.align 2
.globl	_RESSTR_DBCONST_SDATASETEMPTY
_RESSTR_DBCONST_SDATASETEMPTY:
	.long	_$DBCONST$_Ld265
	.long	_$DBCONST$_Ld263
	.long	_$DBCONST$_Ld263
	.long	58887097

.data
	.align 2
.globl	_RESSTR_DBCONST_SFIELDISNULL
_RESSTR_DBCONST_SFIELDISNULL:
	.long	_$DBCONST$_Ld269
	.long	_$DBCONST$_Ld267
	.long	_$DBCONST$_Ld267
	.long	217422652

.data
	.align 2
.globl	_RESSTR_DBCONST_SONUPDATEERROR
_RESSTR_DBCONST_SONUPDATEERROR:
	.long	_$DBCONST$_Ld273
	.long	_$DBCONST$_Ld271
	.long	_$DBCONST$_Ld271
	.long	40569939

.data
	.align 2
.globl	_RESSTR_DBCONST_SAPPLYRECNOTSUPPORTED
_RESSTR_DBCONST_SAPPLYRECNOTSUPPORTED:
	.long	_$DBCONST$_Ld277
	.long	_$DBCONST$_Ld275
	.long	_$DBCONST$_Ld275
	.long	195888180

.data
	.align 2
.globl	_RESSTR_DBCONST_SNOWHEREFIELDS
_RESSTR_DBCONST_SNOWHEREFIELDS:
	.long	_$DBCONST$_Ld281
	.long	_$DBCONST$_Ld279
	.long	_$DBCONST$_Ld279
	.long	120705849

.data
	.align 2
.globl	_RESSTR_DBCONST_SNOUPDATEFIELDS
_RESSTR_DBCONST_SNOUPDATEFIELDS:
	.long	_$DBCONST$_Ld285
	.long	_$DBCONST$_Ld283
	.long	_$DBCONST$_Ld283
	.long	174579689

.data
	.align 2
.globl	_RESSTR_DBCONST_SNOTSUPPORTED
_RESSTR_DBCONST_SNOTSUPPORTED:
	.long	_$DBCONST$_Ld289
	.long	_$DBCONST$_Ld287
	.long	_$DBCONST$_Ld287
	.long	80248485

.data
	.align 2
.globl	_RESSTR_DBCONST_SDBCREATEDROPFAILED
_RESSTR_DBCONST_SDBCREATEDROPFAILED:
	.long	_$DBCONST$_Ld293
	.long	_$DBCONST$_Ld291
	.long	_$DBCONST$_Ld291
	.long	58678980

.data
	.align 2
.globl	_RESSTR_DBCONST_SMAXINDEXES
_RESSTR_DBCONST_SMAXINDEXES:
	.long	_$DBCONST$_Ld297
	.long	_$DBCONST$_Ld295
	.long	_$DBCONST$_Ld295
	.long	176619764

.data
	.align 2
.globl	_RESSTR_DBCONST_SMININDEXES
_RESSTR_DBCONST_SMININDEXES:
	.long	_$DBCONST$_Ld301
	.long	_$DBCONST$_Ld299
	.long	_$DBCONST$_Ld299
	.long	36339201

.data
	.align 2
.globl	_RESSTR_DBCONST_STOOMANYFIELDS
_RESSTR_DBCONST_STOOMANYFIELDS:
	.long	_$DBCONST$_Ld305
	.long	_$DBCONST$_Ld303
	.long	_$DBCONST$_Ld303
	.long	197211556

.data
	.align 2
.globl	_RESSTR_DBCONST_SFIELDINDEXERROR
_RESSTR_DBCONST_SFIELDINDEXERROR:
	.long	_$DBCONST$_Ld309
	.long	_$DBCONST$_Ld307
	.long	_$DBCONST$_Ld307
	.long	224365893

.data
	.align 2
.globl	_RESSTR_DBCONST_SINDEXFIELDMISSING
_RESSTR_DBCONST_SINDEXFIELDMISSING:
	.long	_$DBCONST$_Ld313
	.long	_$DBCONST$_Ld311
	.long	_$DBCONST$_Ld311
	.long	107813783

.data
	.align 2
.globl	_RESSTR_DBCONST_SNOFIELDINDEXES
_RESSTR_DBCONST_SNOFIELDINDEXES:
	.long	_$DBCONST$_Ld317
	.long	_$DBCONST$_Ld315
	.long	_$DBCONST$_Ld315
	.long	124701461

.data
	.align 2
.globl	_RESSTR_DBCONST_SNOTINDEXFIELD
_RESSTR_DBCONST_SNOTINDEXFIELD:
	.long	_$DBCONST$_Ld321
	.long	_$DBCONST$_Ld319
	.long	_$DBCONST$_Ld319
	.long	255044100

.data
	.align 2
.globl	_RESSTR_DBCONST_SERRUNKNOWNCONNECTORTYPE
_RESSTR_DBCONST_SERRUNKNOWNCONNECTORTYPE:
	.long	_$DBCONST$_Ld325
	.long	_$DBCONST$_Ld323
	.long	_$DBCONST$_Ld323
	.long	125491477

.data
	.align 2
.globl	_RESSTR_DBCONST_SNOINDEXFIELDNAMEGIVEN
_RESSTR_DBCONST_SNOINDEXFIELDNAMEGIVEN:
	.long	_$DBCONST$_Ld329
	.long	_$DBCONST$_Ld327
	.long	_$DBCONST$_Ld327
	.long	152882046

.data
	.align 2
.globl	_RESSTR_DBCONST_SSTREAMNOTRECOGNISED
_RESSTR_DBCONST_SSTREAMNOTRECOGNISED:
	.long	_$DBCONST$_Ld333
	.long	_$DBCONST$_Ld331
	.long	_$DBCONST$_Ld331
	.long	254912036

.data
	.align 2
.globl	_RESSTR_DBCONST_SNOREADERCLASSREGISTERED
_RESSTR_DBCONST_SNOREADERCLASSREGISTERED:
	.long	_$DBCONST$_Ld337
	.long	_$DBCONST$_Ld335
	.long	_$DBCONST$_Ld335
	.long	233076461

.data
	.align 2
.globl	_RESSTR_DBCONST_SERRCIRCULARDATASOURCEREFERENCENOTALLOWED
_RESSTR_DBCONST_SERRCIRCULARDATASOURCEREFERENCENOTALLOWED:
	.long	_$DBCONST$_Ld341
	.long	_$DBCONST$_Ld339
	.long	_$DBCONST$_Ld339
	.long	180552094

.data
	.align 2
.globl	_RESSTR_DBCONST_SCOMMITTING
_RESSTR_DBCONST_SCOMMITTING:
	.long	_$DBCONST$_Ld345
	.long	_$DBCONST$_Ld343
	.long	_$DBCONST$_Ld343
	.long	68035086

.data
	.align 2
.globl	_RESSTR_DBCONST_SROLLINGBACK
_RESSTR_DBCONST_SROLLINGBACK:
	.long	_$DBCONST$_Ld349
	.long	_$DBCONST$_Ld347
	.long	_$DBCONST$_Ld347
	.long	83991710

.data
	.align 2
.globl	_RESSTR_DBCONST_SCOMMITRETAINING
_RESSTR_DBCONST_SCOMMITRETAINING:
	.long	_$DBCONST$_Ld353
	.long	_$DBCONST$_Ld351
	.long	_$DBCONST$_Ld351
	.long	142548558

.data
	.align 2
.globl	_RESSTR_DBCONST_SROLLBACKRETAINING
_RESSTR_DBCONST_SROLLBACKRETAINING:
	.long	_$DBCONST$_Ld357
	.long	_$DBCONST$_Ld355
	.long	_$DBCONST$_Ld355
	.long	213718494

.data
	.align 2
.globl	_RESSTR_DBCONST_SERRNOFIELDSDEFINED
_RESSTR_DBCONST_SERRNOFIELDSDEFINED:
	.long	_$DBCONST$_Ld361
	.long	_$DBCONST$_Ld359
	.long	_$DBCONST$_Ld359
	.long	262549284

.data
	.align 2
.globl	_RESSTR_DBCONST_SERRAPPLYUPDBEFOREREFRESH
_RESSTR_DBCONST_SERRAPPLYUPDBEFOREREFRESH:
	.long	_$DBCONST$_Ld365
	.long	_$DBCONST$_Ld363
	.long	_$DBCONST$_Ld363
	.long	48157745

.data
	.align 2
.globl	_RESSTR_DBCONST_SERRNODATASET
_RESSTR_DBCONST_SERRNODATASET:
	.long	_$DBCONST$_Ld369
	.long	_$DBCONST$_Ld367
	.long	_$DBCONST$_Ld367
	.long	267347822

.data
	.align 2
.globl	_RESSTR_DBCONST_END
_RESSTR_DBCONST_END:
	.long	_RESSTR_DBCONST_END
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end
	.subsections_via_symbols

