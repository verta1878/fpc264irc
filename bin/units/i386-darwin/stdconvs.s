# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_STDCONVS_FAHRENHEITTOCELSIUS$DOUBLE$$DOUBLE
_STDCONVS_FAHRENHEITTOCELSIUS$DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj4
Lj4:
	popl	%edx
	movl	L_$STDCONVS$_Ld2$non_lazy_ptr-Lj4(%edx),%eax
	fldl	(%eax)
	fldl	8(%ebp)
	fsubp	%st,%st(1)
	movl	L_$STDCONVS$_Ld1$non_lazy_ptr-Lj4(%edx),%eax
	fldl	(%eax)
	fmulp	%st,%st(1)
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_STDCONVS_CELSIUSTOFAHRENHEIT$DOUBLE$$DOUBLE
_STDCONVS_CELSIUSTOFAHRENHEIT$DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj8
Lj8:
	popl	%edx
	fldl	8(%ebp)
	movl	L_$STDCONVS$_Ld3$non_lazy_ptr-Lj8(%edx),%eax
	fldl	(%eax)
	fmulp	%st,%st(1)
	movl	L_$STDCONVS$_Ld4$non_lazy_ptr-Lj8(%edx),%eax
	fldl	(%eax)
	fdivrp	%st,%st(1)
	movl	L_$STDCONVS$_Ld2$non_lazy_ptr-Lj8(%edx),%eax
	fldl	(%eax)
	faddp	%st,%st(1)
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_STDCONVS_CELSIUSTOKELVIN$DOUBLE$$DOUBLE
_STDCONVS_CELSIUSTOKELVIN$DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj12
Lj12:
	popl	%edx
	fldl	8(%ebp)
	movl	L_$STDCONVS$_Ld5$non_lazy_ptr-Lj12(%edx),%eax
	fldt	(%eax)
	faddp	%st,%st(1)
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_STDCONVS_KELVINTOCELSIUS$DOUBLE$$DOUBLE
_STDCONVS_KELVINTOCELSIUS$DOUBLE$$DOUBLE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj16
Lj16:
	popl	%edx
	fldl	8(%ebp)
	movl	L_$STDCONVS$_Ld5$non_lazy_ptr-Lj16(%edx),%eax
	fldt	(%eax)
	fsubrp	%st,%st(1)
	fstpl	-8(%ebp)
	fldl	-8(%ebp)
	leave
	ret

.text
	.align 4
.globl	_STDCONVS_REGISTERAREA
_STDCONVS_REGISTERAREA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-4(%ebp)
	call	Lj20
Lj20:
	popl	%ebx
	movl	L_$STDCONVS$_Ld6$non_lazy_ptr-Lj20(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld6$non_lazy_ptr-Lj20(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTAUSQUAREMILLIMETERS$non_lazy_ptr-Lj20(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBAREA$non_lazy_ptr-Lj20(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_AUSQUAREMILLIMETERS$non_lazy_ptr-Lj20(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld7$non_lazy_ptr-Lj20(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld7$non_lazy_ptr-Lj20(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTAUSQUARECENTIMETERS$non_lazy_ptr-Lj20(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBAREA$non_lazy_ptr-Lj20(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_AUSQUARECENTIMETERS$non_lazy_ptr-Lj20(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld8$non_lazy_ptr-Lj20(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld8$non_lazy_ptr-Lj20(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTAUSQUAREDECIMETERS$non_lazy_ptr-Lj20(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBAREA$non_lazy_ptr-Lj20(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_AUSQUAREDECIMETERS$non_lazy_ptr-Lj20(%ebx),%edx
	movl	%eax,(%edx)
	fld1
	fstpl	(%esp)
	movl	L_RESSTR_STDCONVS_TXTAUSQUAREMETERS$non_lazy_ptr-Lj20(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBAREA$non_lazy_ptr-Lj20(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_AUSQUAREMETERS$non_lazy_ptr-Lj20(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld9$non_lazy_ptr-Lj20(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld9$non_lazy_ptr-Lj20(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTAUSQUAREDECAMETERS$non_lazy_ptr-Lj20(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBAREA$non_lazy_ptr-Lj20(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_AUSQUAREDECAMETERS$non_lazy_ptr-Lj20(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld10$non_lazy_ptr-Lj20(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld10$non_lazy_ptr-Lj20(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTAUSQUAREHECTOMETERS$non_lazy_ptr-Lj20(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBAREA$non_lazy_ptr-Lj20(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_AUSQUAREHECTOMETERS$non_lazy_ptr-Lj20(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld11$non_lazy_ptr-Lj20(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld11$non_lazy_ptr-Lj20(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTAUSQUAREKILOMETERS$non_lazy_ptr-Lj20(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBAREA$non_lazy_ptr-Lj20(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_AUSQUAREKILOMETERS$non_lazy_ptr-Lj20(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld12$non_lazy_ptr-Lj20(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld12$non_lazy_ptr-Lj20(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTAUSQUAREINCHES$non_lazy_ptr-Lj20(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBAREA$non_lazy_ptr-Lj20(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_AUSQUAREINCHES$non_lazy_ptr-Lj20(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld13$non_lazy_ptr-Lj20(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld13$non_lazy_ptr-Lj20(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTAUSQUAREFEET$non_lazy_ptr-Lj20(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBAREA$non_lazy_ptr-Lj20(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_AUSQUAREFEET$non_lazy_ptr-Lj20(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld14$non_lazy_ptr-Lj20(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld14$non_lazy_ptr-Lj20(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTAUSQUAREYARDS$non_lazy_ptr-Lj20(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBAREA$non_lazy_ptr-Lj20(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_AUSQUAREYARDS$non_lazy_ptr-Lj20(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld15$non_lazy_ptr-Lj20(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld15$non_lazy_ptr-Lj20(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTAUSQUAREMILES$non_lazy_ptr-Lj20(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBAREA$non_lazy_ptr-Lj20(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_AUSQUAREMILES$non_lazy_ptr-Lj20(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld16$non_lazy_ptr-Lj20(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld16$non_lazy_ptr-Lj20(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTAUACRES$non_lazy_ptr-Lj20(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBAREA$non_lazy_ptr-Lj20(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_AUACRES$non_lazy_ptr-Lj20(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld17$non_lazy_ptr-Lj20(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld17$non_lazy_ptr-Lj20(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTAUCENTARES$non_lazy_ptr-Lj20(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBAREA$non_lazy_ptr-Lj20(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_AUCENTARES$non_lazy_ptr-Lj20(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld9$non_lazy_ptr-Lj20(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld9$non_lazy_ptr-Lj20(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTAUARES$non_lazy_ptr-Lj20(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBAREA$non_lazy_ptr-Lj20(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_AUARES$non_lazy_ptr-Lj20(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld10$non_lazy_ptr-Lj20(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld10$non_lazy_ptr-Lj20(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTAUHECTARES$non_lazy_ptr-Lj20(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBAREA$non_lazy_ptr-Lj20(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_AUHECTARES$non_lazy_ptr-Lj20(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld18$non_lazy_ptr-Lj20(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld18$non_lazy_ptr-Lj20(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTAUSQUARERODS$non_lazy_ptr-Lj20(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBAREA$non_lazy_ptr-Lj20(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_AUSQUARERODS$non_lazy_ptr-Lj20(%ebx),%edx
	movl	%eax,(%edx)
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STDCONVS_REGISTERLENGTHS
_STDCONVS_REGISTERLENGTHS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-4(%ebp)
	call	Lj150
Lj150:
	popl	%ebx
	movl	L_$STDCONVS$_Ld19$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld19$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTDUMICROMICRONS$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBDISTANCE$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_DUMICROMICRONS$non_lazy_ptr-Lj150(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld20$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld20$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTDUANGSTROMS$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBDISTANCE$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_DUANGSTROMS$non_lazy_ptr-Lj150(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld21$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld21$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTDUMILLIMICRONS$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBDISTANCE$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_DUMILLIMICRONS$non_lazy_ptr-Lj150(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld6$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld6$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTDUMICRONS$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBDISTANCE$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_DUMICRONS$non_lazy_ptr-Lj150(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld22$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld22$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTDUMILLIMETERS$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBDISTANCE$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_DUMILLIMETERS$non_lazy_ptr-Lj150(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld8$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld8$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTDUCENTIMETERS$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBDISTANCE$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_DUCENTIMETERS$non_lazy_ptr-Lj150(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld23$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld23$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTDUDECIMETERS$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBDISTANCE$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_DUDECIMETERS$non_lazy_ptr-Lj150(%ebx),%edx
	movl	%eax,(%edx)
	fld1
	fstpl	(%esp)
	movl	L_RESSTR_STDCONVS_TXTDUMETERS$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBDISTANCE$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_DUMETERS$non_lazy_ptr-Lj150(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld24$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld24$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTDUDECAMETERS$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBDISTANCE$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_DUDECAMETERS$non_lazy_ptr-Lj150(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld9$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld9$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTDUHECTOMETERS$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBDISTANCE$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_DUHECTOMETERS$non_lazy_ptr-Lj150(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld25$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld25$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTDUKILOMETERS$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBDISTANCE$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_DUKILOMETERS$non_lazy_ptr-Lj150(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld11$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld11$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTDUMEGAMETERS$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBDISTANCE$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_DUMEGAMETERS$non_lazy_ptr-Lj150(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld26$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld26$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTDUGIGAMETERS$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBDISTANCE$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_DUGIGAMETERS$non_lazy_ptr-Lj150(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld27$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld27$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTDUINCHES$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBDISTANCE$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_DUINCHES$non_lazy_ptr-Lj150(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld28$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld28$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTDUFEET$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBDISTANCE$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_DUFEET$non_lazy_ptr-Lj150(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld29$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld29$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTDUYARDS$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBDISTANCE$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_DUYARDS$non_lazy_ptr-Lj150(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld30$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld30$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTDUMILES$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBDISTANCE$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_DUMILES$non_lazy_ptr-Lj150(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld31$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld31$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTDUNAUTICALMILES$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBDISTANCE$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_DUNAUTICALMILES$non_lazy_ptr-Lj150(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld32$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld32$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTDUASTRONOMICALUNITS$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBDISTANCE$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_DUASTRONOMICALUNITS$non_lazy_ptr-Lj150(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld33$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld33$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTDULIGHTYEARS$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBDISTANCE$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_DULIGHTYEARS$non_lazy_ptr-Lj150(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld34$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld34$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTDUPARSECS$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBDISTANCE$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_DUPARSECS$non_lazy_ptr-Lj150(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld35$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld35$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTDUCUBITS$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBDISTANCE$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_DUCUBITS$non_lazy_ptr-Lj150(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld36$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld36$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTDUFATHOMS$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBDISTANCE$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_DUFATHOMS$non_lazy_ptr-Lj150(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld37$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld37$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTDUFURLONGS$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBDISTANCE$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_DUFURLONGS$non_lazy_ptr-Lj150(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld38$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld38$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTDUHANDS$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBDISTANCE$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_DUHANDS$non_lazy_ptr-Lj150(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld29$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld29$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTDUPACES$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBDISTANCE$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_DUPACES$non_lazy_ptr-Lj150(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld39$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld39$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTDURODS$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBDISTANCE$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_DURODS$non_lazy_ptr-Lj150(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld40$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld40$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTDUCHAINS$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBDISTANCE$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_DUCHAINS$non_lazy_ptr-Lj150(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld41$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld41$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTDULINKS$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBDISTANCE$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_DULINKS$non_lazy_ptr-Lj150(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld42$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld42$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTDUPICAS$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBDISTANCE$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_DUPICAS$non_lazy_ptr-Lj150(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld43$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld43$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTDUPOINTS$non_lazy_ptr-Lj150(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBDISTANCE$non_lazy_ptr-Lj150(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_DUPOINTS$non_lazy_ptr-Lj150(%ebx),%edx
	movl	%eax,(%edx)
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STDCONVS_REGISTERMASS
_STDCONVS_REGISTERMASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-4(%ebp)
	call	Lj400
Lj400:
	popl	%ebx
	movl	L_$STDCONVS$_Ld19$non_lazy_ptr-Lj400(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld19$non_lazy_ptr-Lj400(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTMUNANOGRAMS$non_lazy_ptr-Lj400(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBMASS$non_lazy_ptr-Lj400(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_MUNANOGRAMS$non_lazy_ptr-Lj400(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld21$non_lazy_ptr-Lj400(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld21$non_lazy_ptr-Lj400(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTMUMICROGRAMS$non_lazy_ptr-Lj400(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBMASS$non_lazy_ptr-Lj400(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_MUMICROGRAMS$non_lazy_ptr-Lj400(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld6$non_lazy_ptr-Lj400(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld6$non_lazy_ptr-Lj400(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTMUMILLIGRAMS$non_lazy_ptr-Lj400(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBMASS$non_lazy_ptr-Lj400(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_MUMILLIGRAMS$non_lazy_ptr-Lj400(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld44$non_lazy_ptr-Lj400(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld44$non_lazy_ptr-Lj400(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTMUCENTIGRAMS$non_lazy_ptr-Lj400(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBMASS$non_lazy_ptr-Lj400(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_MUCENTIGRAMS$non_lazy_ptr-Lj400(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld7$non_lazy_ptr-Lj400(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld7$non_lazy_ptr-Lj400(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTMUDECIGRAMS$non_lazy_ptr-Lj400(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBMASS$non_lazy_ptr-Lj400(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_MUDECIGRAMS$non_lazy_ptr-Lj400(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld22$non_lazy_ptr-Lj400(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld22$non_lazy_ptr-Lj400(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTMUGRAMS$non_lazy_ptr-Lj400(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBMASS$non_lazy_ptr-Lj400(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_MUGRAMS$non_lazy_ptr-Lj400(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld8$non_lazy_ptr-Lj400(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld8$non_lazy_ptr-Lj400(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTMUDECAGRAMS$non_lazy_ptr-Lj400(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBMASS$non_lazy_ptr-Lj400(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_MUDECAGRAMS$non_lazy_ptr-Lj400(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld23$non_lazy_ptr-Lj400(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld23$non_lazy_ptr-Lj400(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTMUHECTOGRAMS$non_lazy_ptr-Lj400(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBMASS$non_lazy_ptr-Lj400(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_MUHECTOGRAMS$non_lazy_ptr-Lj400(%ebx),%edx
	movl	%eax,(%edx)
	fld1
	fstpl	(%esp)
	movl	L_RESSTR_STDCONVS_TXTMUKILOGRAMS$non_lazy_ptr-Lj400(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBMASS$non_lazy_ptr-Lj400(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_MUKILOGRAMS$non_lazy_ptr-Lj400(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld25$non_lazy_ptr-Lj400(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld25$non_lazy_ptr-Lj400(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTMUMETRICTONS$non_lazy_ptr-Lj400(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBMASS$non_lazy_ptr-Lj400(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_MUMETRICTONS$non_lazy_ptr-Lj400(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld45$non_lazy_ptr-Lj400(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld45$non_lazy_ptr-Lj400(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTMUDRAMS$non_lazy_ptr-Lj400(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBMASS$non_lazy_ptr-Lj400(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_MUDRAMS$non_lazy_ptr-Lj400(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld46$non_lazy_ptr-Lj400(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld46$non_lazy_ptr-Lj400(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTMUGRAINS$non_lazy_ptr-Lj400(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBMASS$non_lazy_ptr-Lj400(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_MUGRAINS$non_lazy_ptr-Lj400(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld47$non_lazy_ptr-Lj400(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld47$non_lazy_ptr-Lj400(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTMULONGTONS$non_lazy_ptr-Lj400(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBMASS$non_lazy_ptr-Lj400(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_MULONGTONS$non_lazy_ptr-Lj400(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld48$non_lazy_ptr-Lj400(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld48$non_lazy_ptr-Lj400(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTMUTONS$non_lazy_ptr-Lj400(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBMASS$non_lazy_ptr-Lj400(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_MUTONS$non_lazy_ptr-Lj400(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld49$non_lazy_ptr-Lj400(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld49$non_lazy_ptr-Lj400(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTMUOUNCES$non_lazy_ptr-Lj400(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBMASS$non_lazy_ptr-Lj400(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_MUOUNCES$non_lazy_ptr-Lj400(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld50$non_lazy_ptr-Lj400(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld50$non_lazy_ptr-Lj400(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTMUPOUNDS$non_lazy_ptr-Lj400(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBMASS$non_lazy_ptr-Lj400(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_MUPOUNDS$non_lazy_ptr-Lj400(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld51$non_lazy_ptr-Lj400(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld51$non_lazy_ptr-Lj400(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTMUSTONES$non_lazy_ptr-Lj400(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBMASS$non_lazy_ptr-Lj400(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_MUSTONES$non_lazy_ptr-Lj400(%ebx),%edx
	movl	%eax,(%edx)
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STDCONVS_REGISTERTEMPERATURE
_STDCONVS_REGISTERTEMPERATURE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-4(%ebp)
	call	Lj538
Lj538:
	popl	%ebx
	fld1
	fstpl	(%esp)
	movl	L_RESSTR_STDCONVS_TXTTUCELSIUS$non_lazy_ptr-Lj538(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBTEMPERATURE$non_lazy_ptr-Lj538(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_TUCELSIUS$non_lazy_ptr-Lj538(%ebx),%edx
	movl	%eax,(%edx)
	fld1
	fstpl	(%esp)
	movl	L_RESSTR_STDCONVS_TXTTUKELVIN$non_lazy_ptr-Lj538(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBTEMPERATURE$non_lazy_ptr-Lj538(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_TUKELVIN$non_lazy_ptr-Lj538(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld1$non_lazy_ptr-Lj538(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld1$non_lazy_ptr-Lj538(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTTUFAHRENHEIT$non_lazy_ptr-Lj538(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBTEMPERATURE$non_lazy_ptr-Lj538(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_TUFAHRENHEIT$non_lazy_ptr-Lj538(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld52$non_lazy_ptr-Lj538(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld52$non_lazy_ptr-Lj538(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTTURANKINE$non_lazy_ptr-Lj538(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBTEMPERATURE$non_lazy_ptr-Lj538(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_TURANKINE$non_lazy_ptr-Lj538(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld53$non_lazy_ptr-Lj538(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld53$non_lazy_ptr-Lj538(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTTUREAMUR$non_lazy_ptr-Lj538(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBTEMPERATURE$non_lazy_ptr-Lj538(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_TUREAMUR$non_lazy_ptr-Lj538(%ebx),%edx
	movl	%eax,(%edx)
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STDCONVS_REGISTERTIMES
_STDCONVS_REGISTERTIMES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-4(%ebp)
	call	Lj580
Lj580:
	popl	%ebx
	movl	L_$STDCONVS$_Ld22$non_lazy_ptr-Lj580(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld22$non_lazy_ptr-Lj580(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTTUMILLISECONDS$non_lazy_ptr-Lj580(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBTIME$non_lazy_ptr-Lj580(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_TUMILLISECONDS$non_lazy_ptr-Lj580(%ebx),%edx
	movl	%eax,(%edx)
	fld1
	fstpl	(%esp)
	movl	L_RESSTR_STDCONVS_TXTTUSECONDS$non_lazy_ptr-Lj580(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBTIME$non_lazy_ptr-Lj580(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_TUSECONDS$non_lazy_ptr-Lj580(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld54$non_lazy_ptr-Lj580(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld54$non_lazy_ptr-Lj580(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTTUMINUTES$non_lazy_ptr-Lj580(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBTIME$non_lazy_ptr-Lj580(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_TUMINUTES$non_lazy_ptr-Lj580(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld55$non_lazy_ptr-Lj580(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld55$non_lazy_ptr-Lj580(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTTUHOURS$non_lazy_ptr-Lj580(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBTIME$non_lazy_ptr-Lj580(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_TUHOURS$non_lazy_ptr-Lj580(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld56$non_lazy_ptr-Lj580(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld56$non_lazy_ptr-Lj580(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTTUDAYS$non_lazy_ptr-Lj580(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBTIME$non_lazy_ptr-Lj580(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_TUDAYS$non_lazy_ptr-Lj580(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld57$non_lazy_ptr-Lj580(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld57$non_lazy_ptr-Lj580(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTTUWEEKS$non_lazy_ptr-Lj580(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBTIME$non_lazy_ptr-Lj580(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_TUWEEKS$non_lazy_ptr-Lj580(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld58$non_lazy_ptr-Lj580(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld58$non_lazy_ptr-Lj580(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTTUFORTNIGHTS$non_lazy_ptr-Lj580(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBTIME$non_lazy_ptr-Lj580(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_TUFORTNIGHTS$non_lazy_ptr-Lj580(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld59$non_lazy_ptr-Lj580(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld59$non_lazy_ptr-Lj580(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTTUMONTHS$non_lazy_ptr-Lj580(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBTIME$non_lazy_ptr-Lj580(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_TUMONTHS$non_lazy_ptr-Lj580(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld60$non_lazy_ptr-Lj580(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld60$non_lazy_ptr-Lj580(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTTUYEARS$non_lazy_ptr-Lj580(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBTIME$non_lazy_ptr-Lj580(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_TUYEARS$non_lazy_ptr-Lj580(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld61$non_lazy_ptr-Lj580(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld61$non_lazy_ptr-Lj580(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTTUDECADES$non_lazy_ptr-Lj580(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBTIME$non_lazy_ptr-Lj580(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_TUDECADES$non_lazy_ptr-Lj580(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld62$non_lazy_ptr-Lj580(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld62$non_lazy_ptr-Lj580(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTTUCENTURIES$non_lazy_ptr-Lj580(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBTIME$non_lazy_ptr-Lj580(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_TUCENTURIES$non_lazy_ptr-Lj580(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld63$non_lazy_ptr-Lj580(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld63$non_lazy_ptr-Lj580(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTTUMILLENNIA$non_lazy_ptr-Lj580(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBTIME$non_lazy_ptr-Lj580(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_TUMILLENNIA$non_lazy_ptr-Lj580(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld17$non_lazy_ptr-Lj580(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld17$non_lazy_ptr-Lj580(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTTUDATETIME$non_lazy_ptr-Lj580(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBTIME$non_lazy_ptr-Lj580(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_TUDATETIME$non_lazy_ptr-Lj580(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld17$non_lazy_ptr-Lj580(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld17$non_lazy_ptr-Lj580(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTTUJULIANDATE$non_lazy_ptr-Lj580(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBTIME$non_lazy_ptr-Lj580(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_TUJULIANDATE$non_lazy_ptr-Lj580(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld17$non_lazy_ptr-Lj580(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld17$non_lazy_ptr-Lj580(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTTUMODIFIEDJULIANDATE$non_lazy_ptr-Lj580(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBTIME$non_lazy_ptr-Lj580(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_TUMODIFIEDJULIANDATE$non_lazy_ptr-Lj580(%ebx),%edx
	movl	%eax,(%edx)
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STDCONVS_REGISTERVOLUMES
_STDCONVS_REGISTERVOLUMES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-4(%ebp)
	call	Lj702
Lj702:
	popl	%ebx
	movl	L_$STDCONVS$_Ld21$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld21$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTVUCUBICMILLIMETERS$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VUCUBICMILLIMETERS$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld6$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld6$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTVUCUBICCENTIMETERS$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VUCUBICCENTIMETERS$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld22$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld22$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTVUCUBICDECIMETERS$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VUCUBICDECIMETERS$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	fld1
	fstpl	(%esp)
	movl	L_RESSTR_STDCONVS_TXTVUCUBICMETERS$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VUCUBICMETERS$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld25$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld25$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTVUCUBICDECAMETERS$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VUCUBICDECAMETERS$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld11$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld11$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTVUCUBICHECTOMETERS$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VUCUBICHECTOMETERS$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld26$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld26$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTVUCUBICKILOMETERS$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VUCUBICKILOMETERS$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld64$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld64$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTVUCUBICINCHES$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VUCUBICINCHES$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld65$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld65$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTVUCUBICFEET$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VUCUBICFEET$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld66$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld66$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTVUCUBICYARDS$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VUCUBICYARDS$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld67$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld67$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTVUCUBICMILES$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VUCUBICMILES$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld6$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld6$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTVUMILLILITERS$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VUMILLILITERS$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld44$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld44$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTVUCENTILITERS$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VUCENTILITERS$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld7$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld7$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTVUDECILITERS$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VUDECILITERS$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld22$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld22$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTVULITERS$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VULITERS$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld8$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld8$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTVUDECALITERS$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VUDECALITERS$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld23$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld23$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTVUHECTOLITERS$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VUHECTOLITERS$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	fld1
	fstpl	(%esp)
	movl	L_RESSTR_STDCONVS_TXTVUKILOLITERS$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VUKILOLITERS$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld17$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld17$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTVUACREFEET$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VUACREFEET$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld17$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld17$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTVUACREINCHES$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VUACREINCHES$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld68$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld68$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTVUCORDS$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VUCORDS$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld68$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld68$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTVUCORDFEET$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VUCORDFEET$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld23$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld23$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTVUDECISTERES$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VUDECISTERES$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	fld1
	fstpl	(%esp)
	movl	L_RESSTR_STDCONVS_TXTVUSTERES$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VUSTERES$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld24$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld24$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTVUDECASTERES$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VUDECASTERES$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld69$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld69$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTVUFLUIDGALLONS$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VUFLUIDGALLONS$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld70$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld70$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTVUFLUIDQUARTS$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VUFLUIDQUARTS$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld71$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld71$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTVUFLUIDPINTS$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VUFLUIDPINTS$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld17$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld17$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTVUFLUIDCUPS$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VUFLUIDCUPS$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld17$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld17$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTVUFLUIDGILLS$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VUFLUIDGILLS$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld72$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld72$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTVUFLUIDOUNCES$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VUFLUIDOUNCES$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld17$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld17$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTVUFLUIDTABLESPOONS$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VUFLUIDTABLESPOONS$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld17$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld17$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTVUFLUIDTEASPOONS$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VUFLUIDTEASPOONS$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld17$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld17$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTVUDRYGALLONS$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VUDRYGALLONS$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld17$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld17$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTVUDRYQUARTS$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VUDRYQUARTS$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld17$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld17$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTVUDRYPINTS$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VUDRYPINTS$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld73$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld73$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTVUDRYPECKS$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VUDRYPECKS$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld17$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld17$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTVUDRYBUCKETS$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VUDRYBUCKETS$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld74$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld74$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTVUDRYBUSHELS$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VUDRYBUSHELS$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld75$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld75$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTVUUKGALLONS$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VUUKGALLONS$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld17$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld17$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTVUUKPOTTLES$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VUUKPOTTLES$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld76$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld76$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTVUUKQUARTS$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VUUKQUARTS$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld17$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld17$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTVUUKPINTS$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VUUKPINTS$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld17$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld17$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTVUUKGILLS$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VUUKGILLS$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld77$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld77$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTVUUKOUNCES$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VUUKOUNCES$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld78$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld78$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTVUUKPECKS$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VUUKPECKS$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld17$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld17$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTVUUKBUCKETS$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VUUKBUCKETS$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld79$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	movl	L_$STDCONVS$_Ld79$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%eax
	movl	%eax,4(%esp)
	movl	L_RESSTR_STDCONVS_TXTVUUKBUSHELS$non_lazy_ptr-Lj702(%ebx),%eax
	movl	4(%eax),%edx
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj702(%ebx),%eax
	movl	(%eax),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub
	movl	L_U_STDCONVS_VUUKBUSHELS$non_lazy_ptr-Lj702(%ebx),%edx
	movl	%eax,(%edx)
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STDCONVS_REGISTERFAMILIES
_STDCONVS_REGISTERFAMILIES:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj1088
Lj1088:
	popl	%ebx
	movl	L_$STDCONVS$_Ld80$non_lazy_ptr-Lj1088(%ebx),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONFAMILY$ANSISTRING$$TCONVFAMILY$stub
	movl	L_U_STDCONVS_CBAREA$non_lazy_ptr-Lj1088(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld82$non_lazy_ptr-Lj1088(%ebx),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONFAMILY$ANSISTRING$$TCONVFAMILY$stub
	movl	L_U_STDCONVS_CBDISTANCE$non_lazy_ptr-Lj1088(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld84$non_lazy_ptr-Lj1088(%ebx),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONFAMILY$ANSISTRING$$TCONVFAMILY$stub
	movl	L_U_STDCONVS_CBMASS$non_lazy_ptr-Lj1088(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld86$non_lazy_ptr-Lj1088(%ebx),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONFAMILY$ANSISTRING$$TCONVFAMILY$stub
	movl	L_U_STDCONVS_CBTEMPERATURE$non_lazy_ptr-Lj1088(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld88$non_lazy_ptr-Lj1088(%ebx),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONFAMILY$ANSISTRING$$TCONVFAMILY$stub
	movl	L_U_STDCONVS_CBTIME$non_lazy_ptr-Lj1088(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_$STDCONVS$_Ld90$non_lazy_ptr-Lj1088(%ebx),%eax
	call	L_CONVUTILS_REGISTERCONVERSIONFAMILY$ANSISTRING$$TCONVFAMILY$stub
	movl	L_U_STDCONVS_CBVOLUME$non_lazy_ptr-Lj1088(%ebx),%edx
	movl	%eax,(%edx)
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_STDCONVS_REGISTERALL
_STDCONVS_REGISTERALL:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_STDCONVS_REGISTERFAMILIES$stub
	call	L_STDCONVS_REGISTERVOLUMES$stub
	call	L_STDCONVS_REGISTERTIMES$stub
	call	L_STDCONVS_REGISTERTEMPERATURE$stub
	call	L_STDCONVS_REGISTERMASS$stub
	call	L_STDCONVS_REGISTERLENGTHS$stub
	call	L_STDCONVS_REGISTERAREA$stub
	leave
	ret

.text
	.align 4
.globl	_INIT$_STDCONVS
_INIT$_STDCONVS:
.reference __STDCONVS_init
.globl	__STDCONVS_init
__STDCONVS_init:
.reference _INIT$_STDCONVS
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_STDCONVS_REGISTERALL$stub
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals


	.align 2
.globl _U_STDCONVS_AUSQUAREMILLIMETERS
.data
.zerofill __DATA, __common, _U_STDCONVS_AUSQUAREMILLIMETERS, 4,2




	.align 2
.globl _U_STDCONVS_AUSQUARECENTIMETERS
.data
.zerofill __DATA, __common, _U_STDCONVS_AUSQUARECENTIMETERS, 4,2




	.align 2
.globl _U_STDCONVS_AUSQUAREDECIMETERS
.data
.zerofill __DATA, __common, _U_STDCONVS_AUSQUAREDECIMETERS, 4,2




	.align 2
.globl _U_STDCONVS_AUSQUAREMETERS
.data
.zerofill __DATA, __common, _U_STDCONVS_AUSQUAREMETERS, 4,2




	.align 2
.globl _U_STDCONVS_AUSQUAREDECAMETERS
.data
.zerofill __DATA, __common, _U_STDCONVS_AUSQUAREDECAMETERS, 4,2




	.align 2
.globl _U_STDCONVS_AUSQUAREHECTOMETERS
.data
.zerofill __DATA, __common, _U_STDCONVS_AUSQUAREHECTOMETERS, 4,2




	.align 2
.globl _U_STDCONVS_AUSQUAREKILOMETERS
.data
.zerofill __DATA, __common, _U_STDCONVS_AUSQUAREKILOMETERS, 4,2




	.align 2
.globl _U_STDCONVS_AUSQUAREINCHES
.data
.zerofill __DATA, __common, _U_STDCONVS_AUSQUAREINCHES, 4,2




	.align 2
.globl _U_STDCONVS_AUSQUAREFEET
.data
.zerofill __DATA, __common, _U_STDCONVS_AUSQUAREFEET, 4,2




	.align 2
.globl _U_STDCONVS_AUSQUAREYARDS
.data
.zerofill __DATA, __common, _U_STDCONVS_AUSQUAREYARDS, 4,2




	.align 2
.globl _U_STDCONVS_AUSQUAREMILES
.data
.zerofill __DATA, __common, _U_STDCONVS_AUSQUAREMILES, 4,2




	.align 2
.globl _U_STDCONVS_AUACRES
.data
.zerofill __DATA, __common, _U_STDCONVS_AUACRES, 4,2




	.align 2
.globl _U_STDCONVS_AUCENTARES
.data
.zerofill __DATA, __common, _U_STDCONVS_AUCENTARES, 4,2




	.align 2
.globl _U_STDCONVS_AUARES
.data
.zerofill __DATA, __common, _U_STDCONVS_AUARES, 4,2




	.align 2
.globl _U_STDCONVS_AUHECTARES
.data
.zerofill __DATA, __common, _U_STDCONVS_AUHECTARES, 4,2




	.align 2
.globl _U_STDCONVS_AUSQUARERODS
.data
.zerofill __DATA, __common, _U_STDCONVS_AUSQUARERODS, 4,2




	.align 2
.globl _U_STDCONVS_DUMICROMICRONS
.data
.zerofill __DATA, __common, _U_STDCONVS_DUMICROMICRONS, 4,2




	.align 2
.globl _U_STDCONVS_DUANGSTROMS
.data
.zerofill __DATA, __common, _U_STDCONVS_DUANGSTROMS, 4,2




	.align 2
.globl _U_STDCONVS_DUMILLIMICRONS
.data
.zerofill __DATA, __common, _U_STDCONVS_DUMILLIMICRONS, 4,2




	.align 2
.globl _U_STDCONVS_DUMICRONS
.data
.zerofill __DATA, __common, _U_STDCONVS_DUMICRONS, 4,2




	.align 2
.globl _U_STDCONVS_DUMILLIMETERS
.data
.zerofill __DATA, __common, _U_STDCONVS_DUMILLIMETERS, 4,2




	.align 2
.globl _U_STDCONVS_DUCENTIMETERS
.data
.zerofill __DATA, __common, _U_STDCONVS_DUCENTIMETERS, 4,2




	.align 2
.globl _U_STDCONVS_DUDECIMETERS
.data
.zerofill __DATA, __common, _U_STDCONVS_DUDECIMETERS, 4,2




	.align 2
.globl _U_STDCONVS_DUMETERS
.data
.zerofill __DATA, __common, _U_STDCONVS_DUMETERS, 4,2




	.align 2
.globl _U_STDCONVS_DUDECAMETERS
.data
.zerofill __DATA, __common, _U_STDCONVS_DUDECAMETERS, 4,2




	.align 2
.globl _U_STDCONVS_DUHECTOMETERS
.data
.zerofill __DATA, __common, _U_STDCONVS_DUHECTOMETERS, 4,2




	.align 2
.globl _U_STDCONVS_DUKILOMETERS
.data
.zerofill __DATA, __common, _U_STDCONVS_DUKILOMETERS, 4,2




	.align 2
.globl _U_STDCONVS_DUMEGAMETERS
.data
.zerofill __DATA, __common, _U_STDCONVS_DUMEGAMETERS, 4,2




	.align 2
.globl _U_STDCONVS_DUGIGAMETERS
.data
.zerofill __DATA, __common, _U_STDCONVS_DUGIGAMETERS, 4,2




	.align 2
.globl _U_STDCONVS_DUINCHES
.data
.zerofill __DATA, __common, _U_STDCONVS_DUINCHES, 4,2




	.align 2
.globl _U_STDCONVS_DUFEET
.data
.zerofill __DATA, __common, _U_STDCONVS_DUFEET, 4,2




	.align 2
.globl _U_STDCONVS_DUYARDS
.data
.zerofill __DATA, __common, _U_STDCONVS_DUYARDS, 4,2




	.align 2
.globl _U_STDCONVS_DUMILES
.data
.zerofill __DATA, __common, _U_STDCONVS_DUMILES, 4,2




	.align 2
.globl _U_STDCONVS_DUNAUTICALMILES
.data
.zerofill __DATA, __common, _U_STDCONVS_DUNAUTICALMILES, 4,2




	.align 2
.globl _U_STDCONVS_DUASTRONOMICALUNITS
.data
.zerofill __DATA, __common, _U_STDCONVS_DUASTRONOMICALUNITS, 4,2




	.align 2
.globl _U_STDCONVS_DULIGHTYEARS
.data
.zerofill __DATA, __common, _U_STDCONVS_DULIGHTYEARS, 4,2




	.align 2
.globl _U_STDCONVS_DUPARSECS
.data
.zerofill __DATA, __common, _U_STDCONVS_DUPARSECS, 4,2




	.align 2
.globl _U_STDCONVS_DUCUBITS
.data
.zerofill __DATA, __common, _U_STDCONVS_DUCUBITS, 4,2




	.align 2
.globl _U_STDCONVS_DUFATHOMS
.data
.zerofill __DATA, __common, _U_STDCONVS_DUFATHOMS, 4,2




	.align 2
.globl _U_STDCONVS_DUFURLONGS
.data
.zerofill __DATA, __common, _U_STDCONVS_DUFURLONGS, 4,2




	.align 2
.globl _U_STDCONVS_DUHANDS
.data
.zerofill __DATA, __common, _U_STDCONVS_DUHANDS, 4,2




	.align 2
.globl _U_STDCONVS_DUPACES
.data
.zerofill __DATA, __common, _U_STDCONVS_DUPACES, 4,2




	.align 2
.globl _U_STDCONVS_DURODS
.data
.zerofill __DATA, __common, _U_STDCONVS_DURODS, 4,2




	.align 2
.globl _U_STDCONVS_DUCHAINS
.data
.zerofill __DATA, __common, _U_STDCONVS_DUCHAINS, 4,2




	.align 2
.globl _U_STDCONVS_DULINKS
.data
.zerofill __DATA, __common, _U_STDCONVS_DULINKS, 4,2




	.align 2
.globl _U_STDCONVS_DUPICAS
.data
.zerofill __DATA, __common, _U_STDCONVS_DUPICAS, 4,2




	.align 2
.globl _U_STDCONVS_DUPOINTS
.data
.zerofill __DATA, __common, _U_STDCONVS_DUPOINTS, 4,2




	.align 2
.globl _U_STDCONVS_MUNANOGRAMS
.data
.zerofill __DATA, __common, _U_STDCONVS_MUNANOGRAMS, 4,2




	.align 2
.globl _U_STDCONVS_MUMICROGRAMS
.data
.zerofill __DATA, __common, _U_STDCONVS_MUMICROGRAMS, 4,2




	.align 2
.globl _U_STDCONVS_MUMILLIGRAMS
.data
.zerofill __DATA, __common, _U_STDCONVS_MUMILLIGRAMS, 4,2




	.align 2
.globl _U_STDCONVS_MUCENTIGRAMS
.data
.zerofill __DATA, __common, _U_STDCONVS_MUCENTIGRAMS, 4,2




	.align 2
.globl _U_STDCONVS_MUDECIGRAMS
.data
.zerofill __DATA, __common, _U_STDCONVS_MUDECIGRAMS, 4,2




	.align 2
.globl _U_STDCONVS_MUGRAMS
.data
.zerofill __DATA, __common, _U_STDCONVS_MUGRAMS, 4,2




	.align 2
.globl _U_STDCONVS_MUDECAGRAMS
.data
.zerofill __DATA, __common, _U_STDCONVS_MUDECAGRAMS, 4,2




	.align 2
.globl _U_STDCONVS_MUHECTOGRAMS
.data
.zerofill __DATA, __common, _U_STDCONVS_MUHECTOGRAMS, 4,2




	.align 2
.globl _U_STDCONVS_MUKILOGRAMS
.data
.zerofill __DATA, __common, _U_STDCONVS_MUKILOGRAMS, 4,2




	.align 2
.globl _U_STDCONVS_MUMETRICTONS
.data
.zerofill __DATA, __common, _U_STDCONVS_MUMETRICTONS, 4,2




	.align 2
.globl _U_STDCONVS_MUDRAMS
.data
.zerofill __DATA, __common, _U_STDCONVS_MUDRAMS, 4,2




	.align 2
.globl _U_STDCONVS_MUGRAINS
.data
.zerofill __DATA, __common, _U_STDCONVS_MUGRAINS, 4,2




	.align 2
.globl _U_STDCONVS_MULONGTONS
.data
.zerofill __DATA, __common, _U_STDCONVS_MULONGTONS, 4,2




	.align 2
.globl _U_STDCONVS_MUTONS
.data
.zerofill __DATA, __common, _U_STDCONVS_MUTONS, 4,2




	.align 2
.globl _U_STDCONVS_MUOUNCES
.data
.zerofill __DATA, __common, _U_STDCONVS_MUOUNCES, 4,2




	.align 2
.globl _U_STDCONVS_MUPOUNDS
.data
.zerofill __DATA, __common, _U_STDCONVS_MUPOUNDS, 4,2




	.align 2
.globl _U_STDCONVS_MUSTONES
.data
.zerofill __DATA, __common, _U_STDCONVS_MUSTONES, 4,2




	.align 2
.globl _U_STDCONVS_TUCELSIUS
.data
.zerofill __DATA, __common, _U_STDCONVS_TUCELSIUS, 4,2




	.align 2
.globl _U_STDCONVS_TUKELVIN
.data
.zerofill __DATA, __common, _U_STDCONVS_TUKELVIN, 4,2




	.align 2
.globl _U_STDCONVS_TUFAHRENHEIT
.data
.zerofill __DATA, __common, _U_STDCONVS_TUFAHRENHEIT, 4,2




	.align 2
.globl _U_STDCONVS_TURANKINE
.data
.zerofill __DATA, __common, _U_STDCONVS_TURANKINE, 4,2




	.align 2
.globl _U_STDCONVS_TUREAMUR
.data
.zerofill __DATA, __common, _U_STDCONVS_TUREAMUR, 4,2




	.align 2
.globl _U_STDCONVS_TUMILLISECONDS
.data
.zerofill __DATA, __common, _U_STDCONVS_TUMILLISECONDS, 4,2




	.align 2
.globl _U_STDCONVS_TUSECONDS
.data
.zerofill __DATA, __common, _U_STDCONVS_TUSECONDS, 4,2




	.align 2
.globl _U_STDCONVS_TUMINUTES
.data
.zerofill __DATA, __common, _U_STDCONVS_TUMINUTES, 4,2




	.align 2
.globl _U_STDCONVS_TUHOURS
.data
.zerofill __DATA, __common, _U_STDCONVS_TUHOURS, 4,2




	.align 2
.globl _U_STDCONVS_TUDAYS
.data
.zerofill __DATA, __common, _U_STDCONVS_TUDAYS, 4,2




	.align 2
.globl _U_STDCONVS_TUWEEKS
.data
.zerofill __DATA, __common, _U_STDCONVS_TUWEEKS, 4,2




	.align 2
.globl _U_STDCONVS_TUFORTNIGHTS
.data
.zerofill __DATA, __common, _U_STDCONVS_TUFORTNIGHTS, 4,2




	.align 2
.globl _U_STDCONVS_TUMONTHS
.data
.zerofill __DATA, __common, _U_STDCONVS_TUMONTHS, 4,2




	.align 2
.globl _U_STDCONVS_TUYEARS
.data
.zerofill __DATA, __common, _U_STDCONVS_TUYEARS, 4,2




	.align 2
.globl _U_STDCONVS_TUDECADES
.data
.zerofill __DATA, __common, _U_STDCONVS_TUDECADES, 4,2




	.align 2
.globl _U_STDCONVS_TUCENTURIES
.data
.zerofill __DATA, __common, _U_STDCONVS_TUCENTURIES, 4,2




	.align 2
.globl _U_STDCONVS_TUMILLENNIA
.data
.zerofill __DATA, __common, _U_STDCONVS_TUMILLENNIA, 4,2




	.align 2
.globl _U_STDCONVS_TUDATETIME
.data
.zerofill __DATA, __common, _U_STDCONVS_TUDATETIME, 4,2




	.align 2
.globl _U_STDCONVS_TUJULIANDATE
.data
.zerofill __DATA, __common, _U_STDCONVS_TUJULIANDATE, 4,2




	.align 2
.globl _U_STDCONVS_TUMODIFIEDJULIANDATE
.data
.zerofill __DATA, __common, _U_STDCONVS_TUMODIFIEDJULIANDATE, 4,2




	.align 2
.globl _U_STDCONVS_VUCUBICMILLIMETERS
.data
.zerofill __DATA, __common, _U_STDCONVS_VUCUBICMILLIMETERS, 4,2




	.align 2
.globl _U_STDCONVS_VUCUBICCENTIMETERS
.data
.zerofill __DATA, __common, _U_STDCONVS_VUCUBICCENTIMETERS, 4,2




	.align 2
.globl _U_STDCONVS_VUCUBICDECIMETERS
.data
.zerofill __DATA, __common, _U_STDCONVS_VUCUBICDECIMETERS, 4,2




	.align 2
.globl _U_STDCONVS_VUCUBICMETERS
.data
.zerofill __DATA, __common, _U_STDCONVS_VUCUBICMETERS, 4,2




	.align 2
.globl _U_STDCONVS_VUCUBICDECAMETERS
.data
.zerofill __DATA, __common, _U_STDCONVS_VUCUBICDECAMETERS, 4,2




	.align 2
.globl _U_STDCONVS_VUCUBICHECTOMETERS
.data
.zerofill __DATA, __common, _U_STDCONVS_VUCUBICHECTOMETERS, 4,2




	.align 2
.globl _U_STDCONVS_VUCUBICKILOMETERS
.data
.zerofill __DATA, __common, _U_STDCONVS_VUCUBICKILOMETERS, 4,2




	.align 2
.globl _U_STDCONVS_VUCUBICINCHES
.data
.zerofill __DATA, __common, _U_STDCONVS_VUCUBICINCHES, 4,2




	.align 2
.globl _U_STDCONVS_VUCUBICFEET
.data
.zerofill __DATA, __common, _U_STDCONVS_VUCUBICFEET, 4,2




	.align 2
.globl _U_STDCONVS_VUCUBICYARDS
.data
.zerofill __DATA, __common, _U_STDCONVS_VUCUBICYARDS, 4,2




	.align 2
.globl _U_STDCONVS_VUCUBICMILES
.data
.zerofill __DATA, __common, _U_STDCONVS_VUCUBICMILES, 4,2




	.align 2
.globl _U_STDCONVS_VUMILLILITERS
.data
.zerofill __DATA, __common, _U_STDCONVS_VUMILLILITERS, 4,2




	.align 2
.globl _U_STDCONVS_VUCENTILITERS
.data
.zerofill __DATA, __common, _U_STDCONVS_VUCENTILITERS, 4,2




	.align 2
.globl _U_STDCONVS_VUDECILITERS
.data
.zerofill __DATA, __common, _U_STDCONVS_VUDECILITERS, 4,2




	.align 2
.globl _U_STDCONVS_VULITERS
.data
.zerofill __DATA, __common, _U_STDCONVS_VULITERS, 4,2




	.align 2
.globl _U_STDCONVS_VUDECALITERS
.data
.zerofill __DATA, __common, _U_STDCONVS_VUDECALITERS, 4,2




	.align 2
.globl _U_STDCONVS_VUHECTOLITERS
.data
.zerofill __DATA, __common, _U_STDCONVS_VUHECTOLITERS, 4,2




	.align 2
.globl _U_STDCONVS_VUKILOLITERS
.data
.zerofill __DATA, __common, _U_STDCONVS_VUKILOLITERS, 4,2




	.align 2
.globl _U_STDCONVS_VUACREFEET
.data
.zerofill __DATA, __common, _U_STDCONVS_VUACREFEET, 4,2




	.align 2
.globl _U_STDCONVS_VUACREINCHES
.data
.zerofill __DATA, __common, _U_STDCONVS_VUACREINCHES, 4,2




	.align 2
.globl _U_STDCONVS_VUCORDS
.data
.zerofill __DATA, __common, _U_STDCONVS_VUCORDS, 4,2




	.align 2
.globl _U_STDCONVS_VUCORDFEET
.data
.zerofill __DATA, __common, _U_STDCONVS_VUCORDFEET, 4,2




	.align 2
.globl _U_STDCONVS_VUDECISTERES
.data
.zerofill __DATA, __common, _U_STDCONVS_VUDECISTERES, 4,2




	.align 2
.globl _U_STDCONVS_VUSTERES
.data
.zerofill __DATA, __common, _U_STDCONVS_VUSTERES, 4,2




	.align 2
.globl _U_STDCONVS_VUDECASTERES
.data
.zerofill __DATA, __common, _U_STDCONVS_VUDECASTERES, 4,2




	.align 2
.globl _U_STDCONVS_VUFLUIDGALLONS
.data
.zerofill __DATA, __common, _U_STDCONVS_VUFLUIDGALLONS, 4,2




	.align 2
.globl _U_STDCONVS_VUFLUIDQUARTS
.data
.zerofill __DATA, __common, _U_STDCONVS_VUFLUIDQUARTS, 4,2




	.align 2
.globl _U_STDCONVS_VUFLUIDPINTS
.data
.zerofill __DATA, __common, _U_STDCONVS_VUFLUIDPINTS, 4,2




	.align 2
.globl _U_STDCONVS_VUFLUIDCUPS
.data
.zerofill __DATA, __common, _U_STDCONVS_VUFLUIDCUPS, 4,2




	.align 2
.globl _U_STDCONVS_VUFLUIDGILLS
.data
.zerofill __DATA, __common, _U_STDCONVS_VUFLUIDGILLS, 4,2




	.align 2
.globl _U_STDCONVS_VUFLUIDOUNCES
.data
.zerofill __DATA, __common, _U_STDCONVS_VUFLUIDOUNCES, 4,2




	.align 2
.globl _U_STDCONVS_VUFLUIDTABLESPOONS
.data
.zerofill __DATA, __common, _U_STDCONVS_VUFLUIDTABLESPOONS, 4,2




	.align 2
.globl _U_STDCONVS_VUFLUIDTEASPOONS
.data
.zerofill __DATA, __common, _U_STDCONVS_VUFLUIDTEASPOONS, 4,2




	.align 2
.globl _U_STDCONVS_VUDRYGALLONS
.data
.zerofill __DATA, __common, _U_STDCONVS_VUDRYGALLONS, 4,2




	.align 2
.globl _U_STDCONVS_VUDRYQUARTS
.data
.zerofill __DATA, __common, _U_STDCONVS_VUDRYQUARTS, 4,2




	.align 2
.globl _U_STDCONVS_VUDRYPINTS
.data
.zerofill __DATA, __common, _U_STDCONVS_VUDRYPINTS, 4,2




	.align 2
.globl _U_STDCONVS_VUDRYPECKS
.data
.zerofill __DATA, __common, _U_STDCONVS_VUDRYPECKS, 4,2




	.align 2
.globl _U_STDCONVS_VUDRYBUCKETS
.data
.zerofill __DATA, __common, _U_STDCONVS_VUDRYBUCKETS, 4,2




	.align 2
.globl _U_STDCONVS_VUDRYBUSHELS
.data
.zerofill __DATA, __common, _U_STDCONVS_VUDRYBUSHELS, 4,2




	.align 2
.globl _U_STDCONVS_VUUKGALLONS
.data
.zerofill __DATA, __common, _U_STDCONVS_VUUKGALLONS, 4,2




	.align 2
.globl _U_STDCONVS_VUUKPOTTLES
.data
.zerofill __DATA, __common, _U_STDCONVS_VUUKPOTTLES, 4,2




	.align 2
.globl _U_STDCONVS_VUUKQUARTS
.data
.zerofill __DATA, __common, _U_STDCONVS_VUUKQUARTS, 4,2




	.align 2
.globl _U_STDCONVS_VUUKPINTS
.data
.zerofill __DATA, __common, _U_STDCONVS_VUUKPINTS, 4,2




	.align 2
.globl _U_STDCONVS_VUUKGILLS
.data
.zerofill __DATA, __common, _U_STDCONVS_VUUKGILLS, 4,2




	.align 2
.globl _U_STDCONVS_VUUKOUNCES
.data
.zerofill __DATA, __common, _U_STDCONVS_VUUKOUNCES, 4,2




	.align 2
.globl _U_STDCONVS_VUUKPECKS
.data
.zerofill __DATA, __common, _U_STDCONVS_VUUKPECKS, 4,2




	.align 2
.globl _U_STDCONVS_VUUKBUCKETS
.data
.zerofill __DATA, __common, _U_STDCONVS_VUUKBUCKETS, 4,2




	.align 2
.globl _U_STDCONVS_VUUKBUSHELS
.data
.zerofill __DATA, __common, _U_STDCONVS_VUUKBUSHELS, 4,2




	.align 2
.globl _U_STDCONVS_CBAREA
.data
.zerofill __DATA, __common, _U_STDCONVS_CBAREA, 4,2




	.align 2
.globl _U_STDCONVS_CBDISTANCE
.data
.zerofill __DATA, __common, _U_STDCONVS_CBDISTANCE, 4,2




	.align 2
.globl _U_STDCONVS_CBMASS
.data
.zerofill __DATA, __common, _U_STDCONVS_CBMASS, 4,2




	.align 2
.globl _U_STDCONVS_CBTEMPERATURE
.data
.zerofill __DATA, __common, _U_STDCONVS_CBTEMPERATURE, 4,2




	.align 2
.globl _U_STDCONVS_CBTIME
.data
.zerofill __DATA, __common, _U_STDCONVS_CBTIME, 4,2




	.align 2
.globl _U_STDCONVS_CBVOLUME
.data
.zerofill __DATA, __common, _U_STDCONVS_CBVOLUME, 4,2



.data
	.align 2
.globl	_THREADVARLIST_STDCONVS
_THREADVARLIST_STDCONVS:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const

.data
	.align 2
.globl	_$STDCONVS$_Ld93
_$STDCONVS$_Ld93:
	.short	0,1
	.long	0,-1,8
.reference _$STDCONVS$_Ld92
.globl	_$STDCONVS$_Ld92
_$STDCONVS$_Ld92:
.reference _$STDCONVS$_Ld93
	.ascii	"STDCONVS\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld95
_$STDCONVS$_Ld95:
	.short	0,1
	.long	0,-1,25
.reference _$STDCONVS$_Ld94
.globl	_$STDCONVS$_Ld94
_$STDCONVS$_Ld94:
.reference _$STDCONVS$_Ld95
	.ascii	"Square millimeters (mm^2)\000"
	.align 2
.globl	_$STDCONVS$_Ld97
_$STDCONVS$_Ld97:
	.short	0,1
	.long	0,-1,31
.reference _$STDCONVS$_Ld96
.globl	_$STDCONVS$_Ld96
_$STDCONVS$_Ld96:
.reference _$STDCONVS$_Ld97
	.ascii	"stdconvs.txtausquaremillimeters\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld99
_$STDCONVS$_Ld99:
	.short	0,1
	.long	0,-1,25
.reference _$STDCONVS$_Ld98
.globl	_$STDCONVS$_Ld98
_$STDCONVS$_Ld98:
.reference _$STDCONVS$_Ld99
	.ascii	"Square centimeters (cm^2)\000"
	.align 2
.globl	_$STDCONVS$_Ld101
_$STDCONVS$_Ld101:
	.short	0,1
	.long	0,-1,31
.reference _$STDCONVS$_Ld100
.globl	_$STDCONVS$_Ld100
_$STDCONVS$_Ld100:
.reference _$STDCONVS$_Ld101
	.ascii	"stdconvs.txtausquarecentimeters\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld103
_$STDCONVS$_Ld103:
	.short	0,1
	.long	0,-1,24
.reference _$STDCONVS$_Ld102
.globl	_$STDCONVS$_Ld102
_$STDCONVS$_Ld102:
.reference _$STDCONVS$_Ld103
	.ascii	"Square decimeters (dm^2)\000"
	.align 2
.globl	_$STDCONVS$_Ld105
_$STDCONVS$_Ld105:
	.short	0,1
	.long	0,-1,30
.reference _$STDCONVS$_Ld104
.globl	_$STDCONVS$_Ld104
_$STDCONVS$_Ld104:
.reference _$STDCONVS$_Ld105
	.ascii	"stdconvs.txtausquaredecimeters\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld107
_$STDCONVS$_Ld107:
	.short	0,1
	.long	0,-1,19
.reference _$STDCONVS$_Ld106
.globl	_$STDCONVS$_Ld106
_$STDCONVS$_Ld106:
.reference _$STDCONVS$_Ld107
	.ascii	"Square meters (m^2)\000"
	.align 2
.globl	_$STDCONVS$_Ld109
_$STDCONVS$_Ld109:
	.short	0,1
	.long	0,-1,26
.reference _$STDCONVS$_Ld108
.globl	_$STDCONVS$_Ld108
_$STDCONVS$_Ld108:
.reference _$STDCONVS$_Ld109
	.ascii	"stdconvs.txtausquaremeters\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld111
_$STDCONVS$_Ld111:
	.short	0,1
	.long	0,-1,25
.reference _$STDCONVS$_Ld110
.globl	_$STDCONVS$_Ld110
_$STDCONVS$_Ld110:
.reference _$STDCONVS$_Ld111
	.ascii	"Square decameters (dam^2)\000"
	.align 2
.globl	_$STDCONVS$_Ld113
_$STDCONVS$_Ld113:
	.short	0,1
	.long	0,-1,30
.reference _$STDCONVS$_Ld112
.globl	_$STDCONVS$_Ld112
_$STDCONVS$_Ld112:
.reference _$STDCONVS$_Ld113
	.ascii	"stdconvs.txtausquaredecameters\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld115
_$STDCONVS$_Ld115:
	.short	0,1
	.long	0,-1,25
.reference _$STDCONVS$_Ld114
.globl	_$STDCONVS$_Ld114
_$STDCONVS$_Ld114:
.reference _$STDCONVS$_Ld115
	.ascii	"Square hectometers (hm^2)\000"
	.align 2
.globl	_$STDCONVS$_Ld117
_$STDCONVS$_Ld117:
	.short	0,1
	.long	0,-1,31
.reference _$STDCONVS$_Ld116
.globl	_$STDCONVS$_Ld116
_$STDCONVS$_Ld116:
.reference _$STDCONVS$_Ld117
	.ascii	"stdconvs.txtausquarehectometers\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld119
_$STDCONVS$_Ld119:
	.short	0,1
	.long	0,-1,24
.reference _$STDCONVS$_Ld118
.globl	_$STDCONVS$_Ld118
_$STDCONVS$_Ld118:
.reference _$STDCONVS$_Ld119
	.ascii	"Square kilometers (km^2)\000"
	.align 2
.globl	_$STDCONVS$_Ld121
_$STDCONVS$_Ld121:
	.short	0,1
	.long	0,-1,30
.reference _$STDCONVS$_Ld120
.globl	_$STDCONVS$_Ld120
_$STDCONVS$_Ld120:
.reference _$STDCONVS$_Ld121
	.ascii	"stdconvs.txtausquarekilometers\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld123
_$STDCONVS$_Ld123:
	.short	0,1
	.long	0,-1,18
.reference _$STDCONVS$_Ld122
.globl	_$STDCONVS$_Ld122
_$STDCONVS$_Ld122:
.reference _$STDCONVS$_Ld123
	.ascii	"Square inch (in^2)\000"
	.align 2
.globl	_$STDCONVS$_Ld125
_$STDCONVS$_Ld125:
	.short	0,1
	.long	0,-1,26
.reference _$STDCONVS$_Ld124
.globl	_$STDCONVS$_Ld124
_$STDCONVS$_Ld124:
.reference _$STDCONVS$_Ld125
	.ascii	"stdconvs.txtausquareinches\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld127
_$STDCONVS$_Ld127:
	.short	0,1
	.long	0,-1,18
.reference _$STDCONVS$_Ld126
.globl	_$STDCONVS$_Ld126
_$STDCONVS$_Ld126:
.reference _$STDCONVS$_Ld127
	.ascii	"Square feet (ft^2)\000"
	.align 2
.globl	_$STDCONVS$_Ld129
_$STDCONVS$_Ld129:
	.short	0,1
	.long	0,-1,24
.reference _$STDCONVS$_Ld128
.globl	_$STDCONVS$_Ld128
_$STDCONVS$_Ld128:
.reference _$STDCONVS$_Ld129
	.ascii	"stdconvs.txtausquarefeet\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld131
_$STDCONVS$_Ld131:
	.short	0,1
	.long	0,-1,19
.reference _$STDCONVS$_Ld130
.globl	_$STDCONVS$_Ld130
_$STDCONVS$_Ld130:
.reference _$STDCONVS$_Ld131
	.ascii	"Square yards (yd^2)\000"
	.align 2
.globl	_$STDCONVS$_Ld133
_$STDCONVS$_Ld133:
	.short	0,1
	.long	0,-1,25
.reference _$STDCONVS$_Ld132
.globl	_$STDCONVS$_Ld132
_$STDCONVS$_Ld132:
.reference _$STDCONVS$_Ld133
	.ascii	"stdconvs.txtausquareyards\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld135
_$STDCONVS$_Ld135:
	.short	0,1
	.long	0,-1,20
.reference _$STDCONVS$_Ld134
.globl	_$STDCONVS$_Ld134
_$STDCONVS$_Ld134:
.reference _$STDCONVS$_Ld135
	.ascii	"Square miles  (mi^2)\000"
	.align 2
.globl	_$STDCONVS$_Ld137
_$STDCONVS$_Ld137:
	.short	0,1
	.long	0,-1,25
.reference _$STDCONVS$_Ld136
.globl	_$STDCONVS$_Ld136
_$STDCONVS$_Ld136:
.reference _$STDCONVS$_Ld137
	.ascii	"stdconvs.txtausquaremiles\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld139
_$STDCONVS$_Ld139:
	.short	0,1
	.long	0,-1,21
.reference _$STDCONVS$_Ld138
.globl	_$STDCONVS$_Ld138
_$STDCONVS$_Ld138:
.reference _$STDCONVS$_Ld139
	.ascii	"Square acres (acre^2)\000"
	.align 2
.globl	_$STDCONVS$_Ld141
_$STDCONVS$_Ld141:
	.short	0,1
	.long	0,-1,19
.reference _$STDCONVS$_Ld140
.globl	_$STDCONVS$_Ld140
_$STDCONVS$_Ld140:
.reference _$STDCONVS$_Ld141
	.ascii	"stdconvs.txtauacres\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld143
_$STDCONVS$_Ld143:
	.short	0,1
	.long	0,-1,17
.reference _$STDCONVS$_Ld142
.globl	_$STDCONVS$_Ld142
_$STDCONVS$_Ld142:
.reference _$STDCONVS$_Ld143
	.ascii	"Centares (care^2)\000"
	.align 2
.globl	_$STDCONVS$_Ld145
_$STDCONVS$_Ld145:
	.short	0,1
	.long	0,-1,22
.reference _$STDCONVS$_Ld144
.globl	_$STDCONVS$_Ld144
_$STDCONVS$_Ld144:
.reference _$STDCONVS$_Ld145
	.ascii	"stdconvs.txtaucentares\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld147
_$STDCONVS$_Ld147:
	.short	0,1
	.long	0,-1,16
.reference _$STDCONVS$_Ld146
.globl	_$STDCONVS$_Ld146
_$STDCONVS$_Ld146:
.reference _$STDCONVS$_Ld147
	.ascii	"Ares (are=dam^2)\000"
	.align 2
.globl	_$STDCONVS$_Ld149
_$STDCONVS$_Ld149:
	.short	0,1
	.long	0,-1,18
.reference _$STDCONVS$_Ld148
.globl	_$STDCONVS$_Ld148
_$STDCONVS$_Ld148:
.reference _$STDCONVS$_Ld149
	.ascii	"stdconvs.txtauares\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld151
_$STDCONVS$_Ld151:
	.short	0,1
	.long	0,-1,18
.reference _$STDCONVS$_Ld150
.globl	_$STDCONVS$_Ld150
_$STDCONVS$_Ld150:
.reference _$STDCONVS$_Ld151
	.ascii	"Hectares (ha=hm^2)\000"
	.align 2
.globl	_$STDCONVS$_Ld153
_$STDCONVS$_Ld153:
	.short	0,1
	.long	0,-1,22
.reference _$STDCONVS$_Ld152
.globl	_$STDCONVS$_Ld152
_$STDCONVS$_Ld152:
.reference _$STDCONVS$_Ld153
	.ascii	"stdconvs.txtauhectares\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld155
_$STDCONVS$_Ld155:
	.short	0,1
	.long	0,-1,17
.reference _$STDCONVS$_Ld154
.globl	_$STDCONVS$_Ld154
_$STDCONVS$_Ld154:
.reference _$STDCONVS$_Ld155
	.ascii	"Square Rods (sqr)\000"
	.align 2
.globl	_$STDCONVS$_Ld157
_$STDCONVS$_Ld157:
	.short	0,1
	.long	0,-1,24
.reference _$STDCONVS$_Ld156
.globl	_$STDCONVS$_Ld156
_$STDCONVS$_Ld156:
.reference _$STDCONVS$_Ld157
	.ascii	"stdconvs.txtausquarerods\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld159
_$STDCONVS$_Ld159:
	.short	0,1
	.long	0,-1,21
.reference _$STDCONVS$_Ld158
.globl	_$STDCONVS$_Ld158
_$STDCONVS$_Ld158:
.reference _$STDCONVS$_Ld159
	.ascii	"micro microms (mumum)\000"
	.align 2
.globl	_$STDCONVS$_Ld161
_$STDCONVS$_Ld161:
	.short	0,1
	.long	0,-1,26
.reference _$STDCONVS$_Ld160
.globl	_$STDCONVS$_Ld160
_$STDCONVS$_Ld160:
.reference _$STDCONVS$_Ld161
	.ascii	"stdconvs.txtdumicromicrons\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld163
_$STDCONVS$_Ld163:
	.short	0,1
	.long	0,-1,16
.reference _$STDCONVS$_Ld162
.globl	_$STDCONVS$_Ld162
_$STDCONVS$_Ld162:
.reference _$STDCONVS$_Ld163
	.ascii	"Aengstroem (ang)\000"
	.align 2
.globl	_$STDCONVS$_Ld165
_$STDCONVS$_Ld165:
	.short	0,1
	.long	0,-1,23
.reference _$STDCONVS$_Ld164
.globl	_$STDCONVS$_Ld164
_$STDCONVS$_Ld164:
.reference _$STDCONVS$_Ld165
	.ascii	"stdconvs.txtduangstroms\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld167
_$STDCONVS$_Ld167:
	.short	0,1
	.long	0,-1,19
.reference _$STDCONVS$_Ld166
.globl	_$STDCONVS$_Ld166
_$STDCONVS$_Ld166:
.reference _$STDCONVS$_Ld167
	.ascii	"millimicroms (mmum)\000"
	.align 2
.globl	_$STDCONVS$_Ld169
_$STDCONVS$_Ld169:
	.short	0,1
	.long	0,-1,26
.reference _$STDCONVS$_Ld168
.globl	_$STDCONVS$_Ld168
_$STDCONVS$_Ld168:
.reference _$STDCONVS$_Ld169
	.ascii	"stdconvs.txtdumillimicrons\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld171
_$STDCONVS$_Ld171:
	.short	0,1
	.long	0,-1,12
.reference _$STDCONVS$_Ld170
.globl	_$STDCONVS$_Ld170
_$STDCONVS$_Ld170:
.reference _$STDCONVS$_Ld171
	.ascii	"microns (um)\000"
	.align 2
.globl	_$STDCONVS$_Ld173
_$STDCONVS$_Ld173:
	.short	0,1
	.long	0,-1,21
.reference _$STDCONVS$_Ld172
.globl	_$STDCONVS$_Ld172
_$STDCONVS$_Ld172:
.reference _$STDCONVS$_Ld173
	.ascii	"stdconvs.txtdumicrons\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld175
_$STDCONVS$_Ld175:
	.short	0,1
	.long	0,-1,16
.reference _$STDCONVS$_Ld174
.globl	_$STDCONVS$_Ld174
_$STDCONVS$_Ld174:
.reference _$STDCONVS$_Ld175
	.ascii	"millimeters (mm)\000"
	.align 2
.globl	_$STDCONVS$_Ld177
_$STDCONVS$_Ld177:
	.short	0,1
	.long	0,-1,25
.reference _$STDCONVS$_Ld176
.globl	_$STDCONVS$_Ld176
_$STDCONVS$_Ld176:
.reference _$STDCONVS$_Ld177
	.ascii	"stdconvs.txtdumillimeters\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld179
_$STDCONVS$_Ld179:
	.short	0,1
	.long	0,-1,16
.reference _$STDCONVS$_Ld178
.globl	_$STDCONVS$_Ld178
_$STDCONVS$_Ld178:
.reference _$STDCONVS$_Ld179
	.ascii	"centimeters (cm)\000"
	.align 2
.globl	_$STDCONVS$_Ld181
_$STDCONVS$_Ld181:
	.short	0,1
	.long	0,-1,25
.reference _$STDCONVS$_Ld180
.globl	_$STDCONVS$_Ld180
_$STDCONVS$_Ld180:
.reference _$STDCONVS$_Ld181
	.ascii	"stdconvs.txtducentimeters\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld183
_$STDCONVS$_Ld183:
	.short	0,1
	.long	0,-1,15
.reference _$STDCONVS$_Ld182
.globl	_$STDCONVS$_Ld182
_$STDCONVS$_Ld182:
.reference _$STDCONVS$_Ld183
	.ascii	"decimeters (dm)\000"
	.align 2
.globl	_$STDCONVS$_Ld185
_$STDCONVS$_Ld185:
	.short	0,1
	.long	0,-1,24
.reference _$STDCONVS$_Ld184
.globl	_$STDCONVS$_Ld184
_$STDCONVS$_Ld184:
.reference _$STDCONVS$_Ld185
	.ascii	"stdconvs.txtdudecimeters\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld187
_$STDCONVS$_Ld187:
	.short	0,1
	.long	0,-1,10
.reference _$STDCONVS$_Ld186
.globl	_$STDCONVS$_Ld186
_$STDCONVS$_Ld186:
.reference _$STDCONVS$_Ld187
	.ascii	"meters (m)\000"
	.align 2
.globl	_$STDCONVS$_Ld189
_$STDCONVS$_Ld189:
	.short	0,1
	.long	0,-1,20
.reference _$STDCONVS$_Ld188
.globl	_$STDCONVS$_Ld188
_$STDCONVS$_Ld188:
.reference _$STDCONVS$_Ld189
	.ascii	"stdconvs.txtdumeters\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld191
_$STDCONVS$_Ld191:
	.short	0,1
	.long	0,-1,16
.reference _$STDCONVS$_Ld190
.globl	_$STDCONVS$_Ld190
_$STDCONVS$_Ld190:
.reference _$STDCONVS$_Ld191
	.ascii	"decameters (dam)\000"
	.align 2
.globl	_$STDCONVS$_Ld193
_$STDCONVS$_Ld193:
	.short	0,1
	.long	0,-1,24
.reference _$STDCONVS$_Ld192
.globl	_$STDCONVS$_Ld192
_$STDCONVS$_Ld192:
.reference _$STDCONVS$_Ld193
	.ascii	"stdconvs.txtdudecameters\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld195
_$STDCONVS$_Ld195:
	.short	0,1
	.long	0,-1,16
.reference _$STDCONVS$_Ld194
.globl	_$STDCONVS$_Ld194
_$STDCONVS$_Ld194:
.reference _$STDCONVS$_Ld195
	.ascii	"hectometers (hm)\000"
	.align 2
.globl	_$STDCONVS$_Ld197
_$STDCONVS$_Ld197:
	.short	0,1
	.long	0,-1,25
.reference _$STDCONVS$_Ld196
.globl	_$STDCONVS$_Ld196
_$STDCONVS$_Ld196:
.reference _$STDCONVS$_Ld197
	.ascii	"stdconvs.txtduhectometers\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld199
_$STDCONVS$_Ld199:
	.short	0,1
	.long	0,-1,15
.reference _$STDCONVS$_Ld198
.globl	_$STDCONVS$_Ld198
_$STDCONVS$_Ld198:
.reference _$STDCONVS$_Ld199
	.ascii	"kilometers (km)\000"
	.align 2
.globl	_$STDCONVS$_Ld201
_$STDCONVS$_Ld201:
	.short	0,1
	.long	0,-1,24
.reference _$STDCONVS$_Ld200
.globl	_$STDCONVS$_Ld200
_$STDCONVS$_Ld200:
.reference _$STDCONVS$_Ld201
	.ascii	"stdconvs.txtdukilometers\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld203
_$STDCONVS$_Ld203:
	.short	0,1
	.long	0,-1,15
.reference _$STDCONVS$_Ld202
.globl	_$STDCONVS$_Ld202
_$STDCONVS$_Ld202:
.reference _$STDCONVS$_Ld203
	.ascii	"megameters (Mm)\000"
	.align 2
.globl	_$STDCONVS$_Ld205
_$STDCONVS$_Ld205:
	.short	0,1
	.long	0,-1,24
.reference _$STDCONVS$_Ld204
.globl	_$STDCONVS$_Ld204
_$STDCONVS$_Ld204:
.reference _$STDCONVS$_Ld205
	.ascii	"stdconvs.txtdumegameters\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld207
_$STDCONVS$_Ld207:
	.short	0,1
	.long	0,-1,15
.reference _$STDCONVS$_Ld206
.globl	_$STDCONVS$_Ld206
_$STDCONVS$_Ld206:
.reference _$STDCONVS$_Ld207
	.ascii	"gigameters (Gm)\000"
	.align 2
.globl	_$STDCONVS$_Ld209
_$STDCONVS$_Ld209:
	.short	0,1
	.long	0,-1,24
.reference _$STDCONVS$_Ld208
.globl	_$STDCONVS$_Ld208
_$STDCONVS$_Ld208:
.reference _$STDCONVS$_Ld209
	.ascii	"stdconvs.txtdugigameters\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld211
_$STDCONVS$_Ld211:
	.short	0,1
	.long	0,-1,11
.reference _$STDCONVS$_Ld210
.globl	_$STDCONVS$_Ld210
_$STDCONVS$_Ld210:
.reference _$STDCONVS$_Ld211
	.ascii	"inches (in)\000"
	.align 2
.globl	_$STDCONVS$_Ld213
_$STDCONVS$_Ld213:
	.short	0,1
	.long	0,-1,20
.reference _$STDCONVS$_Ld212
.globl	_$STDCONVS$_Ld212
_$STDCONVS$_Ld212:
.reference _$STDCONVS$_Ld213
	.ascii	"stdconvs.txtduinches\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld215
_$STDCONVS$_Ld215:
	.short	0,1
	.long	0,-1,9
.reference _$STDCONVS$_Ld214
.globl	_$STDCONVS$_Ld214
_$STDCONVS$_Ld214:
.reference _$STDCONVS$_Ld215
	.ascii	"feet (ft)\000"
	.align 2
.globl	_$STDCONVS$_Ld217
_$STDCONVS$_Ld217:
	.short	0,1
	.long	0,-1,18
.reference _$STDCONVS$_Ld216
.globl	_$STDCONVS$_Ld216
_$STDCONVS$_Ld216:
.reference _$STDCONVS$_Ld217
	.ascii	"stdconvs.txtdufeet\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld219
_$STDCONVS$_Ld219:
	.short	0,1
	.long	0,-1,10
.reference _$STDCONVS$_Ld218
.globl	_$STDCONVS$_Ld218
_$STDCONVS$_Ld218:
.reference _$STDCONVS$_Ld219
	.ascii	"yards (yd)\000"
	.align 2
.globl	_$STDCONVS$_Ld221
_$STDCONVS$_Ld221:
	.short	0,1
	.long	0,-1,19
.reference _$STDCONVS$_Ld220
.globl	_$STDCONVS$_Ld220
_$STDCONVS$_Ld220:
.reference _$STDCONVS$_Ld221
	.ascii	"stdconvs.txtduyards\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld223
_$STDCONVS$_Ld223:
	.short	0,1
	.long	0,-1,10
.reference _$STDCONVS$_Ld222
.globl	_$STDCONVS$_Ld222
_$STDCONVS$_Ld222:
.reference _$STDCONVS$_Ld223
	.ascii	"miles (mi)\000"
	.align 2
.globl	_$STDCONVS$_Ld225
_$STDCONVS$_Ld225:
	.short	0,1
	.long	0,-1,19
.reference _$STDCONVS$_Ld224
.globl	_$STDCONVS$_Ld224
_$STDCONVS$_Ld224:
.reference _$STDCONVS$_Ld225
	.ascii	"stdconvs.txtdumiles\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld227
_$STDCONVS$_Ld227:
	.short	0,1
	.long	0,-1,20
.reference _$STDCONVS$_Ld226
.globl	_$STDCONVS$_Ld226
_$STDCONVS$_Ld226:
.reference _$STDCONVS$_Ld227
	.ascii	"nautical miles (nmi)\000"
	.align 2
.globl	_$STDCONVS$_Ld229
_$STDCONVS$_Ld229:
	.short	0,1
	.long	0,-1,27
.reference _$STDCONVS$_Ld228
.globl	_$STDCONVS$_Ld228
_$STDCONVS$_Ld228:
.reference _$STDCONVS$_Ld229
	.ascii	"stdconvs.txtdunauticalmiles\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld231
_$STDCONVS$_Ld231:
	.short	0,1
	.long	0,-1,23
.reference _$STDCONVS$_Ld230
.globl	_$STDCONVS$_Ld230
_$STDCONVS$_Ld230:
.reference _$STDCONVS$_Ld231
	.ascii	"astronomical units (au)\000"
	.align 2
.globl	_$STDCONVS$_Ld233
_$STDCONVS$_Ld233:
	.short	0,1
	.long	0,-1,31
.reference _$STDCONVS$_Ld232
.globl	_$STDCONVS$_Ld232
_$STDCONVS$_Ld232:
.reference _$STDCONVS$_Ld233
	.ascii	"stdconvs.txtduastronomicalunits\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld235
_$STDCONVS$_Ld235:
	.short	0,1
	.long	0,-1,16
.reference _$STDCONVS$_Ld234
.globl	_$STDCONVS$_Ld234
_$STDCONVS$_Ld234:
.reference _$STDCONVS$_Ld235
	.ascii	"light years (ly)\000"
	.align 2
.globl	_$STDCONVS$_Ld237
_$STDCONVS$_Ld237:
	.short	0,1
	.long	0,-1,24
.reference _$STDCONVS$_Ld236
.globl	_$STDCONVS$_Ld236
_$STDCONVS$_Ld236:
.reference _$STDCONVS$_Ld237
	.ascii	"stdconvs.txtdulightyears\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld239
_$STDCONVS$_Ld239:
	.short	0,1
	.long	0,-1,11
.reference _$STDCONVS$_Ld238
.globl	_$STDCONVS$_Ld238
_$STDCONVS$_Ld238:
.reference _$STDCONVS$_Ld239
	.ascii	"Parsec (Ps)\000"
	.align 2
.globl	_$STDCONVS$_Ld241
_$STDCONVS$_Ld241:
	.short	0,1
	.long	0,-1,21
.reference _$STDCONVS$_Ld240
.globl	_$STDCONVS$_Ld240
_$STDCONVS$_Ld240:
.reference _$STDCONVS$_Ld241
	.ascii	"stdconvs.txtduparsecs\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld243
_$STDCONVS$_Ld243:
	.short	0,1
	.long	0,-1,11
.reference _$STDCONVS$_Ld242
.globl	_$STDCONVS$_Ld242
_$STDCONVS$_Ld242:
.reference _$STDCONVS$_Ld243
	.ascii	"Cubits (cb)\000"
	.align 2
.globl	_$STDCONVS$_Ld245
_$STDCONVS$_Ld245:
	.short	0,1
	.long	0,-1,20
.reference _$STDCONVS$_Ld244
.globl	_$STDCONVS$_Ld244
_$STDCONVS$_Ld244:
.reference _$STDCONVS$_Ld245
	.ascii	"stdconvs.txtducubits\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld247
_$STDCONVS$_Ld247:
	.short	0,1
	.long	0,-1,12
.reference _$STDCONVS$_Ld246
.globl	_$STDCONVS$_Ld246
_$STDCONVS$_Ld246:
.reference _$STDCONVS$_Ld247
	.ascii	"Fathom (Fth)\000"
	.align 2
.globl	_$STDCONVS$_Ld249
_$STDCONVS$_Ld249:
	.short	0,1
	.long	0,-1,21
.reference _$STDCONVS$_Ld248
.globl	_$STDCONVS$_Ld248
_$STDCONVS$_Ld248:
.reference _$STDCONVS$_Ld249
	.ascii	"stdconvs.txtdufathoms\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld251
_$STDCONVS$_Ld251:
	.short	0,1
	.long	0,-1,15
.reference _$STDCONVS$_Ld250
.globl	_$STDCONVS$_Ld250
_$STDCONVS$_Ld250:
.reference _$STDCONVS$_Ld251
	.ascii	"Furlongs (furl)\000"
	.align 2
.globl	_$STDCONVS$_Ld253
_$STDCONVS$_Ld253:
	.short	0,1
	.long	0,-1,22
.reference _$STDCONVS$_Ld252
.globl	_$STDCONVS$_Ld252
_$STDCONVS$_Ld252:
.reference _$STDCONVS$_Ld253
	.ascii	"stdconvs.txtdufurlongs\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld255
_$STDCONVS$_Ld255:
	.short	0,1
	.long	0,-1,11
.reference _$STDCONVS$_Ld254
.globl	_$STDCONVS$_Ld254
_$STDCONVS$_Ld254:
.reference _$STDCONVS$_Ld255
	.ascii	"Hands (hnd)\000"
	.align 2
.globl	_$STDCONVS$_Ld257
_$STDCONVS$_Ld257:
	.short	0,1
	.long	0,-1,19
.reference _$STDCONVS$_Ld256
.globl	_$STDCONVS$_Ld256
_$STDCONVS$_Ld256:
.reference _$STDCONVS$_Ld257
	.ascii	"stdconvs.txtduhands\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld259
_$STDCONVS$_Ld259:
	.short	0,1
	.long	0,-1,10
.reference _$STDCONVS$_Ld258
.globl	_$STDCONVS$_Ld258
_$STDCONVS$_Ld258:
.reference _$STDCONVS$_Ld259
	.ascii	"Paces (pc)\000"
	.align 2
.globl	_$STDCONVS$_Ld261
_$STDCONVS$_Ld261:
	.short	0,1
	.long	0,-1,19
.reference _$STDCONVS$_Ld260
.globl	_$STDCONVS$_Ld260
_$STDCONVS$_Ld260:
.reference _$STDCONVS$_Ld261
	.ascii	"stdconvs.txtdupaces\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld263
_$STDCONVS$_Ld263:
	.short	0,1
	.long	0,-1,9
.reference _$STDCONVS$_Ld262
.globl	_$STDCONVS$_Ld262
_$STDCONVS$_Ld262:
.reference _$STDCONVS$_Ld263
	.ascii	"Rods (rd)\000"
	.align 2
.globl	_$STDCONVS$_Ld265
_$STDCONVS$_Ld265:
	.short	0,1
	.long	0,-1,18
.reference _$STDCONVS$_Ld264
.globl	_$STDCONVS$_Ld264
_$STDCONVS$_Ld264:
.reference _$STDCONVS$_Ld265
	.ascii	"stdconvs.txtdurods\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld267
_$STDCONVS$_Ld267:
	.short	0,1
	.long	0,-1,11
.reference _$STDCONVS$_Ld266
.globl	_$STDCONVS$_Ld266
_$STDCONVS$_Ld266:
.reference _$STDCONVS$_Ld267
	.ascii	"Chains (ch)\000"
	.align 2
.globl	_$STDCONVS$_Ld269
_$STDCONVS$_Ld269:
	.short	0,1
	.long	0,-1,20
.reference _$STDCONVS$_Ld268
.globl	_$STDCONVS$_Ld268
_$STDCONVS$_Ld268:
.reference _$STDCONVS$_Ld269
	.ascii	"stdconvs.txtduchains\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld271
_$STDCONVS$_Ld271:
	.short	0,1
	.long	0,-1,11
.reference _$STDCONVS$_Ld270
.globl	_$STDCONVS$_Ld270
_$STDCONVS$_Ld270:
.reference _$STDCONVS$_Ld271
	.ascii	"Links (lnk)\000"
	.align 2
.globl	_$STDCONVS$_Ld273
_$STDCONVS$_Ld273:
	.short	0,1
	.long	0,-1,19
.reference _$STDCONVS$_Ld272
.globl	_$STDCONVS$_Ld272
_$STDCONVS$_Ld272:
.reference _$STDCONVS$_Ld273
	.ascii	"stdconvs.txtdulinks\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld275
_$STDCONVS$_Ld275:
	.short	0,1
	.long	0,-1,11
.reference _$STDCONVS$_Ld274
.globl	_$STDCONVS$_Ld274
_$STDCONVS$_Ld274:
.reference _$STDCONVS$_Ld275
	.ascii	"Pica's (pc)\000"
	.align 2
.globl	_$STDCONVS$_Ld277
_$STDCONVS$_Ld277:
	.short	0,1
	.long	0,-1,19
.reference _$STDCONVS$_Ld276
.globl	_$STDCONVS$_Ld276
_$STDCONVS$_Ld276:
.reference _$STDCONVS$_Ld277
	.ascii	"stdconvs.txtdupicas\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld279
_$STDCONVS$_Ld279:
	.short	0,1
	.long	0,-1,13
.reference _$STDCONVS$_Ld278
.globl	_$STDCONVS$_Ld278
_$STDCONVS$_Ld278:
.reference _$STDCONVS$_Ld279
	.ascii	"Points (pnts)\000"
	.align 2
.globl	_$STDCONVS$_Ld281
_$STDCONVS$_Ld281:
	.short	0,1
	.long	0,-1,20
.reference _$STDCONVS$_Ld280
.globl	_$STDCONVS$_Ld280
_$STDCONVS$_Ld280:
.reference _$STDCONVS$_Ld281
	.ascii	"stdconvs.txtdupoints\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld283
_$STDCONVS$_Ld283:
	.short	0,1
	.long	0,-1,14
.reference _$STDCONVS$_Ld282
.globl	_$STDCONVS$_Ld282
_$STDCONVS$_Ld282:
.reference _$STDCONVS$_Ld283
	.ascii	"nanograms (ng)\000"
	.align 2
.globl	_$STDCONVS$_Ld285
_$STDCONVS$_Ld285:
	.short	0,1
	.long	0,-1,23
.reference _$STDCONVS$_Ld284
.globl	_$STDCONVS$_Ld284
_$STDCONVS$_Ld284:
.reference _$STDCONVS$_Ld285
	.ascii	"stdconvs.txtmunanograms\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld287
_$STDCONVS$_Ld287:
	.short	0,1
	.long	0,-1,15
.reference _$STDCONVS$_Ld286
.globl	_$STDCONVS$_Ld286
_$STDCONVS$_Ld286:
.reference _$STDCONVS$_Ld287
	.ascii	"micrograms (um)\000"
	.align 2
.globl	_$STDCONVS$_Ld289
_$STDCONVS$_Ld289:
	.short	0,1
	.long	0,-1,24
.reference _$STDCONVS$_Ld288
.globl	_$STDCONVS$_Ld288
_$STDCONVS$_Ld288:
.reference _$STDCONVS$_Ld289
	.ascii	"stdconvs.txtmumicrograms\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld291
_$STDCONVS$_Ld291:
	.short	0,1
	.long	0,-1,15
.reference _$STDCONVS$_Ld290
.globl	_$STDCONVS$_Ld290
_$STDCONVS$_Ld290:
.reference _$STDCONVS$_Ld291
	.ascii	"milligrams (mg)\000"
	.align 2
.globl	_$STDCONVS$_Ld293
_$STDCONVS$_Ld293:
	.short	0,1
	.long	0,-1,24
.reference _$STDCONVS$_Ld292
.globl	_$STDCONVS$_Ld292
_$STDCONVS$_Ld292:
.reference _$STDCONVS$_Ld293
	.ascii	"stdconvs.txtmumilligrams\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld295
_$STDCONVS$_Ld295:
	.short	0,1
	.long	0,-1,15
.reference _$STDCONVS$_Ld294
.globl	_$STDCONVS$_Ld294
_$STDCONVS$_Ld294:
.reference _$STDCONVS$_Ld295
	.ascii	"centigrams (cg)\000"
	.align 2
.globl	_$STDCONVS$_Ld297
_$STDCONVS$_Ld297:
	.short	0,1
	.long	0,-1,24
.reference _$STDCONVS$_Ld296
.globl	_$STDCONVS$_Ld296
_$STDCONVS$_Ld296:
.reference _$STDCONVS$_Ld297
	.ascii	"stdconvs.txtmucentigrams\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld299
_$STDCONVS$_Ld299:
	.short	0,1
	.long	0,-1,14
.reference _$STDCONVS$_Ld298
.globl	_$STDCONVS$_Ld298
_$STDCONVS$_Ld298:
.reference _$STDCONVS$_Ld299
	.ascii	"decigrams (dg)\000"
	.align 2
.globl	_$STDCONVS$_Ld301
_$STDCONVS$_Ld301:
	.short	0,1
	.long	0,-1,23
.reference _$STDCONVS$_Ld300
.globl	_$STDCONVS$_Ld300
_$STDCONVS$_Ld300:
.reference _$STDCONVS$_Ld301
	.ascii	"stdconvs.txtmudecigrams\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld303
_$STDCONVS$_Ld303:
	.short	0,1
	.long	0,-1,9
.reference _$STDCONVS$_Ld302
.globl	_$STDCONVS$_Ld302
_$STDCONVS$_Ld302:
.reference _$STDCONVS$_Ld303
	.ascii	"grams (g)\000"
	.align 2
.globl	_$STDCONVS$_Ld305
_$STDCONVS$_Ld305:
	.short	0,1
	.long	0,-1,19
.reference _$STDCONVS$_Ld304
.globl	_$STDCONVS$_Ld304
_$STDCONVS$_Ld304:
.reference _$STDCONVS$_Ld305
	.ascii	"stdconvs.txtmugrams\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld307
_$STDCONVS$_Ld307:
	.short	0,1
	.long	0,-1,15
.reference _$STDCONVS$_Ld306
.globl	_$STDCONVS$_Ld306
_$STDCONVS$_Ld306:
.reference _$STDCONVS$_Ld307
	.ascii	"decagrams (dag)\000"
	.align 2
.globl	_$STDCONVS$_Ld309
_$STDCONVS$_Ld309:
	.short	0,1
	.long	0,-1,23
.reference _$STDCONVS$_Ld308
.globl	_$STDCONVS$_Ld308
_$STDCONVS$_Ld308:
.reference _$STDCONVS$_Ld309
	.ascii	"stdconvs.txtmudecagrams\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld311
_$STDCONVS$_Ld311:
	.short	0,1
	.long	0,-1,15
.reference _$STDCONVS$_Ld310
.globl	_$STDCONVS$_Ld310
_$STDCONVS$_Ld310:
.reference _$STDCONVS$_Ld311
	.ascii	"hectograms (hg)\000"
	.align 2
.globl	_$STDCONVS$_Ld313
_$STDCONVS$_Ld313:
	.short	0,1
	.long	0,-1,24
.reference _$STDCONVS$_Ld312
.globl	_$STDCONVS$_Ld312
_$STDCONVS$_Ld312:
.reference _$STDCONVS$_Ld313
	.ascii	"stdconvs.txtmuhectograms\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld315
_$STDCONVS$_Ld315:
	.short	0,1
	.long	0,-1,14
.reference _$STDCONVS$_Ld314
.globl	_$STDCONVS$_Ld314
_$STDCONVS$_Ld314:
.reference _$STDCONVS$_Ld315
	.ascii	"kilograms (kg)\000"
	.align 2
.globl	_$STDCONVS$_Ld317
_$STDCONVS$_Ld317:
	.short	0,1
	.long	0,-1,23
.reference _$STDCONVS$_Ld316
.globl	_$STDCONVS$_Ld316
_$STDCONVS$_Ld316:
.reference _$STDCONVS$_Ld317
	.ascii	"stdconvs.txtmukilograms\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld319
_$STDCONVS$_Ld319:
	.short	0,1
	.long	0,-1,14
.reference _$STDCONVS$_Ld318
.globl	_$STDCONVS$_Ld318
_$STDCONVS$_Ld318:
.reference _$STDCONVS$_Ld319
	.ascii	"metric ton (t)\000"
	.align 2
.globl	_$STDCONVS$_Ld321
_$STDCONVS$_Ld321:
	.short	0,1
	.long	0,-1,24
.reference _$STDCONVS$_Ld320
.globl	_$STDCONVS$_Ld320
_$STDCONVS$_Ld320:
.reference _$STDCONVS$_Ld321
	.ascii	"stdconvs.txtmumetrictons\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld323
_$STDCONVS$_Ld323:
	.short	0,1
	.long	0,-1,11
.reference _$STDCONVS$_Ld322
.globl	_$STDCONVS$_Ld322
_$STDCONVS$_Ld322:
.reference _$STDCONVS$_Ld323
	.ascii	"dramgs (??)\000"
	.align 2
.globl	_$STDCONVS$_Ld325
_$STDCONVS$_Ld325:
	.short	0,1
	.long	0,-1,19
.reference _$STDCONVS$_Ld324
.globl	_$STDCONVS$_Ld324
_$STDCONVS$_Ld324:
.reference _$STDCONVS$_Ld325
	.ascii	"stdconvs.txtmudrams\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld327
_$STDCONVS$_Ld327:
	.short	0,1
	.long	0,-1,11
.reference _$STDCONVS$_Ld326
.globl	_$STDCONVS$_Ld326
_$STDCONVS$_Ld326:
.reference _$STDCONVS$_Ld327
	.ascii	"grains (??)\000"
	.align 2
.globl	_$STDCONVS$_Ld329
_$STDCONVS$_Ld329:
	.short	0,1
	.long	0,-1,20
.reference _$STDCONVS$_Ld328
.globl	_$STDCONVS$_Ld328
_$STDCONVS$_Ld328:
.reference _$STDCONVS$_Ld329
	.ascii	"stdconvs.txtmugrains\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld331
_$STDCONVS$_Ld331:
	.short	0,1
	.long	0,-1,12
.reference _$STDCONVS$_Ld330
.globl	_$STDCONVS$_Ld330
_$STDCONVS$_Ld330:
.reference _$STDCONVS$_Ld331
	.ascii	"longton (??)\000"
	.align 2
.globl	_$STDCONVS$_Ld333
_$STDCONVS$_Ld333:
	.short	0,1
	.long	0,-1,22
.reference _$STDCONVS$_Ld332
.globl	_$STDCONVS$_Ld332
_$STDCONVS$_Ld332:
.reference _$STDCONVS$_Ld333
	.ascii	"stdconvs.txtmulongtons\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld335
_$STDCONVS$_Ld335:
	.short	0,1
	.long	0,-1,17
.reference _$STDCONVS$_Ld334
.globl	_$STDCONVS$_Ld334
_$STDCONVS$_Ld334:
.reference _$STDCONVS$_Ld335
	.ascii	"imperial ton (??)\000"
	.align 2
.globl	_$STDCONVS$_Ld337
_$STDCONVS$_Ld337:
	.short	0,1
	.long	0,-1,18
.reference _$STDCONVS$_Ld336
.globl	_$STDCONVS$_Ld336
_$STDCONVS$_Ld336:
.reference _$STDCONVS$_Ld337
	.ascii	"stdconvs.txtmutons\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld339
_$STDCONVS$_Ld339:
	.short	0,1
	.long	0,-1,10
.reference _$STDCONVS$_Ld338
.globl	_$STDCONVS$_Ld338
_$STDCONVS$_Ld338:
.reference _$STDCONVS$_Ld339
	.ascii	"ounce (??)\000"
	.align 2
.globl	_$STDCONVS$_Ld341
_$STDCONVS$_Ld341:
	.short	0,1
	.long	0,-1,20
.reference _$STDCONVS$_Ld340
.globl	_$STDCONVS$_Ld340
_$STDCONVS$_Ld340:
.reference _$STDCONVS$_Ld341
	.ascii	"stdconvs.txtmuounces\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld343
_$STDCONVS$_Ld343:
	.short	0,1
	.long	0,-1,11
.reference _$STDCONVS$_Ld342
.globl	_$STDCONVS$_Ld342
_$STDCONVS$_Ld342:
.reference _$STDCONVS$_Ld343
	.ascii	"pounds (??)\000"
	.align 2
.globl	_$STDCONVS$_Ld345
_$STDCONVS$_Ld345:
	.short	0,1
	.long	0,-1,20
.reference _$STDCONVS$_Ld344
.globl	_$STDCONVS$_Ld344
_$STDCONVS$_Ld344:
.reference _$STDCONVS$_Ld345
	.ascii	"stdconvs.txtmupounds\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld347
_$STDCONVS$_Ld347:
	.short	0,1
	.long	0,-1,11
.reference _$STDCONVS$_Ld346
.globl	_$STDCONVS$_Ld346
_$STDCONVS$_Ld346:
.reference _$STDCONVS$_Ld347
	.ascii	"stones (??)\000"
	.align 2
.globl	_$STDCONVS$_Ld349
_$STDCONVS$_Ld349:
	.short	0,1
	.long	0,-1,20
.reference _$STDCONVS$_Ld348
.globl	_$STDCONVS$_Ld348
_$STDCONVS$_Ld348:
.reference _$STDCONVS$_Ld349
	.ascii	"stdconvs.txtmustones\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld351
_$STDCONVS$_Ld351:
	.short	0,1
	.long	0,-1,22
.reference _$STDCONVS$_Ld350
.globl	_$STDCONVS$_Ld350
_$STDCONVS$_Ld350:
.reference _$STDCONVS$_Ld351
	.ascii	"degrees Celsius (degC)\000"
	.align 2
.globl	_$STDCONVS$_Ld353
_$STDCONVS$_Ld353:
	.short	0,1
	.long	0,-1,21
.reference _$STDCONVS$_Ld352
.globl	_$STDCONVS$_Ld352
_$STDCONVS$_Ld352:
.reference _$STDCONVS$_Ld353
	.ascii	"stdconvs.txttucelsius\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld355
_$STDCONVS$_Ld355:
	.short	0,1
	.long	0,-1,18
.reference _$STDCONVS$_Ld354
.globl	_$STDCONVS$_Ld354
_$STDCONVS$_Ld354:
.reference _$STDCONVS$_Ld355
	.ascii	"degrees Kelvin (K)\000"
	.align 2
.globl	_$STDCONVS$_Ld357
_$STDCONVS$_Ld357:
	.short	0,1
	.long	0,-1,20
.reference _$STDCONVS$_Ld356
.globl	_$STDCONVS$_Ld356
_$STDCONVS$_Ld356:
.reference _$STDCONVS$_Ld357
	.ascii	"stdconvs.txttukelvin\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld359
_$STDCONVS$_Ld359:
	.short	0,1
	.long	0,-1,25
.reference _$STDCONVS$_Ld358
.globl	_$STDCONVS$_Ld358
_$STDCONVS$_Ld358:
.reference _$STDCONVS$_Ld359
	.ascii	"degrees Fahrenheit (degF)\000"
	.align 2
.globl	_$STDCONVS$_Ld361
_$STDCONVS$_Ld361:
	.short	0,1
	.long	0,-1,24
.reference _$STDCONVS$_Ld360
.globl	_$STDCONVS$_Ld360
_$STDCONVS$_Ld360:
.reference _$STDCONVS$_Ld361
	.ascii	"stdconvs.txttufahrenheit\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld363
_$STDCONVS$_Ld363:
	.short	0,1
	.long	0,-1,22
.reference _$STDCONVS$_Ld362
.globl	_$STDCONVS$_Ld362
_$STDCONVS$_Ld362:
.reference _$STDCONVS$_Ld363
	.ascii	"degrees Rankine (degR)\000"
	.align 2
.globl	_$STDCONVS$_Ld365
_$STDCONVS$_Ld365:
	.short	0,1
	.long	0,-1,21
.reference _$STDCONVS$_Ld364
.globl	_$STDCONVS$_Ld364
_$STDCONVS$_Ld364:
.reference _$STDCONVS$_Ld365
	.ascii	"stdconvs.txtturankine\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld367
_$STDCONVS$_Ld367:
	.short	0,1
	.long	0,-1,24
.reference _$STDCONVS$_Ld366
.globl	_$STDCONVS$_Ld366
_$STDCONVS$_Ld366:
.reference _$STDCONVS$_Ld367
	.ascii	"degrees Reamur (degReam)\000"
	.align 2
.globl	_$STDCONVS$_Ld369
_$STDCONVS$_Ld369:
	.short	0,1
	.long	0,-1,20
.reference _$STDCONVS$_Ld368
.globl	_$STDCONVS$_Ld368
_$STDCONVS$_Ld368:
.reference _$STDCONVS$_Ld369
	.ascii	"stdconvs.txttureamur\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld371
_$STDCONVS$_Ld371:
	.short	0,1
	.long	0,-1,18
.reference _$STDCONVS$_Ld370
.globl	_$STDCONVS$_Ld370
_$STDCONVS$_Ld370:
.reference _$STDCONVS$_Ld371
	.ascii	"milli seconds (ms)\000"
	.align 2
.globl	_$STDCONVS$_Ld373
_$STDCONVS$_Ld373:
	.short	0,1
	.long	0,-1,26
.reference _$STDCONVS$_Ld372
.globl	_$STDCONVS$_Ld372
_$STDCONVS$_Ld372:
.reference _$STDCONVS$_Ld373
	.ascii	"stdconvs.txttumilliseconds\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld375
_$STDCONVS$_Ld375:
	.short	0,1
	.long	0,-1,11
.reference _$STDCONVS$_Ld374
.globl	_$STDCONVS$_Ld374
_$STDCONVS$_Ld374:
.reference _$STDCONVS$_Ld375
	.ascii	"seconds (s)\000"
	.align 2
.globl	_$STDCONVS$_Ld377
_$STDCONVS$_Ld377:
	.short	0,1
	.long	0,-1,21
.reference _$STDCONVS$_Ld376
.globl	_$STDCONVS$_Ld376
_$STDCONVS$_Ld376:
.reference _$STDCONVS$_Ld377
	.ascii	"stdconvs.txttuseconds\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld379
_$STDCONVS$_Ld379:
	.short	0,1
	.long	0,-1,13
.reference _$STDCONVS$_Ld378
.globl	_$STDCONVS$_Ld378
_$STDCONVS$_Ld378:
.reference _$STDCONVS$_Ld379
	.ascii	"minutes (min)\000"
	.align 2
.globl	_$STDCONVS$_Ld381
_$STDCONVS$_Ld381:
	.short	0,1
	.long	0,-1,21
.reference _$STDCONVS$_Ld380
.globl	_$STDCONVS$_Ld380
_$STDCONVS$_Ld380:
.reference _$STDCONVS$_Ld381
	.ascii	"stdconvs.txttuminutes\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld383
_$STDCONVS$_Ld383:
	.short	0,1
	.long	0,-1,10
.reference _$STDCONVS$_Ld382
.globl	_$STDCONVS$_Ld382
_$STDCONVS$_Ld382:
.reference _$STDCONVS$_Ld383
	.ascii	"hours (hr)\000"
	.align 2
.globl	_$STDCONVS$_Ld385
_$STDCONVS$_Ld385:
	.short	0,1
	.long	0,-1,19
.reference _$STDCONVS$_Ld384
.globl	_$STDCONVS$_Ld384
_$STDCONVS$_Ld384:
.reference _$STDCONVS$_Ld385
	.ascii	"stdconvs.txttuhours\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld387
_$STDCONVS$_Ld387:
	.short	0,1
	.long	0,-1,11
.reference _$STDCONVS$_Ld386
.globl	_$STDCONVS$_Ld386
_$STDCONVS$_Ld386:
.reference _$STDCONVS$_Ld387
	.ascii	"days (days)\000"
	.align 2
.globl	_$STDCONVS$_Ld389
_$STDCONVS$_Ld389:
	.short	0,1
	.long	0,-1,18
.reference _$STDCONVS$_Ld388
.globl	_$STDCONVS$_Ld388
_$STDCONVS$_Ld388:
.reference _$STDCONVS$_Ld389
	.ascii	"stdconvs.txttudays\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld391
_$STDCONVS$_Ld391:
	.short	0,1
	.long	0,-1,13
.reference _$STDCONVS$_Ld390
.globl	_$STDCONVS$_Ld390
_$STDCONVS$_Ld390:
.reference _$STDCONVS$_Ld391
	.ascii	"weeks (weeks)\000"
	.align 2
.globl	_$STDCONVS$_Ld393
_$STDCONVS$_Ld393:
	.short	0,1
	.long	0,-1,19
.reference _$STDCONVS$_Ld392
.globl	_$STDCONVS$_Ld392
_$STDCONVS$_Ld392:
.reference _$STDCONVS$_Ld393
	.ascii	"stdconvs.txttuweeks\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld395
_$STDCONVS$_Ld395:
	.short	0,1
	.long	0,-1,15
.reference _$STDCONVS$_Ld394
.globl	_$STDCONVS$_Ld394
_$STDCONVS$_Ld394:
.reference _$STDCONVS$_Ld395
	.ascii	"Fortnights (??)\000"
	.align 2
.globl	_$STDCONVS$_Ld397
_$STDCONVS$_Ld397:
	.short	0,1
	.long	0,-1,24
.reference _$STDCONVS$_Ld396
.globl	_$STDCONVS$_Ld396
_$STDCONVS$_Ld396:
.reference _$STDCONVS$_Ld397
	.ascii	"stdconvs.txttufortnights\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld399
_$STDCONVS$_Ld399:
	.short	0,1
	.long	0,-1,15
.reference _$STDCONVS$_Ld398
.globl	_$STDCONVS$_Ld398
_$STDCONVS$_Ld398:
.reference _$STDCONVS$_Ld399
	.ascii	"Months (months)\000"
	.align 2
.globl	_$STDCONVS$_Ld401
_$STDCONVS$_Ld401:
	.short	0,1
	.long	0,-1,20
.reference _$STDCONVS$_Ld400
.globl	_$STDCONVS$_Ld400
_$STDCONVS$_Ld400:
.reference _$STDCONVS$_Ld401
	.ascii	"stdconvs.txttumonths\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld403
_$STDCONVS$_Ld403:
	.short	0,1
	.long	0,-1,13
.reference _$STDCONVS$_Ld402
.globl	_$STDCONVS$_Ld402
_$STDCONVS$_Ld402:
.reference _$STDCONVS$_Ld403
	.ascii	"Years (years)\000"
	.align 2
.globl	_$STDCONVS$_Ld405
_$STDCONVS$_Ld405:
	.short	0,1
	.long	0,-1,19
.reference _$STDCONVS$_Ld404
.globl	_$STDCONVS$_Ld404
_$STDCONVS$_Ld404:
.reference _$STDCONVS$_Ld405
	.ascii	"stdconvs.txttuyears\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld407
_$STDCONVS$_Ld407:
	.short	0,1
	.long	0,-1,17
.reference _$STDCONVS$_Ld406
.globl	_$STDCONVS$_Ld406
_$STDCONVS$_Ld406:
.reference _$STDCONVS$_Ld407
	.ascii	"Decades (decades)\000"
	.align 2
.globl	_$STDCONVS$_Ld409
_$STDCONVS$_Ld409:
	.short	0,1
	.long	0,-1,21
.reference _$STDCONVS$_Ld408
.globl	_$STDCONVS$_Ld408
_$STDCONVS$_Ld408:
.reference _$STDCONVS$_Ld409
	.ascii	"stdconvs.txttudecades\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld411
_$STDCONVS$_Ld411:
	.short	0,1
	.long	0,-1,21
.reference _$STDCONVS$_Ld410
.globl	_$STDCONVS$_Ld410
_$STDCONVS$_Ld410:
.reference _$STDCONVS$_Ld411
	.ascii	"Centuries (centuries)\000"
	.align 2
.globl	_$STDCONVS$_Ld413
_$STDCONVS$_Ld413:
	.short	0,1
	.long	0,-1,23
.reference _$STDCONVS$_Ld412
.globl	_$STDCONVS$_Ld412
_$STDCONVS$_Ld412:
.reference _$STDCONVS$_Ld413
	.ascii	"stdconvs.txttucenturies\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld415
_$STDCONVS$_Ld415:
	.short	0,1
	.long	0,-1,20
.reference _$STDCONVS$_Ld414
.globl	_$STDCONVS$_Ld414
_$STDCONVS$_Ld414:
.reference _$STDCONVS$_Ld415
	.ascii	"Millennia (millenia)\000"
	.align 2
.globl	_$STDCONVS$_Ld417
_$STDCONVS$_Ld417:
	.short	0,1
	.long	0,-1,23
.reference _$STDCONVS$_Ld416
.globl	_$STDCONVS$_Ld416
_$STDCONVS$_Ld416:
.reference _$STDCONVS$_Ld417
	.ascii	"stdconvs.txttumillennia\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld419
_$STDCONVS$_Ld419:
	.short	0,1
	.long	0,-1,13
.reference _$STDCONVS$_Ld418
.globl	_$STDCONVS$_Ld418
_$STDCONVS$_Ld418:
.reference _$STDCONVS$_Ld419
	.ascii	"DateTime (??)\000"
	.align 2
.globl	_$STDCONVS$_Ld421
_$STDCONVS$_Ld421:
	.short	0,1
	.long	0,-1,22
.reference _$STDCONVS$_Ld420
.globl	_$STDCONVS$_Ld420
_$STDCONVS$_Ld420:
.reference _$STDCONVS$_Ld421
	.ascii	"stdconvs.txttudatetime\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld423
_$STDCONVS$_Ld423:
	.short	0,1
	.long	0,-1,15
.reference _$STDCONVS$_Ld422
.globl	_$STDCONVS$_Ld422
_$STDCONVS$_Ld422:
.reference _$STDCONVS$_Ld423
	.ascii	"JulianDate (??)\000"
	.align 2
.globl	_$STDCONVS$_Ld425
_$STDCONVS$_Ld425:
	.short	0,1
	.long	0,-1,24
.reference _$STDCONVS$_Ld424
.globl	_$STDCONVS$_Ld424
_$STDCONVS$_Ld424:
.reference _$STDCONVS$_Ld425
	.ascii	"stdconvs.txttujuliandate\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld427
_$STDCONVS$_Ld427:
	.short	0,1
	.long	0,-1,24
.reference _$STDCONVS$_Ld426
.globl	_$STDCONVS$_Ld426
_$STDCONVS$_Ld426:
.reference _$STDCONVS$_Ld427
	.ascii	"Modified JulianData (??)\000"
	.align 2
.globl	_$STDCONVS$_Ld429
_$STDCONVS$_Ld429:
	.short	0,1
	.long	0,-1,32
.reference _$STDCONVS$_Ld428
.globl	_$STDCONVS$_Ld428
_$STDCONVS$_Ld428:
.reference _$STDCONVS$_Ld429
	.ascii	"stdconvs.txttumodifiedjuliandate\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld431
_$STDCONVS$_Ld431:
	.short	0,1
	.long	0,-1,24
.reference _$STDCONVS$_Ld430
.globl	_$STDCONVS$_Ld430
_$STDCONVS$_Ld430:
.reference _$STDCONVS$_Ld431
	.ascii	"cubic millimeters (mm^3)\000"
	.align 2
.globl	_$STDCONVS$_Ld433
_$STDCONVS$_Ld433:
	.short	0,1
	.long	0,-1,30
.reference _$STDCONVS$_Ld432
.globl	_$STDCONVS$_Ld432
_$STDCONVS$_Ld432:
.reference _$STDCONVS$_Ld433
	.ascii	"stdconvs.txtvucubicmillimeters\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld435
_$STDCONVS$_Ld435:
	.short	0,1
	.long	0,-1,24
.reference _$STDCONVS$_Ld434
.globl	_$STDCONVS$_Ld434
_$STDCONVS$_Ld434:
.reference _$STDCONVS$_Ld435
	.ascii	"cubic centimeters (cm^3)\000"
	.align 2
.globl	_$STDCONVS$_Ld437
_$STDCONVS$_Ld437:
	.short	0,1
	.long	0,-1,30
.reference _$STDCONVS$_Ld436
.globl	_$STDCONVS$_Ld436
_$STDCONVS$_Ld436:
.reference _$STDCONVS$_Ld437
	.ascii	"stdconvs.txtvucubiccentimeters\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld439
_$STDCONVS$_Ld439:
	.short	0,1
	.long	0,-1,23
.reference _$STDCONVS$_Ld438
.globl	_$STDCONVS$_Ld438
_$STDCONVS$_Ld438:
.reference _$STDCONVS$_Ld439
	.ascii	"cubic decimeters (dm^3)\000"
	.align 2
.globl	_$STDCONVS$_Ld441
_$STDCONVS$_Ld441:
	.short	0,1
	.long	0,-1,29
.reference _$STDCONVS$_Ld440
.globl	_$STDCONVS$_Ld440
_$STDCONVS$_Ld440:
.reference _$STDCONVS$_Ld441
	.ascii	"stdconvs.txtvucubicdecimeters\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld443
_$STDCONVS$_Ld443:
	.short	0,1
	.long	0,-1,18
.reference _$STDCONVS$_Ld442
.globl	_$STDCONVS$_Ld442
_$STDCONVS$_Ld442:
.reference _$STDCONVS$_Ld443
	.ascii	"cubic meters (m^3)\000"
	.align 2
.globl	_$STDCONVS$_Ld445
_$STDCONVS$_Ld445:
	.short	0,1
	.long	0,-1,25
.reference _$STDCONVS$_Ld444
.globl	_$STDCONVS$_Ld444
_$STDCONVS$_Ld444:
.reference _$STDCONVS$_Ld445
	.ascii	"stdconvs.txtvucubicmeters\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld447
_$STDCONVS$_Ld447:
	.short	0,1
	.long	0,-1,24
.reference _$STDCONVS$_Ld446
.globl	_$STDCONVS$_Ld446
_$STDCONVS$_Ld446:
.reference _$STDCONVS$_Ld447
	.ascii	"cubic decameters (dam^3)\000"
	.align 2
.globl	_$STDCONVS$_Ld449
_$STDCONVS$_Ld449:
	.short	0,1
	.long	0,-1,29
.reference _$STDCONVS$_Ld448
.globl	_$STDCONVS$_Ld448
_$STDCONVS$_Ld448:
.reference _$STDCONVS$_Ld449
	.ascii	"stdconvs.txtvucubicdecameters\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld451
_$STDCONVS$_Ld451:
	.short	0,1
	.long	0,-1,24
.reference _$STDCONVS$_Ld450
.globl	_$STDCONVS$_Ld450
_$STDCONVS$_Ld450:
.reference _$STDCONVS$_Ld451
	.ascii	"cubic hectometers (hm^3)\000"
	.align 2
.globl	_$STDCONVS$_Ld453
_$STDCONVS$_Ld453:
	.short	0,1
	.long	0,-1,30
.reference _$STDCONVS$_Ld452
.globl	_$STDCONVS$_Ld452
_$STDCONVS$_Ld452:
.reference _$STDCONVS$_Ld453
	.ascii	"stdconvs.txtvucubichectometers\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld455
_$STDCONVS$_Ld455:
	.short	0,1
	.long	0,-1,23
.reference _$STDCONVS$_Ld454
.globl	_$STDCONVS$_Ld454
_$STDCONVS$_Ld454:
.reference _$STDCONVS$_Ld455
	.ascii	"cubic kilometers (km^3)\000"
	.align 2
.globl	_$STDCONVS$_Ld457
_$STDCONVS$_Ld457:
	.short	0,1
	.long	0,-1,29
.reference _$STDCONVS$_Ld456
.globl	_$STDCONVS$_Ld456
_$STDCONVS$_Ld456:
.reference _$STDCONVS$_Ld457
	.ascii	"stdconvs.txtvucubickilometers\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld459
_$STDCONVS$_Ld459:
	.short	0,1
	.long	0,-1,19
.reference _$STDCONVS$_Ld458
.globl	_$STDCONVS$_Ld458
_$STDCONVS$_Ld458:
.reference _$STDCONVS$_Ld459
	.ascii	"cubic inches (in^3)\000"
	.align 2
.globl	_$STDCONVS$_Ld461
_$STDCONVS$_Ld461:
	.short	0,1
	.long	0,-1,25
.reference _$STDCONVS$_Ld460
.globl	_$STDCONVS$_Ld460
_$STDCONVS$_Ld460:
.reference _$STDCONVS$_Ld461
	.ascii	"stdconvs.txtvucubicinches\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld463
_$STDCONVS$_Ld463:
	.short	0,1
	.long	0,-1,17
.reference _$STDCONVS$_Ld462
.globl	_$STDCONVS$_Ld462
_$STDCONVS$_Ld462:
.reference _$STDCONVS$_Ld463
	.ascii	"cubic feet (ft^3)\000"
	.align 2
.globl	_$STDCONVS$_Ld465
_$STDCONVS$_Ld465:
	.short	0,1
	.long	0,-1,23
.reference _$STDCONVS$_Ld464
.globl	_$STDCONVS$_Ld464
_$STDCONVS$_Ld464:
.reference _$STDCONVS$_Ld465
	.ascii	"stdconvs.txtvucubicfeet\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld467
_$STDCONVS$_Ld467:
	.short	0,1
	.long	0,-1,18
.reference _$STDCONVS$_Ld466
.globl	_$STDCONVS$_Ld466
_$STDCONVS$_Ld466:
.reference _$STDCONVS$_Ld467
	.ascii	"cubic yards (yd^3)\000"
	.align 2
.globl	_$STDCONVS$_Ld469
_$STDCONVS$_Ld469:
	.short	0,1
	.long	0,-1,24
.reference _$STDCONVS$_Ld468
.globl	_$STDCONVS$_Ld468
_$STDCONVS$_Ld468:
.reference _$STDCONVS$_Ld469
	.ascii	"stdconvs.txtvucubicyards\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld471
_$STDCONVS$_Ld471:
	.short	0,1
	.long	0,-1,18
.reference _$STDCONVS$_Ld470
.globl	_$STDCONVS$_Ld470
_$STDCONVS$_Ld470:
.reference _$STDCONVS$_Ld471
	.ascii	"cubic miles (mi^3)\000"
	.align 2
.globl	_$STDCONVS$_Ld473
_$STDCONVS$_Ld473:
	.short	0,1
	.long	0,-1,24
.reference _$STDCONVS$_Ld472
.globl	_$STDCONVS$_Ld472
_$STDCONVS$_Ld472:
.reference _$STDCONVS$_Ld473
	.ascii	"stdconvs.txtvucubicmiles\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld475
_$STDCONVS$_Ld475:
	.short	0,1
	.long	0,-1,16
.reference _$STDCONVS$_Ld474
.globl	_$STDCONVS$_Ld474
_$STDCONVS$_Ld474:
.reference _$STDCONVS$_Ld475
	.ascii	"milliliters (ml)\000"
	.align 2
.globl	_$STDCONVS$_Ld477
_$STDCONVS$_Ld477:
	.short	0,1
	.long	0,-1,25
.reference _$STDCONVS$_Ld476
.globl	_$STDCONVS$_Ld476
_$STDCONVS$_Ld476:
.reference _$STDCONVS$_Ld477
	.ascii	"stdconvs.txtvumilliliters\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld479
_$STDCONVS$_Ld479:
	.short	0,1
	.long	0,-1,16
.reference _$STDCONVS$_Ld478
.globl	_$STDCONVS$_Ld478
_$STDCONVS$_Ld478:
.reference _$STDCONVS$_Ld479
	.ascii	"centiliters (cl)\000"
	.align 2
.globl	_$STDCONVS$_Ld481
_$STDCONVS$_Ld481:
	.short	0,1
	.long	0,-1,25
.reference _$STDCONVS$_Ld480
.globl	_$STDCONVS$_Ld480
_$STDCONVS$_Ld480:
.reference _$STDCONVS$_Ld481
	.ascii	"stdconvs.txtvucentiliters\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld483
_$STDCONVS$_Ld483:
	.short	0,1
	.long	0,-1,15
.reference _$STDCONVS$_Ld482
.globl	_$STDCONVS$_Ld482
_$STDCONVS$_Ld482:
.reference _$STDCONVS$_Ld483
	.ascii	"deciliters (dl)\000"
	.align 2
.globl	_$STDCONVS$_Ld485
_$STDCONVS$_Ld485:
	.short	0,1
	.long	0,-1,24
.reference _$STDCONVS$_Ld484
.globl	_$STDCONVS$_Ld484
_$STDCONVS$_Ld484:
.reference _$STDCONVS$_Ld485
	.ascii	"stdconvs.txtvudeciliters\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld487
_$STDCONVS$_Ld487:
	.short	0,1
	.long	0,-1,10
.reference _$STDCONVS$_Ld486
.globl	_$STDCONVS$_Ld486
_$STDCONVS$_Ld486:
.reference _$STDCONVS$_Ld487
	.ascii	"liters (l)\000"
	.align 2
.globl	_$STDCONVS$_Ld489
_$STDCONVS$_Ld489:
	.short	0,1
	.long	0,-1,20
.reference _$STDCONVS$_Ld488
.globl	_$STDCONVS$_Ld488
_$STDCONVS$_Ld488:
.reference _$STDCONVS$_Ld489
	.ascii	"stdconvs.txtvuliters\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld491
_$STDCONVS$_Ld491:
	.short	0,1
	.long	0,-1,16
.reference _$STDCONVS$_Ld490
.globl	_$STDCONVS$_Ld490
_$STDCONVS$_Ld490:
.reference _$STDCONVS$_Ld491
	.ascii	"decaliters (dal)\000"
	.align 2
.globl	_$STDCONVS$_Ld493
_$STDCONVS$_Ld493:
	.short	0,1
	.long	0,-1,24
.reference _$STDCONVS$_Ld492
.globl	_$STDCONVS$_Ld492
_$STDCONVS$_Ld492:
.reference _$STDCONVS$_Ld493
	.ascii	"stdconvs.txtvudecaliters\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld495
_$STDCONVS$_Ld495:
	.short	0,1
	.long	0,-1,16
.reference _$STDCONVS$_Ld494
.globl	_$STDCONVS$_Ld494
_$STDCONVS$_Ld494:
.reference _$STDCONVS$_Ld495
	.ascii	"hectoliters (hl)\000"
	.align 2
.globl	_$STDCONVS$_Ld497
_$STDCONVS$_Ld497:
	.short	0,1
	.long	0,-1,25
.reference _$STDCONVS$_Ld496
.globl	_$STDCONVS$_Ld496
_$STDCONVS$_Ld496:
.reference _$STDCONVS$_Ld497
	.ascii	"stdconvs.txtvuhectoliters\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld499
_$STDCONVS$_Ld499:
	.short	0,1
	.long	0,-1,15
.reference _$STDCONVS$_Ld498
.globl	_$STDCONVS$_Ld498
_$STDCONVS$_Ld498:
.reference _$STDCONVS$_Ld499
	.ascii	"kiloliters (kl)\000"
	.align 2
.globl	_$STDCONVS$_Ld501
_$STDCONVS$_Ld501:
	.short	0,1
	.long	0,-1,24
.reference _$STDCONVS$_Ld500
.globl	_$STDCONVS$_Ld500
_$STDCONVS$_Ld500:
.reference _$STDCONVS$_Ld501
	.ascii	"stdconvs.txtvukiloliters\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld503
_$STDCONVS$_Ld503:
	.short	0,1
	.long	0,-1,18
.reference _$STDCONVS$_Ld502
.globl	_$STDCONVS$_Ld502
_$STDCONVS$_Ld502:
.reference _$STDCONVS$_Ld503
	.ascii	"acrefeet (acre ft)\000"
	.align 2
.globl	_$STDCONVS$_Ld505
_$STDCONVS$_Ld505:
	.short	0,1
	.long	0,-1,22
.reference _$STDCONVS$_Ld504
.globl	_$STDCONVS$_Ld504
_$STDCONVS$_Ld504:
.reference _$STDCONVS$_Ld505
	.ascii	"stdconvs.txtvuacrefeet\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld507
_$STDCONVS$_Ld507:
	.short	0,1
	.long	0,-1,20
.reference _$STDCONVS$_Ld506
.globl	_$STDCONVS$_Ld506
_$STDCONVS$_Ld506:
.reference _$STDCONVS$_Ld507
	.ascii	"acreinches (acre in)\000"
	.align 2
.globl	_$STDCONVS$_Ld509
_$STDCONVS$_Ld509:
	.short	0,1
	.long	0,-1,24
.reference _$STDCONVS$_Ld508
.globl	_$STDCONVS$_Ld508
_$STDCONVS$_Ld508:
.reference _$STDCONVS$_Ld509
	.ascii	"stdconvs.txtvuacreinches\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld511
_$STDCONVS$_Ld511:
	.short	0,1
	.long	0,-1,10
.reference _$STDCONVS$_Ld510
.globl	_$STDCONVS$_Ld510
_$STDCONVS$_Ld510:
.reference _$STDCONVS$_Ld511
	.ascii	"cords (??)\000"
	.align 2
.globl	_$STDCONVS$_Ld513
_$STDCONVS$_Ld513:
	.short	0,1
	.long	0,-1,19
.reference _$STDCONVS$_Ld512
.globl	_$STDCONVS$_Ld512
_$STDCONVS$_Ld512:
.reference _$STDCONVS$_Ld513
	.ascii	"stdconvs.txtvucords\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld515
_$STDCONVS$_Ld515:
	.short	0,1
	.long	0,-1,13
.reference _$STDCONVS$_Ld514
.globl	_$STDCONVS$_Ld514
_$STDCONVS$_Ld514:
.reference _$STDCONVS$_Ld515
	.ascii	"cordfeet (??)\000"
	.align 2
.globl	_$STDCONVS$_Ld517
_$STDCONVS$_Ld517:
	.short	0,1
	.long	0,-1,22
.reference _$STDCONVS$_Ld516
.globl	_$STDCONVS$_Ld516
_$STDCONVS$_Ld516:
.reference _$STDCONVS$_Ld517
	.ascii	"stdconvs.txtvucordfeet\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld519
_$STDCONVS$_Ld519:
	.short	0,1
	.long	0,-1,15
.reference _$STDCONVS$_Ld518
.globl	_$STDCONVS$_Ld518
_$STDCONVS$_Ld518:
.reference _$STDCONVS$_Ld519
	.ascii	"decisteres (??)\000"
	.align 2
.globl	_$STDCONVS$_Ld521
_$STDCONVS$_Ld521:
	.short	0,1
	.long	0,-1,24
.reference _$STDCONVS$_Ld520
.globl	_$STDCONVS$_Ld520
_$STDCONVS$_Ld520:
.reference _$STDCONVS$_Ld521
	.ascii	"stdconvs.txtvudecisteres\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld523
_$STDCONVS$_Ld523:
	.short	0,1
	.long	0,-1,11
.reference _$STDCONVS$_Ld522
.globl	_$STDCONVS$_Ld522
_$STDCONVS$_Ld522:
.reference _$STDCONVS$_Ld523
	.ascii	"steres (??)\000"
	.align 2
.globl	_$STDCONVS$_Ld525
_$STDCONVS$_Ld525:
	.short	0,1
	.long	0,-1,20
.reference _$STDCONVS$_Ld524
.globl	_$STDCONVS$_Ld524
_$STDCONVS$_Ld524:
.reference _$STDCONVS$_Ld525
	.ascii	"stdconvs.txtvusteres\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld527
_$STDCONVS$_Ld527:
	.short	0,1
	.long	0,-1,15
.reference _$STDCONVS$_Ld526
.globl	_$STDCONVS$_Ld526
_$STDCONVS$_Ld526:
.reference _$STDCONVS$_Ld527
	.ascii	"decasteres (??)\000"
	.align 2
.globl	_$STDCONVS$_Ld529
_$STDCONVS$_Ld529:
	.short	0,1
	.long	0,-1,24
.reference _$STDCONVS$_Ld528
.globl	_$STDCONVS$_Ld528
_$STDCONVS$_Ld528:
.reference _$STDCONVS$_Ld529
	.ascii	"stdconvs.txtvudecasteres\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld531
_$STDCONVS$_Ld531:
	.short	0,1
	.long	0,-1,25
.reference _$STDCONVS$_Ld530
.globl	_$STDCONVS$_Ld530
_$STDCONVS$_Ld530:
.reference _$STDCONVS$_Ld531
	.ascii	"US fluid gallons (fl gal)\000"
	.align 2
.globl	_$STDCONVS$_Ld533
_$STDCONVS$_Ld533:
	.short	0,1
	.long	0,-1,26
.reference _$STDCONVS$_Ld532
.globl	_$STDCONVS$_Ld532
_$STDCONVS$_Ld532:
.reference _$STDCONVS$_Ld533
	.ascii	"stdconvs.txtvufluidgallons\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld535
_$STDCONVS$_Ld535:
	.short	0,1
	.long	0,-1,26
.reference _$STDCONVS$_Ld534
.globl	_$STDCONVS$_Ld534
_$STDCONVS$_Ld534:
.reference _$STDCONVS$_Ld535
	.ascii	"US fluid Quarts (fl Quart)\000"
	.align 2
.globl	_$STDCONVS$_Ld537
_$STDCONVS$_Ld537:
	.short	0,1
	.long	0,-1,25
.reference _$STDCONVS$_Ld536
.globl	_$STDCONVS$_Ld536
_$STDCONVS$_Ld536:
.reference _$STDCONVS$_Ld537
	.ascii	"stdconvs.txtvufluidquarts\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld539
_$STDCONVS$_Ld539:
	.short	0,1
	.long	0,-1,25
.reference _$STDCONVS$_Ld538
.globl	_$STDCONVS$_Ld538
_$STDCONVS$_Ld538:
.reference _$STDCONVS$_Ld539
	.ascii	"US fluid Pints (fl pints)\000"
	.align 2
.globl	_$STDCONVS$_Ld541
_$STDCONVS$_Ld541:
	.short	0,1
	.long	0,-1,24
.reference _$STDCONVS$_Ld540
.globl	_$STDCONVS$_Ld540
_$STDCONVS$_Ld540:
.reference _$STDCONVS$_Ld541
	.ascii	"stdconvs.txtvufluidpints\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld543
_$STDCONVS$_Ld543:
	.short	0,1
	.long	0,-1,23
.reference _$STDCONVS$_Ld542
.globl	_$STDCONVS$_Ld542
_$STDCONVS$_Ld542:
.reference _$STDCONVS$_Ld543
	.ascii	"US fluid Cups (fl Cups)\000"
	.align 2
.globl	_$STDCONVS$_Ld545
_$STDCONVS$_Ld545:
	.short	0,1
	.long	0,-1,23
.reference _$STDCONVS$_Ld544
.globl	_$STDCONVS$_Ld544
_$STDCONVS$_Ld544:
.reference _$STDCONVS$_Ld545
	.ascii	"stdconvs.txtvufluidcups\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld547
_$STDCONVS$_Ld547:
	.short	0,1
	.long	0,-1,25
.reference _$STDCONVS$_Ld546
.globl	_$STDCONVS$_Ld546
_$STDCONVS$_Ld546:
.reference _$STDCONVS$_Ld547
	.ascii	"US fluid Gills (fl Quart)\000"
	.align 2
.globl	_$STDCONVS$_Ld549
_$STDCONVS$_Ld549:
	.short	0,1
	.long	0,-1,24
.reference _$STDCONVS$_Ld548
.globl	_$STDCONVS$_Ld548
_$STDCONVS$_Ld548:
.reference _$STDCONVS$_Ld549
	.ascii	"stdconvs.txtvufluidgills\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld551
_$STDCONVS$_Ld551:
	.short	0,1
	.long	0,-1,27
.reference _$STDCONVS$_Ld550
.globl	_$STDCONVS$_Ld550
_$STDCONVS$_Ld550:
.reference _$STDCONVS$_Ld551
	.ascii	"US fluid Ounces (fl Ounces)\000"
	.align 2
.globl	_$STDCONVS$_Ld553
_$STDCONVS$_Ld553:
	.short	0,1
	.long	0,-1,25
.reference _$STDCONVS$_Ld552
.globl	_$STDCONVS$_Ld552
_$STDCONVS$_Ld552:
.reference _$STDCONVS$_Ld553
	.ascii	"stdconvs.txtvufluidounces\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld555
_$STDCONVS$_Ld555:
	.short	0,1
	.long	0,-1,37
.reference _$STDCONVS$_Ld554
.globl	_$STDCONVS$_Ld554
_$STDCONVS$_Ld554:
.reference _$STDCONVS$_Ld555
	.ascii	"US fluid Tablespoons (fl Tablespoons)\000"
	.align 2
.globl	_$STDCONVS$_Ld557
_$STDCONVS$_Ld557:
	.short	0,1
	.long	0,-1,30
.reference _$STDCONVS$_Ld556
.globl	_$STDCONVS$_Ld556
_$STDCONVS$_Ld556:
.reference _$STDCONVS$_Ld557
	.ascii	"stdconvs.txtvufluidtablespoons\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld559
_$STDCONVS$_Ld559:
	.short	0,1
	.long	0,-1,32
.reference _$STDCONVS$_Ld558
.globl	_$STDCONVS$_Ld558
_$STDCONVS$_Ld558:
.reference _$STDCONVS$_Ld559
	.ascii	"US fluid teaspoons (fl teaspoon)\000"
	.align 2
.globl	_$STDCONVS$_Ld561
_$STDCONVS$_Ld561:
	.short	0,1
	.long	0,-1,28
.reference _$STDCONVS$_Ld560
.globl	_$STDCONVS$_Ld560
_$STDCONVS$_Ld560:
.reference _$STDCONVS$_Ld561
	.ascii	"stdconvs.txtvufluidteaspoons\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld563
_$STDCONVS$_Ld563:
	.short	0,1
	.long	0,-1,23
.reference _$STDCONVS$_Ld562
.globl	_$STDCONVS$_Ld562
_$STDCONVS$_Ld562:
.reference _$STDCONVS$_Ld563
	.ascii	"US dry gallons (dr gal)\000"
	.align 2
.globl	_$STDCONVS$_Ld565
_$STDCONVS$_Ld565:
	.short	0,1
	.long	0,-1,24
.reference _$STDCONVS$_Ld564
.globl	_$STDCONVS$_Ld564
_$STDCONVS$_Ld564:
.reference _$STDCONVS$_Ld565
	.ascii	"stdconvs.txtvudrygallons\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld567
_$STDCONVS$_Ld567:
	.short	0,1
	.long	0,-1,24
.reference _$STDCONVS$_Ld566
.globl	_$STDCONVS$_Ld566
_$STDCONVS$_Ld566:
.reference _$STDCONVS$_Ld567
	.ascii	"US dry Quarts (dr Quart)\000"
	.align 2
.globl	_$STDCONVS$_Ld569
_$STDCONVS$_Ld569:
	.short	0,1
	.long	0,-1,23
.reference _$STDCONVS$_Ld568
.globl	_$STDCONVS$_Ld568
_$STDCONVS$_Ld568:
.reference _$STDCONVS$_Ld569
	.ascii	"stdconvs.txtvudryquarts\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld571
_$STDCONVS$_Ld571:
	.short	0,1
	.long	0,-1,23
.reference _$STDCONVS$_Ld570
.globl	_$STDCONVS$_Ld570
_$STDCONVS$_Ld570:
.reference _$STDCONVS$_Ld571
	.ascii	"US dry Pints (dr pints)\000"
	.align 2
.globl	_$STDCONVS$_Ld573
_$STDCONVS$_Ld573:
	.short	0,1
	.long	0,-1,22
.reference _$STDCONVS$_Ld572
.globl	_$STDCONVS$_Ld572
_$STDCONVS$_Ld572:
.reference _$STDCONVS$_Ld573
	.ascii	"stdconvs.txtvudrypints\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld575
_$STDCONVS$_Ld575:
	.short	0,1
	.long	0,-1,23
.reference _$STDCONVS$_Ld574
.globl	_$STDCONVS$_Ld574
_$STDCONVS$_Ld574:
.reference _$STDCONVS$_Ld575
	.ascii	"US dry pecks (dr pecks)\000"
	.align 2
.globl	_$STDCONVS$_Ld577
_$STDCONVS$_Ld577:
	.short	0,1
	.long	0,-1,22
.reference _$STDCONVS$_Ld576
.globl	_$STDCONVS$_Ld576
_$STDCONVS$_Ld576:
.reference _$STDCONVS$_Ld577
	.ascii	"stdconvs.txtvudrypecks\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld579
_$STDCONVS$_Ld579:
	.short	0,1
	.long	0,-1,27
.reference _$STDCONVS$_Ld578
.globl	_$STDCONVS$_Ld578
_$STDCONVS$_Ld578:
.reference _$STDCONVS$_Ld579
	.ascii	"US dry buckets (dr buckets)\000"
	.align 2
.globl	_$STDCONVS$_Ld581
_$STDCONVS$_Ld581:
	.short	0,1
	.long	0,-1,24
.reference _$STDCONVS$_Ld580
.globl	_$STDCONVS$_Ld580
_$STDCONVS$_Ld580:
.reference _$STDCONVS$_Ld581
	.ascii	"stdconvs.txtvudrybuckets\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld583
_$STDCONVS$_Ld583:
	.short	0,1
	.long	0,-1,27
.reference _$STDCONVS$_Ld582
.globl	_$STDCONVS$_Ld582
_$STDCONVS$_Ld582:
.reference _$STDCONVS$_Ld583
	.ascii	"US dry bushels (dr bushels)\000"
	.align 2
.globl	_$STDCONVS$_Ld585
_$STDCONVS$_Ld585:
	.short	0,1
	.long	0,-1,24
.reference _$STDCONVS$_Ld584
.globl	_$STDCONVS$_Ld584
_$STDCONVS$_Ld584:
.reference _$STDCONVS$_Ld585
	.ascii	"stdconvs.txtvudrybushels\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld587
_$STDCONVS$_Ld587:
	.short	0,1
	.long	0,-1,19
.reference _$STDCONVS$_Ld586
.globl	_$STDCONVS$_Ld586
_$STDCONVS$_Ld586:
.reference _$STDCONVS$_Ld587
	.ascii	"UK gallons (fl gal)\000"
	.align 2
.globl	_$STDCONVS$_Ld589
_$STDCONVS$_Ld589:
	.short	0,1
	.long	0,-1,23
.reference _$STDCONVS$_Ld588
.globl	_$STDCONVS$_Ld588
_$STDCONVS$_Ld588:
.reference _$STDCONVS$_Ld589
	.ascii	"stdconvs.txtvuukgallons\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld591
_$STDCONVS$_Ld591:
	.short	0,1
	.long	0,-1,21
.reference _$STDCONVS$_Ld590
.globl	_$STDCONVS$_Ld590
_$STDCONVS$_Ld590:
.reference _$STDCONVS$_Ld591
	.ascii	"UK Pottles (fl pttle)\000"
	.align 2
.globl	_$STDCONVS$_Ld593
_$STDCONVS$_Ld593:
	.short	0,1
	.long	0,-1,23
.reference _$STDCONVS$_Ld592
.globl	_$STDCONVS$_Ld592
_$STDCONVS$_Ld592:
.reference _$STDCONVS$_Ld593
	.ascii	"stdconvs.txtvuukpottles\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld595
_$STDCONVS$_Ld595:
	.short	0,1
	.long	0,-1,20
.reference _$STDCONVS$_Ld594
.globl	_$STDCONVS$_Ld594
_$STDCONVS$_Ld594:
.reference _$STDCONVS$_Ld595
	.ascii	"UK Quarts (fl Quart)\000"
	.align 2
.globl	_$STDCONVS$_Ld597
_$STDCONVS$_Ld597:
	.short	0,1
	.long	0,-1,22
.reference _$STDCONVS$_Ld596
.globl	_$STDCONVS$_Ld596
_$STDCONVS$_Ld596:
.reference _$STDCONVS$_Ld597
	.ascii	"stdconvs.txtvuukquarts\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld599
_$STDCONVS$_Ld599:
	.short	0,1
	.long	0,-1,19
.reference _$STDCONVS$_Ld598
.globl	_$STDCONVS$_Ld598
_$STDCONVS$_Ld598:
.reference _$STDCONVS$_Ld599
	.ascii	"UK Pints (fl pints)\000"
	.align 2
.globl	_$STDCONVS$_Ld601
_$STDCONVS$_Ld601:
	.short	0,1
	.long	0,-1,21
.reference _$STDCONVS$_Ld600
.globl	_$STDCONVS$_Ld600
_$STDCONVS$_Ld600:
.reference _$STDCONVS$_Ld601
	.ascii	"stdconvs.txtvuukpints\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld603
_$STDCONVS$_Ld603:
	.short	0,1
	.long	0,-1,19
.reference _$STDCONVS$_Ld602
.globl	_$STDCONVS$_Ld602
_$STDCONVS$_Ld602:
.reference _$STDCONVS$_Ld603
	.ascii	"UK Gills (fl Quart)\000"
	.align 2
.globl	_$STDCONVS$_Ld605
_$STDCONVS$_Ld605:
	.short	0,1
	.long	0,-1,21
.reference _$STDCONVS$_Ld604
.globl	_$STDCONVS$_Ld604
_$STDCONVS$_Ld604:
.reference _$STDCONVS$_Ld605
	.ascii	"stdconvs.txtvuukgills\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld607
_$STDCONVS$_Ld607:
	.short	0,1
	.long	0,-1,21
.reference _$STDCONVS$_Ld606
.globl	_$STDCONVS$_Ld606
_$STDCONVS$_Ld606:
.reference _$STDCONVS$_Ld607
	.ascii	"UK Ounces (fl Ounces)\000"
	.align 2
.globl	_$STDCONVS$_Ld609
_$STDCONVS$_Ld609:
	.short	0,1
	.long	0,-1,22
.reference _$STDCONVS$_Ld608
.globl	_$STDCONVS$_Ld608
_$STDCONVS$_Ld608:
.reference _$STDCONVS$_Ld609
	.ascii	"stdconvs.txtvuukounces\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld611
_$STDCONVS$_Ld611:
	.short	0,1
	.long	0,-1,19
.reference _$STDCONVS$_Ld610
.globl	_$STDCONVS$_Ld610
_$STDCONVS$_Ld610:
.reference _$STDCONVS$_Ld611
	.ascii	"UK pecks (dr pecks)\000"
	.align 2
.globl	_$STDCONVS$_Ld613
_$STDCONVS$_Ld613:
	.short	0,1
	.long	0,-1,21
.reference _$STDCONVS$_Ld612
.globl	_$STDCONVS$_Ld612
_$STDCONVS$_Ld612:
.reference _$STDCONVS$_Ld613
	.ascii	"stdconvs.txtvuukpecks\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld615
_$STDCONVS$_Ld615:
	.short	0,1
	.long	0,-1,23
.reference _$STDCONVS$_Ld614
.globl	_$STDCONVS$_Ld614
_$STDCONVS$_Ld614:
.reference _$STDCONVS$_Ld615
	.ascii	"UK buckets (dr buckets)\000"
	.align 2
.globl	_$STDCONVS$_Ld617
_$STDCONVS$_Ld617:
	.short	0,1
	.long	0,-1,23
.reference _$STDCONVS$_Ld616
.globl	_$STDCONVS$_Ld616
_$STDCONVS$_Ld616:
.reference _$STDCONVS$_Ld617
	.ascii	"stdconvs.txtvuukbuckets\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld619
_$STDCONVS$_Ld619:
	.short	0,1
	.long	0,-1,23
.reference _$STDCONVS$_Ld618
.globl	_$STDCONVS$_Ld618
_$STDCONVS$_Ld618:
.reference _$STDCONVS$_Ld619
	.ascii	"UK bushels (dr bushels)\000"
	.align 2
.globl	_$STDCONVS$_Ld621
_$STDCONVS$_Ld621:
	.short	0,1
	.long	0,-1,23
.reference _$STDCONVS$_Ld620
.globl	_$STDCONVS$_Ld620
_$STDCONVS$_Ld620:
.reference _$STDCONVS$_Ld621
	.ascii	"stdconvs.txtvuukbushels\000"
# End asmlist al_const
# Begin asmlist al_typedconsts

.const
	.align 2
.globl	_$STDCONVS$_Ld1
_$STDCONVS$_Ld1:
	.byte	114,28,199,113,28,199,225,63

.const
	.align 2
.globl	_$STDCONVS$_Ld2
_$STDCONVS$_Ld2:
	.byte	0,0,0,0,0,0,64,64

.const
	.align 2
.globl	_$STDCONVS$_Ld3
_$STDCONVS$_Ld3:
	.byte	0,0,0,0,0,0,34,64

.const
	.align 2
.globl	_$STDCONVS$_Ld4
_$STDCONVS$_Ld4:
	.byte	0,0,0,0,0,0,20,64

.const
	.align 3
.globl	_$STDCONVS$_Ld5
_$STDCONVS$_Ld5:
	.byte	51,51,51,51,51,51,147,136,7,64

.const
	.align 2
.globl	_$STDCONVS$_Ld6
_$STDCONVS$_Ld6:
	.byte	141,237,181,160,247,198,176,62

.const
	.align 2
.globl	_$STDCONVS$_Ld7
_$STDCONVS$_Ld7:
	.byte	45,67,28,235,226,54,26,63

.const
	.align 2
.globl	_$STDCONVS$_Ld8
_$STDCONVS$_Ld8:
	.byte	123,20,174,71,225,122,132,63

.const
	.align 2
.globl	_$STDCONVS$_Ld9
_$STDCONVS$_Ld9:
	.byte	0,0,0,0,0,0,89,64

.const
	.align 2
.globl	_$STDCONVS$_Ld10
_$STDCONVS$_Ld10:
	.byte	0,0,0,0,0,136,195,64

.const
	.align 2
.globl	_$STDCONVS$_Ld11
_$STDCONVS$_Ld11:
	.byte	0,0,0,0,128,132,46,65

.const
	.align 2
.globl	_$STDCONVS$_Ld12
_$STDCONVS$_Ld12:
	.byte	203,82,227,140,254,35,69,63

.const
	.align 2
.globl	_$STDCONVS$_Ld13
_$STDCONVS$_Ld13:
	.byte	37,189,127,94,126,200,183,63

.const
	.align 2
.globl	_$STDCONVS$_Ld14
_$STDCONVS$_Ld14:
	.byte	201,180,79,42,142,193,234,63

.const
	.align 2
.globl	_$STDCONVS$_Ld15
_$STDCONVS$_Ld15:
	.byte	2,159,31,14,146,194,67,65

.const
	.align 2
.globl	_$STDCONVS$_Ld16
_$STDCONVS$_Ld16:
	.byte	162,139,184,198,190,157,175,64

.const
	.align 2
.globl	_$STDCONVS$_Ld17
_$STDCONVS$_Ld17:
	.byte	0,0,0,0,0,0,240,191

.const
	.align 2
.globl	_$STDCONVS$_Ld18
_$STDCONVS$_Ld18:
	.byte	115,125,96,5,255,74,57,64

.const
	.align 2
.globl	_$STDCONVS$_Ld19
_$STDCONVS$_Ld19:
	.byte	17,234,45,129,153,151,113,61

.const
	.align 2
.globl	_$STDCONVS$_Ld20
_$STDCONVS$_Ld20:
	.byte	187,189,215,217,223,124,219,61

.const
	.align 2
.globl	_$STDCONVS$_Ld21
_$STDCONVS$_Ld21:
	.byte	149,214,38,232,11,46,17,62

.const
	.align 2
.globl	_$STDCONVS$_Ld22
_$STDCONVS$_Ld22:
	.byte	252,169,241,210,77,98,80,63

.const
	.align 2
.globl	_$STDCONVS$_Ld23
_$STDCONVS$_Ld23:
	.byte	154,153,153,153,153,153,185,63

.const
	.align 2
.globl	_$STDCONVS$_Ld24
_$STDCONVS$_Ld24:
	.byte	0,0,0,0,0,0,36,64

.const
	.align 2
.globl	_$STDCONVS$_Ld25
_$STDCONVS$_Ld25:
	.byte	0,0,0,0,0,64,143,64

.const
	.align 2
.globl	_$STDCONVS$_Ld26
_$STDCONVS$_Ld26:
	.byte	0,0,0,0,101,205,205,65

.const
	.align 2
.globl	_$STDCONVS$_Ld27
_$STDCONVS$_Ld27:
	.byte	166,10,70,37,117,2,154,63

.const
	.align 2
.globl	_$STDCONVS$_Ld28
_$STDCONVS$_Ld28:
	.byte	253,135,244,219,215,129,211,63

.const
	.align 2
.globl	_$STDCONVS$_Ld29
_$STDCONVS$_Ld29:
	.byte	251,203,238,201,195,66,237,63

.const
	.align 2
.globl	_$STDCONVS$_Ld30
_$STDCONVS$_Ld30:
	.byte	76,55,137,65,96,37,153,64

.const
	.align 2
.globl	_$STDCONVS$_Ld31
_$STDCONVS$_Ld31:
	.byte	0,0,0,0,0,240,156,64

.const
	.align 2
.globl	_$STDCONVS$_Ld32
_$STDCONVS$_Ld32:
	.byte	0,0,112,102,93,106,65,66

.const
	.align 2
.globl	_$STDCONVS$_Ld33
_$STDCONVS$_Ld33:
	.byte	64,237,122,117,38,206,64,67

.const
	.align 2
.globl	_$STDCONVS$_Ld34
_$STDCONVS$_Ld34:
	.byte	104,155,101,24,5,104,91,67

.const
	.align 2
.globl	_$STDCONVS$_Ld35
_$STDCONVS$_Ld35:
	.byte	251,203,238,201,195,66,221,63

.const
	.align 2
.globl	_$STDCONVS$_Ld36
_$STDCONVS$_Ld36:
	.byte	251,203,238,201,195,66,253,63

.const
	.align 2
.globl	_$STDCONVS$_Ld37
_$STDCONVS$_Ld37:
	.byte	76,55,137,65,96,37,105,64

.const
	.align 2
.globl	_$STDCONVS$_Ld38
_$STDCONVS$_Ld38:
	.byte	166,10,70,37,117,2,186,63

.const
	.align 2
.globl	_$STDCONVS$_Ld39
_$STDCONVS$_Ld39:
	.byte	61,44,212,154,230,29,20,64

.const
	.align 2
.globl	_$STDCONVS$_Ld40
_$STDCONVS$_Ld40:
	.byte	61,44,212,154,230,29,52,64

.const
	.align 2
.globl	_$STDCONVS$_Ld41
_$STDCONVS$_Ld41:
	.byte	160,56,128,126,223,191,201,63

.const
	.align 2
.globl	_$STDCONVS$_Ld42
_$STDCONVS$_Ld42:
	.byte	29,159,57,193,248,86,113,63

.const
	.align 2
.globl	_$STDCONVS$_Ld43
_$STDCONVS$_Ld43:
	.byte	116,137,33,7,161,30,55,63

.const
	.align 2
.globl	_$STDCONVS$_Ld44
_$STDCONVS$_Ld44:
	.byte	241,104,227,136,181,248,228,62

.const
	.align 2
.globl	_$STDCONVS$_Ld45
_$STDCONVS$_Ld45:
	.byte	207,56,1,76,168,7,93,63

.const
	.align 2
.globl	_$STDCONVS$_Ld46
_$STDCONVS$_Ld46:
	.byte	234,128,12,204,148,252,16,63

.const
	.align 2
.globl	_$STDCONVS$_Ld47
_$STDCONVS$_Ld47:
	.byte	118,113,27,13,96,192,143,64

.const
	.align 2
.globl	_$STDCONVS$_Ld48
_$STDCONVS$_Ld48:
	.byte	27,18,247,88,122,89,140,64

.const
	.align 2
.globl	_$STDCONVS$_Ld49
_$STDCONVS$_Ld49:
	.byte	212,156,145,72,168,7,157,63

.const
	.align 2
.globl	_$STDCONVS$_Ld50
_$STDCONVS$_Ld50:
	.byte	81,94,183,74,168,7,221,63

.const
	.align 2
.globl	_$STDCONVS$_Ld51
_$STDCONVS$_Ld51:
	.byte	117,11,184,66,179,102,25,64

.const
	.align 2
.globl	_$STDCONVS$_Ld52
_$STDCONVS$_Ld52:
	.byte	81,130,163,137,28,199,225,63

.const
	.align 2
.globl	_$STDCONVS$_Ld53
_$STDCONVS$_Ld53:
	.byte	0,0,0,0,0,0,244,63

.const
	.align 2
.globl	_$STDCONVS$_Ld54
_$STDCONVS$_Ld54:
	.byte	0,0,0,0,0,0,78,64

.const
	.align 2
.globl	_$STDCONVS$_Ld55
_$STDCONVS$_Ld55:
	.byte	0,0,0,0,0,32,172,64

.const
	.align 2
.globl	_$STDCONVS$_Ld56
_$STDCONVS$_Ld56:
	.byte	0,0,0,0,0,24,245,64

.const
	.align 2
.globl	_$STDCONVS$_Ld57
_$STDCONVS$_Ld57:
	.byte	0,0,0,0,0,117,34,65

.const
	.align 2
.globl	_$STDCONVS$_Ld58
_$STDCONVS$_Ld58:
	.byte	0,0,0,0,0,117,50,65

.const
	.align 2
.globl	_$STDCONVS$_Ld59
_$STDCONVS$_Ld59:
	.byte	43,165,103,234,55,16,68,65

.const
	.align 2
.globl	_$STDCONVS$_Ld60
_$STDCONVS$_Ld60:
	.byte	192,119,155,223,83,24,126,65

.const
	.align 2
.globl	_$STDCONVS$_Ld61
_$STDCONVS$_Ld61:
	.byte	216,42,193,107,52,207,178,65

.const
	.align 2
.globl	_$STDCONVS$_Ld62
_$STDCONVS$_Ld62:
	.byte	142,117,177,134,1,131,231,65

.const
	.align 2
.globl	_$STDCONVS$_Ld63
_$STDCONVS$_Ld63:
	.byte	242,210,93,232,193,99,29,66

.const
	.align 2
.globl	_$STDCONVS$_Ld64
_$STDCONVS$_Ld64:
	.byte	178,24,156,118,222,46,241,62

.const
	.align 2
.globl	_$STDCONVS$_Ld65
_$STDCONVS$_Ld65:
	.byte	214,208,41,111,23,255,156,63

.const
	.align 2
.globl	_$STDCONVS$_Ld66
_$STDCONVS$_Ld66:
	.byte	219,84,246,192,59,119,232,63

.const
	.align 2
.globl	_$STDCONVS$_Ld67
_$STDCONVS$_Ld67:
	.byte	0,0,0,5,45,14,239,65

.const
	.align 2
.globl	_$STDCONVS$_Ld68
_$STDCONVS$_Ld68:
	.byte	214,208,41,111,23,255,12,64

.const
	.align 2
.globl	_$STDCONVS$_Ld69
_$STDCONVS$_Ld69:
	.byte	194,167,64,124,149,2,111,63

.const
	.align 2
.globl	_$STDCONVS$_Ld70
_$STDCONVS$_Ld70:
	.byte	194,167,64,124,149,2,79,63

.const
	.align 2
.globl	_$STDCONVS$_Ld71
_$STDCONVS$_Ld71:
	.byte	194,167,64,124,149,2,63,63

.const
	.align 2
.globl	_$STDCONVS$_Ld72
_$STDCONVS$_Ld72:
	.byte	194,167,64,124,149,2,255,62

.const
	.align 2
.globl	_$STDCONVS$_Ld73
_$STDCONVS$_Ld73:
	.byte	90,6,98,250,218,10,130,63

.const
	.align 2
.globl	_$STDCONVS$_Ld74
_$STDCONVS$_Ld74:
	.byte	90,6,98,250,218,10,162,63

.const
	.align 2
.globl	_$STDCONVS$_Ld75
_$STDCONVS$_Ld75:
	.byte	70,253,21,61,238,158,114,63

.const
	.align 2
.globl	_$STDCONVS$_Ld76
_$STDCONVS$_Ld76:
	.byte	79,197,54,54,238,158,82,63

.const
	.align 2
.globl	_$STDCONVS$_Ld77
_$STDCONVS$_Ld77:
	.byte	103,8,188,206,22,203,253,62

.const
	.align 2
.globl	_$STDCONVS$_Ld78
_$STDCONVS$_Ld78:
	.byte	70,253,21,61,238,158,130,63

.const
	.align 2
.globl	_$STDCONVS$_Ld79
_$STDCONVS$_Ld79:
	.byte	75,97,166,57,238,158,162,63

.const_data
	.align 2
.globl	_$STDCONVS$_Ld81
_$STDCONVS$_Ld81:
	.short	0,1
	.long	0,-1,4
.reference _$STDCONVS$_Ld80
.globl	_$STDCONVS$_Ld80
_$STDCONVS$_Ld80:
.reference _$STDCONVS$_Ld81
	.ascii	"Area\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld83
_$STDCONVS$_Ld83:
	.short	0,1
	.long	0,-1,8
.reference _$STDCONVS$_Ld82
.globl	_$STDCONVS$_Ld82
_$STDCONVS$_Ld82:
.reference _$STDCONVS$_Ld83
	.ascii	"Distance\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld85
_$STDCONVS$_Ld85:
	.short	0,1
	.long	0,-1,4
.reference _$STDCONVS$_Ld84
.globl	_$STDCONVS$_Ld84
_$STDCONVS$_Ld84:
.reference _$STDCONVS$_Ld85
	.ascii	"Mass\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld87
_$STDCONVS$_Ld87:
	.short	0,1
	.long	0,-1,11
.reference _$STDCONVS$_Ld86
.globl	_$STDCONVS$_Ld86
_$STDCONVS$_Ld86:
.reference _$STDCONVS$_Ld87
	.ascii	"Temperature\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld89
_$STDCONVS$_Ld89:
	.short	0,1
	.long	0,-1,4
.reference _$STDCONVS$_Ld88
.globl	_$STDCONVS$_Ld88
_$STDCONVS$_Ld88:
.reference _$STDCONVS$_Ld89
	.ascii	"Time\000"

.const_data
	.align 2
.globl	_$STDCONVS$_Ld91
_$STDCONVS$_Ld91:
	.short	0,1
	.long	0,-1,6
.reference _$STDCONVS$_Ld90
.globl	_$STDCONVS$_Ld90
_$STDCONVS$_Ld90:
.reference _$STDCONVS$_Ld91
	.ascii	"Volume\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE$stub:
.indirect_symbol _CONVUTILS_REGISTERCONVERSIONTYPE$TCONVFAMILY$ANSISTRING$DOUBLE$$TCONVTYPE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CONVUTILS_REGISTERCONVERSIONFAMILY$ANSISTRING$$TCONVFAMILY$stub:
.indirect_symbol _CONVUTILS_REGISTERCONVERSIONFAMILY$ANSISTRING$$TCONVFAMILY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STDCONVS_REGISTERFAMILIES$stub:
.indirect_symbol _STDCONVS_REGISTERFAMILIES
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STDCONVS_REGISTERVOLUMES$stub:
.indirect_symbol _STDCONVS_REGISTERVOLUMES
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STDCONVS_REGISTERTIMES$stub:
.indirect_symbol _STDCONVS_REGISTERTIMES
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STDCONVS_REGISTERTEMPERATURE$stub:
.indirect_symbol _STDCONVS_REGISTERTEMPERATURE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STDCONVS_REGISTERMASS$stub:
.indirect_symbol _STDCONVS_REGISTERMASS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STDCONVS_REGISTERLENGTHS$stub:
.indirect_symbol _STDCONVS_REGISTERLENGTHS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STDCONVS_REGISTERAREA$stub:
.indirect_symbol _STDCONVS_REGISTERAREA
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_STDCONVS_REGISTERALL$stub:
.indirect_symbol _STDCONVS_REGISTERALL
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

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld2$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld2
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld1$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld3$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld4$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld4
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld5$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld5
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld6$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld6
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTAUSQUAREMILLIMETERS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTAUSQUAREMILLIMETERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_CBAREA$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_CBAREA
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_AUSQUAREMILLIMETERS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_AUSQUAREMILLIMETERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld7$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld7
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTAUSQUARECENTIMETERS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTAUSQUARECENTIMETERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_AUSQUARECENTIMETERS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_AUSQUARECENTIMETERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld8$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld8
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTAUSQUAREDECIMETERS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTAUSQUAREDECIMETERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_AUSQUAREDECIMETERS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_AUSQUAREDECIMETERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTAUSQUAREMETERS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTAUSQUAREMETERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_AUSQUAREMETERS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_AUSQUAREMETERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld9$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld9
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTAUSQUAREDECAMETERS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTAUSQUAREDECAMETERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_AUSQUAREDECAMETERS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_AUSQUAREDECAMETERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld10$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld10
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTAUSQUAREHECTOMETERS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTAUSQUAREHECTOMETERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_AUSQUAREHECTOMETERS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_AUSQUAREHECTOMETERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld11$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld11
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTAUSQUAREKILOMETERS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTAUSQUAREKILOMETERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_AUSQUAREKILOMETERS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_AUSQUAREKILOMETERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld12$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld12
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTAUSQUAREINCHES$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTAUSQUAREINCHES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_AUSQUAREINCHES$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_AUSQUAREINCHES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld13$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld13
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTAUSQUAREFEET$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTAUSQUAREFEET
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_AUSQUAREFEET$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_AUSQUAREFEET
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld14$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld14
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTAUSQUAREYARDS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTAUSQUAREYARDS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_AUSQUAREYARDS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_AUSQUAREYARDS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld15$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld15
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTAUSQUAREMILES$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTAUSQUAREMILES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_AUSQUAREMILES$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_AUSQUAREMILES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld16$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld16
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTAUACRES$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTAUACRES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_AUACRES$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_AUACRES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld17$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld17
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTAUCENTARES$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTAUCENTARES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_AUCENTARES$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_AUCENTARES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTAUARES$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTAUARES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_AUARES$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_AUARES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTAUHECTARES$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTAUHECTARES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_AUHECTARES$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_AUHECTARES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld18$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld18
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTAUSQUARERODS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTAUSQUARERODS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_AUSQUARERODS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_AUSQUARERODS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld19$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld19
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTDUMICROMICRONS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTDUMICROMICRONS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_CBDISTANCE$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_CBDISTANCE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_DUMICROMICRONS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_DUMICROMICRONS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld20$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld20
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTDUANGSTROMS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTDUANGSTROMS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_DUANGSTROMS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_DUANGSTROMS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld21$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld21
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTDUMILLIMICRONS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTDUMILLIMICRONS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_DUMILLIMICRONS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_DUMILLIMICRONS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTDUMICRONS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTDUMICRONS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_DUMICRONS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_DUMICRONS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld22$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld22
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTDUMILLIMETERS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTDUMILLIMETERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_DUMILLIMETERS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_DUMILLIMETERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTDUCENTIMETERS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTDUCENTIMETERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_DUCENTIMETERS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_DUCENTIMETERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld23$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld23
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTDUDECIMETERS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTDUDECIMETERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_DUDECIMETERS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_DUDECIMETERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTDUMETERS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTDUMETERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_DUMETERS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_DUMETERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld24$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld24
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTDUDECAMETERS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTDUDECAMETERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_DUDECAMETERS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_DUDECAMETERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTDUHECTOMETERS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTDUHECTOMETERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_DUHECTOMETERS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_DUHECTOMETERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld25$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld25
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTDUKILOMETERS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTDUKILOMETERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_DUKILOMETERS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_DUKILOMETERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTDUMEGAMETERS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTDUMEGAMETERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_DUMEGAMETERS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_DUMEGAMETERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld26$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld26
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTDUGIGAMETERS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTDUGIGAMETERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_DUGIGAMETERS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_DUGIGAMETERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld27$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld27
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTDUINCHES$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTDUINCHES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_DUINCHES$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_DUINCHES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld28$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld28
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTDUFEET$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTDUFEET
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_DUFEET$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_DUFEET
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld29$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld29
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTDUYARDS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTDUYARDS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_DUYARDS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_DUYARDS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld30$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld30
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTDUMILES$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTDUMILES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_DUMILES$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_DUMILES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld31$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld31
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTDUNAUTICALMILES$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTDUNAUTICALMILES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_DUNAUTICALMILES$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_DUNAUTICALMILES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld32$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld32
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTDUASTRONOMICALUNITS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTDUASTRONOMICALUNITS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_DUASTRONOMICALUNITS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_DUASTRONOMICALUNITS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld33$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld33
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTDULIGHTYEARS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTDULIGHTYEARS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_DULIGHTYEARS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_DULIGHTYEARS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld34$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld34
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTDUPARSECS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTDUPARSECS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_DUPARSECS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_DUPARSECS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld35$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld35
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTDUCUBITS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTDUCUBITS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_DUCUBITS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_DUCUBITS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld36$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld36
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTDUFATHOMS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTDUFATHOMS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_DUFATHOMS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_DUFATHOMS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld37$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld37
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTDUFURLONGS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTDUFURLONGS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_DUFURLONGS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_DUFURLONGS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld38$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld38
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTDUHANDS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTDUHANDS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_DUHANDS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_DUHANDS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTDUPACES$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTDUPACES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_DUPACES$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_DUPACES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld39$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld39
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTDURODS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTDURODS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_DURODS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_DURODS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld40$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld40
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTDUCHAINS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTDUCHAINS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_DUCHAINS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_DUCHAINS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld41$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld41
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTDULINKS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTDULINKS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_DULINKS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_DULINKS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld42$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld42
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTDUPICAS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTDUPICAS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_DUPICAS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_DUPICAS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld43$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld43
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTDUPOINTS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTDUPOINTS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_DUPOINTS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_DUPOINTS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTMUNANOGRAMS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTMUNANOGRAMS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_CBMASS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_CBMASS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_MUNANOGRAMS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_MUNANOGRAMS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTMUMICROGRAMS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTMUMICROGRAMS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_MUMICROGRAMS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_MUMICROGRAMS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTMUMILLIGRAMS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTMUMILLIGRAMS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_MUMILLIGRAMS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_MUMILLIGRAMS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld44$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld44
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTMUCENTIGRAMS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTMUCENTIGRAMS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_MUCENTIGRAMS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_MUCENTIGRAMS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTMUDECIGRAMS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTMUDECIGRAMS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_MUDECIGRAMS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_MUDECIGRAMS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTMUGRAMS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTMUGRAMS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_MUGRAMS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_MUGRAMS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTMUDECAGRAMS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTMUDECAGRAMS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_MUDECAGRAMS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_MUDECAGRAMS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTMUHECTOGRAMS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTMUHECTOGRAMS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_MUHECTOGRAMS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_MUHECTOGRAMS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTMUKILOGRAMS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTMUKILOGRAMS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_MUKILOGRAMS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_MUKILOGRAMS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTMUMETRICTONS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTMUMETRICTONS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_MUMETRICTONS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_MUMETRICTONS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld45$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld45
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTMUDRAMS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTMUDRAMS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_MUDRAMS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_MUDRAMS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld46$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld46
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTMUGRAINS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTMUGRAINS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_MUGRAINS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_MUGRAINS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld47$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld47
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTMULONGTONS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTMULONGTONS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_MULONGTONS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_MULONGTONS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld48$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld48
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTMUTONS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTMUTONS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_MUTONS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_MUTONS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld49$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld49
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTMUOUNCES$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTMUOUNCES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_MUOUNCES$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_MUOUNCES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld50$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld50
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTMUPOUNDS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTMUPOUNDS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_MUPOUNDS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_MUPOUNDS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld51$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld51
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTMUSTONES$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTMUSTONES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_MUSTONES$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_MUSTONES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTTUCELSIUS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTTUCELSIUS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_CBTEMPERATURE$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_CBTEMPERATURE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_TUCELSIUS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_TUCELSIUS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTTUKELVIN$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTTUKELVIN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_TUKELVIN$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_TUKELVIN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTTUFAHRENHEIT$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTTUFAHRENHEIT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_TUFAHRENHEIT$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_TUFAHRENHEIT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld52$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld52
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTTURANKINE$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTTURANKINE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_TURANKINE$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_TURANKINE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld53$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld53
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTTUREAMUR$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTTUREAMUR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_TUREAMUR$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_TUREAMUR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTTUMILLISECONDS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTTUMILLISECONDS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_CBTIME$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_CBTIME
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_TUMILLISECONDS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_TUMILLISECONDS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTTUSECONDS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTTUSECONDS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_TUSECONDS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_TUSECONDS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld54$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld54
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTTUMINUTES$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTTUMINUTES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_TUMINUTES$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_TUMINUTES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld55$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld55
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTTUHOURS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTTUHOURS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_TUHOURS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_TUHOURS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld56$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld56
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTTUDAYS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTTUDAYS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_TUDAYS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_TUDAYS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld57$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld57
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTTUWEEKS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTTUWEEKS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_TUWEEKS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_TUWEEKS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld58$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld58
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTTUFORTNIGHTS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTTUFORTNIGHTS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_TUFORTNIGHTS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_TUFORTNIGHTS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld59$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld59
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTTUMONTHS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTTUMONTHS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_TUMONTHS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_TUMONTHS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld60$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld60
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTTUYEARS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTTUYEARS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_TUYEARS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_TUYEARS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld61$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld61
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTTUDECADES$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTTUDECADES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_TUDECADES$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_TUDECADES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld62$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld62
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTTUCENTURIES$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTTUCENTURIES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_TUCENTURIES$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_TUCENTURIES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld63$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld63
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTTUMILLENNIA$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTTUMILLENNIA
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_TUMILLENNIA$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_TUMILLENNIA
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTTUDATETIME$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTTUDATETIME
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_TUDATETIME$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_TUDATETIME
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTTUJULIANDATE$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTTUJULIANDATE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_TUJULIANDATE$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_TUJULIANDATE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTTUMODIFIEDJULIANDATE$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTTUMODIFIEDJULIANDATE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_TUMODIFIEDJULIANDATE$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_TUMODIFIEDJULIANDATE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVUCUBICMILLIMETERS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVUCUBICMILLIMETERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_CBVOLUME$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_CBVOLUME
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VUCUBICMILLIMETERS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VUCUBICMILLIMETERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVUCUBICCENTIMETERS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVUCUBICCENTIMETERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VUCUBICCENTIMETERS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VUCUBICCENTIMETERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVUCUBICDECIMETERS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVUCUBICDECIMETERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VUCUBICDECIMETERS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VUCUBICDECIMETERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVUCUBICMETERS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVUCUBICMETERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VUCUBICMETERS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VUCUBICMETERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVUCUBICDECAMETERS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVUCUBICDECAMETERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VUCUBICDECAMETERS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VUCUBICDECAMETERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVUCUBICHECTOMETERS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVUCUBICHECTOMETERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VUCUBICHECTOMETERS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VUCUBICHECTOMETERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVUCUBICKILOMETERS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVUCUBICKILOMETERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VUCUBICKILOMETERS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VUCUBICKILOMETERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld64$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld64
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVUCUBICINCHES$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVUCUBICINCHES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VUCUBICINCHES$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VUCUBICINCHES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld65$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld65
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVUCUBICFEET$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVUCUBICFEET
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VUCUBICFEET$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VUCUBICFEET
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld66$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld66
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVUCUBICYARDS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVUCUBICYARDS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VUCUBICYARDS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VUCUBICYARDS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld67$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld67
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVUCUBICMILES$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVUCUBICMILES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VUCUBICMILES$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VUCUBICMILES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVUMILLILITERS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVUMILLILITERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VUMILLILITERS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VUMILLILITERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVUCENTILITERS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVUCENTILITERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VUCENTILITERS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VUCENTILITERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVUDECILITERS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVUDECILITERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VUDECILITERS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VUDECILITERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVULITERS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVULITERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VULITERS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VULITERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVUDECALITERS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVUDECALITERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VUDECALITERS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VUDECALITERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVUHECTOLITERS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVUHECTOLITERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VUHECTOLITERS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VUHECTOLITERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVUKILOLITERS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVUKILOLITERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VUKILOLITERS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VUKILOLITERS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVUACREFEET$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVUACREFEET
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VUACREFEET$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VUACREFEET
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVUACREINCHES$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVUACREINCHES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VUACREINCHES$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VUACREINCHES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld68$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld68
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVUCORDS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVUCORDS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VUCORDS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VUCORDS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVUCORDFEET$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVUCORDFEET
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VUCORDFEET$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VUCORDFEET
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVUDECISTERES$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVUDECISTERES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VUDECISTERES$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VUDECISTERES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVUSTERES$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVUSTERES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VUSTERES$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VUSTERES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVUDECASTERES$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVUDECASTERES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VUDECASTERES$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VUDECASTERES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld69$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld69
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVUFLUIDGALLONS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVUFLUIDGALLONS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VUFLUIDGALLONS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VUFLUIDGALLONS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld70$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld70
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVUFLUIDQUARTS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVUFLUIDQUARTS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VUFLUIDQUARTS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VUFLUIDQUARTS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld71$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld71
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVUFLUIDPINTS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVUFLUIDPINTS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VUFLUIDPINTS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VUFLUIDPINTS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVUFLUIDCUPS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVUFLUIDCUPS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VUFLUIDCUPS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VUFLUIDCUPS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVUFLUIDGILLS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVUFLUIDGILLS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VUFLUIDGILLS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VUFLUIDGILLS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld72$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld72
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVUFLUIDOUNCES$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVUFLUIDOUNCES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VUFLUIDOUNCES$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VUFLUIDOUNCES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVUFLUIDTABLESPOONS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVUFLUIDTABLESPOONS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VUFLUIDTABLESPOONS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VUFLUIDTABLESPOONS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVUFLUIDTEASPOONS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVUFLUIDTEASPOONS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VUFLUIDTEASPOONS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VUFLUIDTEASPOONS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVUDRYGALLONS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVUDRYGALLONS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VUDRYGALLONS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VUDRYGALLONS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVUDRYQUARTS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVUDRYQUARTS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VUDRYQUARTS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VUDRYQUARTS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVUDRYPINTS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVUDRYPINTS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VUDRYPINTS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VUDRYPINTS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld73$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld73
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVUDRYPECKS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVUDRYPECKS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VUDRYPECKS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VUDRYPECKS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVUDRYBUCKETS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVUDRYBUCKETS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VUDRYBUCKETS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VUDRYBUCKETS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld74$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld74
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVUDRYBUSHELS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVUDRYBUSHELS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VUDRYBUSHELS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VUDRYBUSHELS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld75$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld75
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVUUKGALLONS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVUUKGALLONS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VUUKGALLONS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VUUKGALLONS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVUUKPOTTLES$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVUUKPOTTLES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VUUKPOTTLES$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VUUKPOTTLES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld76$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld76
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVUUKQUARTS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVUUKQUARTS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VUUKQUARTS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VUUKQUARTS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVUUKPINTS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVUUKPINTS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VUUKPINTS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VUUKPINTS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVUUKGILLS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVUUKGILLS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VUUKGILLS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VUUKGILLS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld77$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld77
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVUUKOUNCES$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVUUKOUNCES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VUUKOUNCES$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VUUKOUNCES
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld78$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld78
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVUUKPECKS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVUUKPECKS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VUUKPECKS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VUUKPECKS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVUUKBUCKETS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVUUKBUCKETS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VUUKBUCKETS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VUUKBUCKETS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld79$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld79
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_RESSTR_STDCONVS_TXTVUUKBUSHELS$non_lazy_ptr:
.indirect_symbol _RESSTR_STDCONVS_TXTVUUKBUSHELS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_STDCONVS_VUUKBUSHELS$non_lazy_ptr:
.indirect_symbol _U_STDCONVS_VUUKBUSHELS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld80$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld80
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld82$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld82
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld84$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld84
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld86$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld86
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld88$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld88
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$STDCONVS$_Ld90$non_lazy_ptr:
.indirect_symbol _$STDCONVS$_Ld90
	.long	0
# End asmlist al_picdata
# Begin asmlist al_resourcestrings

.data
	.align 2
.globl	_RESSTR_STDCONVS_START
_RESSTR_STDCONVS_START:
	.long	_$STDCONVS$_Ld92
	.long	0,0,0

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTAUSQUAREMILLIMETERS
_RESSTR_STDCONVS_TXTAUSQUAREMILLIMETERS:
	.long	_$STDCONVS$_Ld96
	.long	_$STDCONVS$_Ld94
	.long	_$STDCONVS$_Ld94
	.long	212689657

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTAUSQUARECENTIMETERS
_RESSTR_STDCONVS_TXTAUSQUARECENTIMETERS:
	.long	_$STDCONVS$_Ld100
	.long	_$STDCONVS$_Ld98
	.long	_$STDCONVS$_Ld98
	.long	221465337

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTAUSQUAREDECIMETERS
_RESSTR_STDCONVS_TXTAUSQUAREDECIMETERS:
	.long	_$STDCONVS$_Ld104
	.long	_$STDCONVS$_Ld102
	.long	_$STDCONVS$_Ld102
	.long	65272217

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTAUSQUAREMETERS
_RESSTR_STDCONVS_TXTAUSQUAREMETERS:
	.long	_$STDCONVS$_Ld108
	.long	_$STDCONVS$_Ld106
	.long	_$STDCONVS$_Ld106
	.long	144315897

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTAUSQUAREDECAMETERS
_RESSTR_STDCONVS_TXTAUSQUAREDECAMETERS:
	.long	_$STDCONVS$_Ld112
	.long	_$STDCONVS$_Ld110
	.long	_$STDCONVS$_Ld110
	.long	237806713

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTAUSQUAREHECTOMETERS
_RESSTR_STDCONVS_TXTAUSQUAREHECTOMETERS:
	.long	_$STDCONVS$_Ld116
	.long	_$STDCONVS$_Ld114
	.long	_$STDCONVS$_Ld114
	.long	222682009

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTAUSQUAREKILOMETERS
_RESSTR_STDCONVS_TXTAUSQUAREKILOMETERS:
	.long	_$STDCONVS$_Ld120
	.long	_$STDCONVS$_Ld118
	.long	_$STDCONVS$_Ld118
	.long	67355641

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTAUSQUAREINCHES
_RESSTR_STDCONVS_TXTAUSQUAREINCHES:
	.long	_$STDCONVS$_Ld124
	.long	_$STDCONVS$_Ld122
	.long	_$STDCONVS$_Ld122
	.long	2674793

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTAUSQUAREFEET
_RESSTR_STDCONVS_TXTAUSQUAREFEET:
	.long	_$STDCONVS$_Ld128
	.long	_$STDCONVS$_Ld126
	.long	_$STDCONVS$_Ld126
	.long	2729385

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTAUSQUAREYARDS
_RESSTR_STDCONVS_TXTAUSQUAREYARDS:
	.long	_$STDCONVS$_Ld132
	.long	_$STDCONVS$_Ld130
	.long	_$STDCONVS$_Ld130
	.long	260874809

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTAUSQUAREMILES
_RESSTR_STDCONVS_TXTAUSQUAREMILES:
	.long	_$STDCONVS$_Ld136
	.long	_$STDCONVS$_Ld134
	.long	_$STDCONVS$_Ld134
	.long	164214457

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTAUACRES
_RESSTR_STDCONVS_TXTAUACRES:
	.long	_$STDCONVS$_Ld140
	.long	_$STDCONVS$_Ld138
	.long	_$STDCONVS$_Ld138
	.long	111996761

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTAUCENTARES
_RESSTR_STDCONVS_TXTAUCENTARES:
	.long	_$STDCONVS$_Ld144
	.long	_$STDCONVS$_Ld142
	.long	_$STDCONVS$_Ld142
	.long	21841417

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTAUARES
_RESSTR_STDCONVS_TXTAUARES:
	.long	_$STDCONVS$_Ld148
	.long	_$STDCONVS$_Ld146
	.long	_$STDCONVS$_Ld146
	.long	109981977

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTAUHECTARES
_RESSTR_STDCONVS_TXTAUHECTARES:
	.long	_$STDCONVS$_Ld152
	.long	_$STDCONVS$_Ld150
	.long	_$STDCONVS$_Ld150
	.long	152155433

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTAUSQUARERODS
_RESSTR_STDCONVS_TXTAUSQUARERODS:
	.long	_$STDCONVS$_Ld156
	.long	_$STDCONVS$_Ld154
	.long	_$STDCONVS$_Ld154
	.long	218150521

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTDUMICROMICRONS
_RESSTR_STDCONVS_TXTDUMICROMICRONS:
	.long	_$STDCONVS$_Ld160
	.long	_$STDCONVS$_Ld158
	.long	_$STDCONVS$_Ld158
	.long	258944729

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTDUANGSTROMS
_RESSTR_STDCONVS_TXTDUANGSTROMS:
	.long	_$STDCONVS$_Ld164
	.long	_$STDCONVS$_Ld162
	.long	_$STDCONVS$_Ld162
	.long	27168105

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTDUMILLIMICRONS
_RESSTR_STDCONVS_TXTDUMILLIMICRONS:
	.long	_$STDCONVS$_Ld168
	.long	_$STDCONVS$_Ld166
	.long	_$STDCONVS$_Ld166
	.long	157302761

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTDUMICRONS
_RESSTR_STDCONVS_TXTDUMICRONS:
	.long	_$STDCONVS$_Ld172
	.long	_$STDCONVS$_Ld170
	.long	_$STDCONVS$_Ld170
	.long	40719001

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTDUMILLIMETERS
_RESSTR_STDCONVS_TXTDUMILLIMETERS:
	.long	_$STDCONVS$_Ld176
	.long	_$STDCONVS$_Ld174
	.long	_$STDCONVS$_Ld174
	.long	173439241

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTDUCENTIMETERS
_RESSTR_STDCONVS_TXTDUCENTIMETERS:
	.long	_$STDCONVS$_Ld180
	.long	_$STDCONVS$_Ld178
	.long	_$STDCONVS$_Ld178
	.long	39305065

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTDUDECIMETERS
_RESSTR_STDCONVS_TXTDUDECIMETERS:
	.long	_$STDCONVS$_Ld184
	.long	_$STDCONVS$_Ld182
	.long	_$STDCONVS$_Ld182
	.long	55659145

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTDUMETERS
_RESSTR_STDCONVS_TXTDUMETERS:
	.long	_$STDCONVS$_Ld188
	.long	_$STDCONVS$_Ld186
	.long	_$STDCONVS$_Ld186
	.long	210899545

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTDUDECAMETERS
_RESSTR_STDCONVS_TXTDUDECAMETERS:
	.long	_$STDCONVS$_Ld192
	.long	_$STDCONVS$_Ld190
	.long	_$STDCONVS$_Ld190
	.long	219455737

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTDUHECTOMETERS
_RESSTR_STDCONVS_TXTDUHECTOMETERS:
	.long	_$STDCONVS$_Ld196
	.long	_$STDCONVS$_Ld194
	.long	_$STDCONVS$_Ld194
	.long	37212057

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTDUKILOMETERS
_RESSTR_STDCONVS_TXTDUKILOMETERS:
	.long	_$STDCONVS$_Ld200
	.long	_$STDCONVS$_Ld198
	.long	_$STDCONVS$_Ld198
	.long	171010361

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTDUMEGAMETERS
_RESSTR_STDCONVS_TXTDUMEGAMETERS:
	.long	_$STDCONVS$_Ld204
	.long	_$STDCONVS$_Ld202
	.long	_$STDCONVS$_Ld202
	.long	80841353

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTDUGIGAMETERS
_RESSTR_STDCONVS_TXTDUGIGAMETERS:
	.long	_$STDCONVS$_Ld208
	.long	_$STDCONVS$_Ld206
	.long	_$STDCONVS$_Ld206
	.long	80833225

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTDUINCHES
_RESSTR_STDCONVS_TXTDUINCHES:
	.long	_$STDCONVS$_Ld212
	.long	_$STDCONVS$_Ld210
	.long	_$STDCONVS$_Ld210
	.long	203597801

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTDUFEET
_RESSTR_STDCONVS_TXTDUFEET:
	.long	_$STDCONVS$_Ld216
	.long	_$STDCONVS$_Ld214
	.long	_$STDCONVS$_Ld214
	.long	207782361

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTDUYARDS
_RESSTR_STDCONVS_TXTDUYARDS:
	.long	_$STDCONVS$_Ld220
	.long	_$STDCONVS$_Ld218
	.long	_$STDCONVS$_Ld218
	.long	190121961

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTDUMILES
_RESSTR_STDCONVS_TXTDUMILES:
	.long	_$STDCONVS$_Ld224
	.long	_$STDCONVS$_Ld222
	.long	_$STDCONVS$_Ld222
	.long	206943129

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTDUNAUTICALMILES
_RESSTR_STDCONVS_TXTDUNAUTICALMILES:
	.long	_$STDCONVS$_Ld228
	.long	_$STDCONVS$_Ld226
	.long	_$STDCONVS$_Ld226
	.long	60321609

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTDUASTRONOMICALUNITS
_RESSTR_STDCONVS_TXTDUASTRONOMICALUNITS:
	.long	_$STDCONVS$_Ld232
	.long	_$STDCONVS$_Ld230
	.long	_$STDCONVS$_Ld230
	.long	176937337

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTDULIGHTYEARS
_RESSTR_STDCONVS_TXTDULIGHTYEARS:
	.long	_$STDCONVS$_Ld236
	.long	_$STDCONVS$_Ld234
	.long	_$STDCONVS$_Ld234
	.long	103958505

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTDUPARSECS
_RESSTR_STDCONVS_TXTDUPARSECS:
	.long	_$STDCONVS$_Ld240
	.long	_$STDCONVS$_Ld238
	.long	_$STDCONVS$_Ld238
	.long	184835785

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTDUCUBITS
_RESSTR_STDCONVS_TXTDUCUBITS:
	.long	_$STDCONVS$_Ld244
	.long	_$STDCONVS$_Ld242
	.long	_$STDCONVS$_Ld242
	.long	186142793

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTDUFATHOMS
_RESSTR_STDCONVS_TXTDUFATHOMS:
	.long	_$STDCONVS$_Ld248
	.long	_$STDCONVS$_Ld246
	.long	_$STDCONVS$_Ld246
	.long	199521785

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTDUFURLONGS
_RESSTR_STDCONVS_TXTDUFURLONGS:
	.long	_$STDCONVS$_Ld252
	.long	_$STDCONVS$_Ld250
	.long	_$STDCONVS$_Ld250
	.long	198953849

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTDUHANDS
_RESSTR_STDCONVS_TXTDUHANDS:
	.long	_$STDCONVS$_Ld256
	.long	_$STDCONVS$_Ld254
	.long	_$STDCONVS$_Ld254
	.long	90206425

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTDUPACES
_RESSTR_STDCONVS_TXTDUPACES:
	.long	_$STDCONVS$_Ld260
	.long	_$STDCONVS$_Ld258
	.long	_$STDCONVS$_Ld258
	.long	207065545

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTDURODS
_RESSTR_STDCONVS_TXTDURODS:
	.long	_$STDCONVS$_Ld264
	.long	_$STDCONVS$_Ld262
	.long	_$STDCONVS$_Ld262
	.long	189964601

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTDUCHAINS
_RESSTR_STDCONVS_TXTDUCHAINS:
	.long	_$STDCONVS$_Ld268
	.long	_$STDCONVS$_Ld266
	.long	_$STDCONVS$_Ld266
	.long	85655977

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTDULINKS
_RESSTR_STDCONVS_TXTDULINKS:
	.long	_$STDCONVS$_Ld272
	.long	_$STDCONVS$_Ld270
	.long	_$STDCONVS$_Ld270
	.long	92156409

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTDUPICAS
_RESSTR_STDCONVS_TXTDUPICAS:
	.long	_$STDCONVS$_Ld276
	.long	_$STDCONVS$_Ld274
	.long	_$STDCONVS$_Ld274
	.long	235147113

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTDUPOINTS
_RESSTR_STDCONVS_TXTDUPOINTS:
	.long	_$STDCONVS$_Ld280
	.long	_$STDCONVS$_Ld278
	.long	_$STDCONVS$_Ld278
	.long	93782105

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTMUNANOGRAMS
_RESSTR_STDCONVS_TXTMUNANOGRAMS:
	.long	_$STDCONVS$_Ld284
	.long	_$STDCONVS$_Ld282
	.long	_$STDCONVS$_Ld282
	.long	201792473

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTMUMICROGRAMS
_RESSTR_STDCONVS_TXTMUMICROGRAMS:
	.long	_$STDCONVS$_Ld288
	.long	_$STDCONVS$_Ld286
	.long	_$STDCONVS$_Ld286
	.long	247947369

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTMUMILLIGRAMS
_RESSTR_STDCONVS_TXTMUMILLIGRAMS:
	.long	_$STDCONVS$_Ld292
	.long	_$STDCONVS$_Ld290
	.long	_$STDCONVS$_Ld290
	.long	125669145

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTMUCENTIGRAMS
_RESSTR_STDCONVS_TXTMUCENTIGRAMS:
	.long	_$STDCONVS$_Ld296
	.long	_$STDCONVS$_Ld294
	.long	_$STDCONVS$_Ld294
	.long	33384537

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTMUDECIGRAMS
_RESSTR_STDCONVS_TXTMUDECIGRAMS:
	.long	_$STDCONVS$_Ld300
	.long	_$STDCONVS$_Ld298
	.long	_$STDCONVS$_Ld298
	.long	265094265

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTMUGRAMS
_RESSTR_STDCONVS_TXTMUGRAMS:
	.long	_$STDCONVS$_Ld304
	.long	_$STDCONVS$_Ld302
	.long	_$STDCONVS$_Ld302
	.long	138756121

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTMUDECAGRAMS
_RESSTR_STDCONVS_TXTMUDECAGRAMS:
	.long	_$STDCONVS$_Ld308
	.long	_$STDCONVS$_Ld306
	.long	_$STDCONVS$_Ld306
	.long	206588265

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTMUHECTOGRAMS
_RESSTR_STDCONVS_TXTMUHECTOGRAMS:
	.long	_$STDCONVS$_Ld312
	.long	_$STDCONVS$_Ld310
	.long	_$STDCONVS$_Ld310
	.long	250046537

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTMUKILOGRAMS
_RESSTR_STDCONVS_TXTMUKILOGRAMS:
	.long	_$STDCONVS$_Ld316
	.long	_$STDCONVS$_Ld314
	.long	_$STDCONVS$_Ld314
	.long	73867001

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTMUMETRICTONS
_RESSTR_STDCONVS_TXTMUMETRICTONS:
	.long	_$STDCONVS$_Ld320
	.long	_$STDCONVS$_Ld318
	.long	_$STDCONVS$_Ld318
	.long	133750057

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTMUDRAMS
_RESSTR_STDCONVS_TXTMUDRAMS:
	.long	_$STDCONVS$_Ld324
	.long	_$STDCONVS$_Ld322
	.long	_$STDCONVS$_Ld322
	.long	238635817

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTMUGRAINS
_RESSTR_STDCONVS_TXTMUGRAINS:
	.long	_$STDCONVS$_Ld328
	.long	_$STDCONVS$_Ld326
	.long	_$STDCONVS$_Ld326
	.long	87837465

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTMULONGTONS
_RESSTR_STDCONVS_TXTMULONGTONS:
	.long	_$STDCONVS$_Ld332
	.long	_$STDCONVS$_Ld330
	.long	_$STDCONVS$_Ld330
	.long	53808553

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTMUTONS
_RESSTR_STDCONVS_TXTMUTONS:
	.long	_$STDCONVS$_Ld336
	.long	_$STDCONVS$_Ld334
	.long	_$STDCONVS$_Ld334
	.long	243606633

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTMUOUNCES
_RESSTR_STDCONVS_TXTMUOUNCES:
	.long	_$STDCONVS$_Ld340
	.long	_$STDCONVS$_Ld338
	.long	_$STDCONVS$_Ld338
	.long	158723929

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTMUPOUNDS
_RESSTR_STDCONVS_TXTMUPOUNDS:
	.long	_$STDCONVS$_Ld344
	.long	_$STDCONVS$_Ld342
	.long	_$STDCONVS$_Ld342
	.long	187035481

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTMUSTONES
_RESSTR_STDCONVS_TXTMUSTONES:
	.long	_$STDCONVS$_Ld348
	.long	_$STDCONVS$_Ld346
	.long	_$STDCONVS$_Ld346
	.long	203953497

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTTUCELSIUS
_RESSTR_STDCONVS_TXTTUCELSIUS:
	.long	_$STDCONVS$_Ld352
	.long	_$STDCONVS$_Ld350
	.long	_$STDCONVS$_Ld350
	.long	107890809

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTTUKELVIN
_RESSTR_STDCONVS_TXTTUKELVIN:
	.long	_$STDCONVS$_Ld356
	.long	_$STDCONVS$_Ld354
	.long	_$STDCONVS$_Ld354
	.long	134273113

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTTUFAHRENHEIT
_RESSTR_STDCONVS_TXTTUFAHRENHEIT:
	.long	_$STDCONVS$_Ld360
	.long	_$STDCONVS$_Ld358
	.long	_$STDCONVS$_Ld358
	.long	123137993

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTTURANKINE
_RESSTR_STDCONVS_TXTTURANKINE:
	.long	_$STDCONVS$_Ld364
	.long	_$STDCONVS$_Ld362
	.long	_$STDCONVS$_Ld362
	.long	65119817

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTTUREAMUR
_RESSTR_STDCONVS_TXTTUREAMUR:
	.long	_$STDCONVS$_Ld368
	.long	_$STDCONVS$_Ld366
	.long	_$STDCONVS$_Ld366
	.long	99809929

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTTUMILLISECONDS
_RESSTR_STDCONVS_TXTTUMILLISECONDS:
	.long	_$STDCONVS$_Ld372
	.long	_$STDCONVS$_Ld370
	.long	_$STDCONVS$_Ld370
	.long	193555625

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTTUSECONDS
_RESSTR_STDCONVS_TXTTUSECONDS:
	.long	_$STDCONVS$_Ld376
	.long	_$STDCONVS$_Ld374
	.long	_$STDCONVS$_Ld374
	.long	80516409

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTTUMINUTES
_RESSTR_STDCONVS_TXTTUMINUTES:
	.long	_$STDCONVS$_Ld380
	.long	_$STDCONVS$_Ld378
	.long	_$STDCONVS$_Ld378
	.long	19723961

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTTUHOURS
_RESSTR_STDCONVS_TXTTUHOURS:
	.long	_$STDCONVS$_Ld384
	.long	_$STDCONVS$_Ld382
	.long	_$STDCONVS$_Ld382
	.long	156506505

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTTUDAYS
_RESSTR_STDCONVS_TXTTUDAYS:
	.long	_$STDCONVS$_Ld388
	.long	_$STDCONVS$_Ld386
	.long	_$STDCONVS$_Ld386
	.long	41951241

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTTUWEEKS
_RESSTR_STDCONVS_TXTTUWEEKS:
	.long	_$STDCONVS$_Ld392
	.long	_$STDCONVS$_Ld390
	.long	_$STDCONVS$_Ld390
	.long	40347401

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTTUFORTNIGHTS
_RESSTR_STDCONVS_TXTTUFORTNIGHTS:
	.long	_$STDCONVS$_Ld396
	.long	_$STDCONVS$_Ld394
	.long	_$STDCONVS$_Ld394
	.long	48632713

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTTUMONTHS
_RESSTR_STDCONVS_TXTTUMONTHS:
	.long	_$STDCONVS$_Ld400
	.long	_$STDCONVS$_Ld398
	.long	_$STDCONVS$_Ld398
	.long	134916553

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTTUYEARS
_RESSTR_STDCONVS_TXTTUYEARS:
	.long	_$STDCONVS$_Ld404
	.long	_$STDCONVS$_Ld402
	.long	_$STDCONVS$_Ld402
	.long	4398121

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTTUDECADES
_RESSTR_STDCONVS_TXTTUDECADES:
	.long	_$STDCONVS$_Ld408
	.long	_$STDCONVS$_Ld406
	.long	_$STDCONVS$_Ld406
	.long	18365321

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTTUCENTURIES
_RESSTR_STDCONVS_TXTTUCENTURIES:
	.long	_$STDCONVS$_Ld412
	.long	_$STDCONVS$_Ld410
	.long	_$STDCONVS$_Ld410
	.long	190489097

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTTUMILLENNIA
_RESSTR_STDCONVS_TXTTUMILLENNIA:
	.long	_$STDCONVS$_Ld416
	.long	_$STDCONVS$_Ld414
	.long	_$STDCONVS$_Ld414
	.long	237796665

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTTUDATETIME
_RESSTR_STDCONVS_TXTTUDATETIME:
	.long	_$STDCONVS$_Ld420
	.long	_$STDCONVS$_Ld418
	.long	_$STDCONVS$_Ld418
	.long	167258585

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTTUJULIANDATE
_RESSTR_STDCONVS_TXTTUJULIANDATE:
	.long	_$STDCONVS$_Ld424
	.long	_$STDCONVS$_Ld422
	.long	_$STDCONVS$_Ld422
	.long	143317593

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTTUMODIFIEDJULIANDATE
_RESSTR_STDCONVS_TXTTUMODIFIEDJULIANDATE:
	.long	_$STDCONVS$_Ld428
	.long	_$STDCONVS$_Ld426
	.long	_$STDCONVS$_Ld426
	.long	37189401

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVUCUBICMILLIMETERS
_RESSTR_STDCONVS_TXTVUCUBICMILLIMETERS:
	.long	_$STDCONVS$_Ld432
	.long	_$STDCONVS$_Ld430
	.long	_$STDCONVS$_Ld430
	.long	13460921

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVUCUBICCENTIMETERS
_RESSTR_STDCONVS_TXTVUCUBICCENTIMETERS:
	.long	_$STDCONVS$_Ld436
	.long	_$STDCONVS$_Ld434
	.long	_$STDCONVS$_Ld434
	.long	18042297

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVUCUBICDECIMETERS
_RESSTR_STDCONVS_TXTVUCUBICDECIMETERS:
	.long	_$STDCONVS$_Ld440
	.long	_$STDCONVS$_Ld438
	.long	_$STDCONVS$_Ld438
	.long	69335321

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVUCUBICMETERS
_RESSTR_STDCONVS_TXTVUCUBICMETERS:
	.long	_$STDCONVS$_Ld444
	.long	_$STDCONVS$_Ld442
	.long	_$STDCONVS$_Ld442
	.long	79303321

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVUCUBICDECAMETERS
_RESSTR_STDCONVS_TXTVUCUBICDECAMETERS:
	.long	_$STDCONVS$_Ld448
	.long	_$STDCONVS$_Ld446
	.long	_$STDCONVS$_Ld446
	.long	34389273

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVUCUBICHECTOMETERS
_RESSTR_STDCONVS_TXTVUCUBICHECTOMETERS:
	.long	_$STDCONVS$_Ld452
	.long	_$STDCONVS$_Ld450
	.long	_$STDCONVS$_Ld450
	.long	23453209

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVUCUBICKILOMETERS
_RESSTR_STDCONVS_TXTVUCUBICKILOMETERS:
	.long	_$STDCONVS$_Ld456
	.long	_$STDCONVS$_Ld454
	.long	_$STDCONVS$_Ld454
	.long	71418809

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVUCUBICINCHES
_RESSTR_STDCONVS_TXTVUCUBICINCHES:
	.long	_$STDCONVS$_Ld460
	.long	_$STDCONVS$_Ld458
	.long	_$STDCONVS$_Ld458
	.long	69154825

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVUCUBICFEET
_RESSTR_STDCONVS_TXTVUCUBICFEET:
	.long	_$STDCONVS$_Ld464
	.long	_$STDCONVS$_Ld462
	.long	_$STDCONVS$_Ld462
	.long	132883913

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVUCUBICYARDS
_RESSTR_STDCONVS_TXTVUCUBICYARDS:
	.long	_$STDCONVS$_Ld468
	.long	_$STDCONVS$_Ld466
	.long	_$STDCONVS$_Ld466
	.long	61646169

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVUCUBICMILES
_RESSTR_STDCONVS_TXTVUCUBICMILES:
	.long	_$STDCONVS$_Ld472
	.long	_$STDCONVS$_Ld470
	.long	_$STDCONVS$_Ld470
	.long	59134553

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVUMILLILITERS
_RESSTR_STDCONVS_TXTVUMILLILITERS:
	.long	_$STDCONVS$_Ld476
	.long	_$STDCONVS$_Ld474
	.long	_$STDCONVS$_Ld474
	.long	173324569

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVUCENTILITERS
_RESSTR_STDCONVS_TXTVUCENTILITERS:
	.long	_$STDCONVS$_Ld480
	.long	_$STDCONVS$_Ld478
	.long	_$STDCONVS$_Ld478
	.long	39288697

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVUDECILITERS
_RESSTR_STDCONVS_TXTVUDECILITERS:
	.long	_$STDCONVS$_Ld484
	.long	_$STDCONVS$_Ld482
	.long	_$STDCONVS$_Ld482
	.long	55675545

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVULITERS
_RESSTR_STDCONVS_TXTVULITERS:
	.long	_$STDCONVS$_Ld488
	.long	_$STDCONVS$_Ld486
	.long	_$STDCONVS$_Ld486
	.long	210902601

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVUDECALITERS
_RESSTR_STDCONVS_TXTVUDECALITERS:
	.long	_$STDCONVS$_Ld492
	.long	_$STDCONVS$_Ld490
	.long	_$STDCONVS$_Ld490
	.long	219717865

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVUHECTOLITERS
_RESSTR_STDCONVS_TXTVUHECTOLITERS:
	.long	_$STDCONVS$_Ld496
	.long	_$STDCONVS$_Ld494
	.long	_$STDCONVS$_Ld494
	.long	37162889

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVUKILOLITERS
_RESSTR_STDCONVS_TXTVUKILOLITERS:
	.long	_$STDCONVS$_Ld500
	.long	_$STDCONVS$_Ld498
	.long	_$STDCONVS$_Ld498
	.long	171026729

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVUACREFEET
_RESSTR_STDCONVS_TXTVUACREFEET:
	.long	_$STDCONVS$_Ld504
	.long	_$STDCONVS$_Ld502
	.long	_$STDCONVS$_Ld502
	.long	121358553

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVUACREINCHES
_RESSTR_STDCONVS_TXTVUACREINCHES:
	.long	_$STDCONVS$_Ld508
	.long	_$STDCONVS$_Ld506
	.long	_$STDCONVS$_Ld506
	.long	248399001

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVUCORDS
_RESSTR_STDCONVS_TXTVUCORDS:
	.long	_$STDCONVS$_Ld512
	.long	_$STDCONVS$_Ld510
	.long	_$STDCONVS$_Ld510
	.long	190064025

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVUCORDFEET
_RESSTR_STDCONVS_TXTVUCORDFEET:
	.long	_$STDCONVS$_Ld516
	.long	_$STDCONVS$_Ld514
	.long	_$STDCONVS$_Ld514
	.long	101330889

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVUDECISTERES
_RESSTR_STDCONVS_TXTVUDECISTERES:
	.long	_$STDCONVS$_Ld520
	.long	_$STDCONVS$_Ld518
	.long	_$STDCONVS$_Ld518
	.long	106464553

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVUSTERES
_RESSTR_STDCONVS_TXTVUSTERES:
	.long	_$STDCONVS$_Ld524
	.long	_$STDCONVS$_Ld522
	.long	_$STDCONVS$_Ld522
	.long	203960217

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVUDECASTERES
_RESSTR_STDCONVS_TXTVUDECASTERES:
	.long	_$STDCONVS$_Ld528
	.long	_$STDCONVS$_Ld526
	.long	_$STDCONVS$_Ld526
	.long	98075945

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVUFLUIDGALLONS
_RESSTR_STDCONVS_TXTVUFLUIDGALLONS:
	.long	_$STDCONVS$_Ld532
	.long	_$STDCONVS$_Ld530
	.long	_$STDCONVS$_Ld530
	.long	76775641

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVUFLUIDQUARTS
_RESSTR_STDCONVS_TXTVUFLUIDQUARTS:
	.long	_$STDCONVS$_Ld536
	.long	_$STDCONVS$_Ld534
	.long	_$STDCONVS$_Ld534
	.long	233628489

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVUFLUIDPINTS
_RESSTR_STDCONVS_TXTVUFLUIDPINTS:
	.long	_$STDCONVS$_Ld540
	.long	_$STDCONVS$_Ld538
	.long	_$STDCONVS$_Ld538
	.long	151980553

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVUFLUIDCUPS
_RESSTR_STDCONVS_TXTVUFLUIDCUPS:
	.long	_$STDCONVS$_Ld544
	.long	_$STDCONVS$_Ld542
	.long	_$STDCONVS$_Ld542
	.long	31120361

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVUFLUIDGILLS
_RESSTR_STDCONVS_TXTVUFLUIDGILLS:
	.long	_$STDCONVS$_Ld548
	.long	_$STDCONVS$_Ld546
	.long	_$STDCONVS$_Ld546
	.long	65759321

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVUFLUIDOUNCES
_RESSTR_STDCONVS_TXTVUFLUIDOUNCES:
	.long	_$STDCONVS$_Ld552
	.long	_$STDCONVS$_Ld550
	.long	_$STDCONVS$_Ld550
	.long	3407513

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVUFLUIDTABLESPOONS
_RESSTR_STDCONVS_TXTVUFLUIDTABLESPOONS:
	.long	_$STDCONVS$_Ld556
	.long	_$STDCONVS$_Ld554
	.long	_$STDCONVS$_Ld554
	.long	226105673

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVUFLUIDTEASPOONS
_RESSTR_STDCONVS_TXTVUFLUIDTEASPOONS:
	.long	_$STDCONVS$_Ld560
	.long	_$STDCONVS$_Ld558
	.long	_$STDCONVS$_Ld558
	.long	4001129

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVUDRYGALLONS
_RESSTR_STDCONVS_TXTVUDRYGALLONS:
	.long	_$STDCONVS$_Ld564
	.long	_$STDCONVS$_Ld562
	.long	_$STDCONVS$_Ld562
	.long	126814121

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVUDRYQUARTS
_RESSTR_STDCONVS_TXTVUDRYQUARTS:
	.long	_$STDCONVS$_Ld568
	.long	_$STDCONVS$_Ld566
	.long	_$STDCONVS$_Ld566
	.long	2404649

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVUDRYPINTS
_RESSTR_STDCONVS_TXTVUDRYPINTS:
	.long	_$STDCONVS$_Ld572
	.long	_$STDCONVS$_Ld570
	.long	_$STDCONVS$_Ld570
	.long	97749753

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVUDRYPECKS
_RESSTR_STDCONVS_TXTVUDRYPECKS:
	.long	_$STDCONVS$_Ld576
	.long	_$STDCONVS$_Ld574
	.long	_$STDCONVS$_Ld574
	.long	215241769

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVUDRYBUCKETS
_RESSTR_STDCONVS_TXTVUDRYBUCKETS:
	.long	_$STDCONVS$_Ld580
	.long	_$STDCONVS$_Ld578
	.long	_$STDCONVS$_Ld578
	.long	72526425

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVUDRYBUSHELS
_RESSTR_STDCONVS_TXTVUDRYBUSHELS:
	.long	_$STDCONVS$_Ld584
	.long	_$STDCONVS$_Ld582
	.long	_$STDCONVS$_Ld582
	.long	72526425

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVUUKGALLONS
_RESSTR_STDCONVS_TXTVUUKGALLONS:
	.long	_$STDCONVS$_Ld588
	.long	_$STDCONVS$_Ld586
	.long	_$STDCONVS$_Ld586
	.long	7691657

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVUUKPOTTLES
_RESSTR_STDCONVS_TXTVUUKPOTTLES:
	.long	_$STDCONVS$_Ld592
	.long	_$STDCONVS$_Ld590
	.long	_$STDCONVS$_Ld590
	.long	241154665

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVUUKQUARTS
_RESSTR_STDCONVS_TXTVUUKQUARTS:
	.long	_$STDCONVS$_Ld596
	.long	_$STDCONVS$_Ld594
	.long	_$STDCONVS$_Ld594
	.long	58841225

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVUUKPINTS
_RESSTR_STDCONVS_TXTVUUKPINTS:
	.long	_$STDCONVS$_Ld600
	.long	_$STDCONVS$_Ld598
	.long	_$STDCONVS$_Ld598
	.long	99207097

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVUUKGILLS
_RESSTR_STDCONVS_TXTVUUKGILLS:
	.long	_$STDCONVS$_Ld604
	.long	_$STDCONVS$_Ld602
	.long	_$STDCONVS$_Ld602
	.long	252544265

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVUUKOUNCES
_RESSTR_STDCONVS_TXTVUUKOUNCES:
	.long	_$STDCONVS$_Ld608
	.long	_$STDCONVS$_Ld606
	.long	_$STDCONVS$_Ld606
	.long	117850681

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVUUKPECKS
_RESSTR_STDCONVS_TXTVUUKPECKS:
	.long	_$STDCONVS$_Ld612
	.long	_$STDCONVS$_Ld610
	.long	_$STDCONVS$_Ld610
	.long	216933065

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVUUKBUCKETS
_RESSTR_STDCONVS_TXTVUUKBUCKETS:
	.long	_$STDCONVS$_Ld616
	.long	_$STDCONVS$_Ld614
	.long	_$STDCONVS$_Ld614
	.long	45256713

.data
	.align 2
.globl	_RESSTR_STDCONVS_TXTVUUKBUSHELS
_RESSTR_STDCONVS_TXTVUUKBUSHELS:
	.long	_$STDCONVS$_Ld620
	.long	_$STDCONVS$_Ld618
	.long	_$STDCONVS$_Ld618
	.long	45256713

.data
	.align 2
.globl	_RESSTR_STDCONVS_END
_RESSTR_STDCONVS_END:
	.long	_RESSTR_STDCONVS_END
# End asmlist al_resourcestrings
# Begin asmlist al_objc_data
# End asmlist al_objc_data
# Begin asmlist al_objc_pools
# End asmlist al_objc_pools
# Begin asmlist al_end
# End asmlist al_end
	.subsections_via_symbols

