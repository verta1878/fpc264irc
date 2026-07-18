# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_GLIB2_G_OPTION_ERROR$$LONGWORD
_GLIB2_G_OPTION_ERROR$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_g_option_error_quark$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_CHECKUNUSEDVARIABLE
_GLIB2_CHECKUNUSEDVARIABLE:
	pushl	%ebp
	movl	%esp,%ebp
	call	Lj8
Lj8:
	popl	%edx
	movl	L_glib_mem_profiler_table$non_lazy_ptr-Lj8(%edx),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj9
	jmp	Lj10
Lj9:
Lj10:
	movl	L_glib_interface_age$non_lazy_ptr-Lj8(%edx),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj11
	jmp	Lj14
Lj14:
	movl	L_glib_binary_age$non_lazy_ptr-Lj8(%edx),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj11
	jmp	Lj13
Lj13:
	movl	L_g_thread_use_default_impl$non_lazy_ptr-Lj8(%edx),%eax
	cmpl	$0,(%eax)
	jne	Lj11
	jmp	Lj12
Lj11:
Lj12:
	leave
	ret

.text
	.align 4
.globl	_GLIB2_GUINT16_SWAP_LE_BE_CONSTANT$WORD$$WORD
_GLIB2_GUINT16_SWAP_LE_BE_CONSTANT$WORD$$WORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movw	%ax,-4(%ebp)
	movw	-4(%ebp),%ax
	andw	$255,%ax
	movzwl	%ax,%eax
	shll	$8,%eax
	movw	-4(%ebp),%dx
	andw	$65280,%dx
	movzwl	%dx,%edx
	shrl	$8,%edx
	orl	%edx,%eax
	movw	%ax,-6(%ebp)
	movw	-6(%ebp),%ax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_GUINT32_SWAP_LE_BE_CONSTANT$LONGWORD$$LONGWORD
_GLIB2_GUINT32_SWAP_LE_BE_CONSTANT$LONGWORD$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	andl	$255,%eax
	shll	$24,%eax
	movl	-4(%ebp),%edx
	andl	$65280,%edx
	shll	$8,%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	andl	$16711680,%edx
	shrl	$8,%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	andl	$-16777216,%edx
	shrl	$24,%edx
	orl	%edx,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_GUINT_TO_POINTER$LONGWORD$$POINTER
_GLIB2_GUINT_TO_POINTER$LONGWORD$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_ARRAY_APPEND_VAL$PGARRAY$POINTER$$PGARRAY
_GLIB2_G_ARRAY_APPEND_VAL$PGARRAY$POINTER$$PGARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$1,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	leal	-8(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_g_array_append_vals$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_ARRAY_PREPEND_VAL$PGARRAY$POINTER$$PGARRAY
_GLIB2_G_ARRAY_PREPEND_VAL$PGARRAY$POINTER$$PGARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$1,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	leal	-8(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_g_array_prepend_vals$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_ARRAY_INSERT_VAL$PGARRAY$LONGWORD$POINTER$$PGARRAY
_GLIB2_G_ARRAY_INSERT_VAL$PGARRAY$LONGWORD$POINTER$$PGARRAY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$1,12(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	leal	-12(%ebp),%eax
	movl	%eax,8(%esp)
	call	L_g_array_insert_vals$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_PTR_ARRAY_INDEX$PGPTRARRAY$LONGWORD$$POINTER
_GLIB2_G_PTR_ARRAY_INDEX$PGPTRARRAY$LONGWORD$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%edx
	movl	-8(%ebp),%eax
	movl	(%edx,%eax,4),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_THREAD_ERROR$$LONGWORD
_GLIB2_G_THREAD_ERROR$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_g_thread_error_quark$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_MUTEX_LOCK$POINTER
_GLIB2_G_MUTEX_LOCK$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-8(%ebp)
	call	Lj68
Lj68:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_g_threads_got_initialized$non_lazy_ptr-Lj68(%ebx),%eax
	cmpl	$0,(%eax)
	jne	Lj69
	jmp	Lj70
Lj69:
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_g_thread_functions_for_glib_use$non_lazy_ptr-Lj68(%ebx),%eax
	movl	4(%eax),%eax
	call	*%eax
Lj70:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_MUTEX_TRYLOCK$POINTER$$BOOLEAN32
_GLIB2_G_MUTEX_TRYLOCK$POINTER$$BOOLEAN32:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj74
Lj74:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_g_threads_got_initialized$non_lazy_ptr-Lj74(%ebx),%eax
	cmpl	$0,(%eax)
	jne	Lj75
	jmp	Lj76
Lj75:
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_g_thread_functions_for_glib_use$non_lazy_ptr-Lj74(%ebx),%eax
	movl	8(%eax),%eax
	call	*%eax
	movl	%eax,-8(%ebp)
	jmp	Lj81
Lj76:
	movl	$1,-8(%ebp)
Lj81:
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_MUTEX_UNLOCK$POINTER
_GLIB2_G_MUTEX_UNLOCK$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-8(%ebp)
	call	Lj85
Lj85:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_g_threads_got_initialized$non_lazy_ptr-Lj85(%ebx),%eax
	cmpl	$0,(%eax)
	jne	Lj86
	jmp	Lj87
Lj86:
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_g_thread_functions_for_glib_use$non_lazy_ptr-Lj85(%ebx),%eax
	movl	12(%eax),%eax
	call	*%eax
Lj87:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_MUTEX_FREE$POINTER
_GLIB2_G_MUTEX_FREE$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-8(%ebp)
	call	Lj91
Lj91:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_g_threads_got_initialized$non_lazy_ptr-Lj91(%ebx),%eax
	cmpl	$0,(%eax)
	jne	Lj92
	jmp	Lj93
Lj92:
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_g_thread_functions_for_glib_use$non_lazy_ptr-Lj91(%ebx),%eax
	movl	16(%eax),%eax
	call	*%eax
Lj93:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_COND_WAIT$POINTER$POINTER
_GLIB2_G_COND_WAIT$POINTER$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj97
Lj97:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	L_g_threads_got_initialized$non_lazy_ptr-Lj97(%ebx),%eax
	cmpl	$0,(%eax)
	jne	Lj98
	jmp	Lj99
Lj98:
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_g_thread_functions_for_glib_use$non_lazy_ptr-Lj97(%ebx),%eax
	movl	32(%eax),%eax
	call	*%eax
Lj99:
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_COND_TIMED_WAIT$POINTER$POINTER$PGTIMEVAL$$BOOLEAN32
_GLIB2_G_COND_TIMED_WAIT$POINTER$POINTER$PGTIMEVAL$$BOOLEAN32:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	call	Lj105
Lj105:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	L_g_threads_got_initialized$non_lazy_ptr-Lj105(%ebx),%eax
	cmpl	$0,(%eax)
	jne	Lj106
	jmp	Lj107
Lj106:
	movl	-12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_g_thread_functions_for_glib_use$non_lazy_ptr-Lj105(%ebx),%eax
	movl	36(%eax),%eax
	call	*%eax
	movl	%eax,-16(%ebp)
	jmp	Lj116
Lj107:
	movl	$1,-16(%ebp)
Lj116:
	movl	-16(%ebp),%eax
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_THREAD_SUPPORTED$$BOOLEAN32
_GLIB2_G_THREAD_SUPPORTED$$BOOLEAN32:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj120
Lj120:
	popl	%edx
	movl	L_g_threads_got_initialized$non_lazy_ptr-Lj120(%edx),%eax
	movl	(%eax),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_MUTEX_NEW$$POINTER
_GLIB2_G_MUTEX_NEW$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj124
Lj124:
	popl	%edx
	movl	L_g_thread_functions_for_glib_use$non_lazy_ptr-Lj124(%edx),%eax
	movl	(%eax),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_COND_NEW$$POINTER
_GLIB2_G_COND_NEW$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj128
Lj128:
	popl	%edx
	movl	L_g_thread_functions_for_glib_use$non_lazy_ptr-Lj128(%edx),%eax
	movl	20(%eax),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_COND_SIGNAL$POINTER
_GLIB2_G_COND_SIGNAL$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-8(%ebp)
	call	Lj132
Lj132:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_g_threads_got_initialized$non_lazy_ptr-Lj132(%ebx),%eax
	cmpl	$0,(%eax)
	jne	Lj133
	jmp	Lj134
Lj133:
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_g_thread_functions_for_glib_use$non_lazy_ptr-Lj132(%ebx),%eax
	movl	24(%eax),%eax
	call	*%eax
Lj134:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_COND_BROADCAST$POINTER
_GLIB2_G_COND_BROADCAST$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-8(%ebp)
	call	Lj138
Lj138:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_g_threads_got_initialized$non_lazy_ptr-Lj138(%ebx),%eax
	cmpl	$0,(%eax)
	jne	Lj139
	jmp	Lj140
Lj139:
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_g_thread_functions_for_glib_use$non_lazy_ptr-Lj138(%ebx),%eax
	movl	28(%eax),%eax
	call	*%eax
Lj140:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_COND_FREE$POINTER
_GLIB2_G_COND_FREE$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-8(%ebp)
	call	Lj144
Lj144:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_g_threads_got_initialized$non_lazy_ptr-Lj144(%ebx),%eax
	cmpl	$0,(%eax)
	jne	Lj145
	jmp	Lj146
Lj145:
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_g_thread_functions_for_glib_use$non_lazy_ptr-Lj144(%ebx),%eax
	movl	40(%eax),%eax
	call	*%eax
Lj146:
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_PRIVATE_NEW$TGDESTROYNOTIFY$$POINTER
_GLIB2_G_PRIVATE_NEW$TGDESTROYNOTIFY$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj150
Lj150:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_g_thread_functions_for_glib_use$non_lazy_ptr-Lj150(%ebx),%eax
	movl	44(%eax),%eax
	call	*%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_PRIVATE_GET$POINTER$$POINTER
_GLIB2_G_PRIVATE_GET$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	call	Lj156
Lj156:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_g_threads_got_initialized$non_lazy_ptr-Lj156(%ebx),%eax
	cmpl	$0,(%eax)
	jne	Lj157
	jmp	Lj158
Lj157:
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movl	L_g_thread_functions_for_glib_use$non_lazy_ptr-Lj156(%ebx),%eax
	movl	48(%eax),%eax
	call	*%eax
	movl	%eax,-8(%ebp)
	jmp	Lj163
Lj158:
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
Lj163:
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_PRIVATE_SET$POINTER$POINTER
_GLIB2_G_PRIVATE_SET$POINTER$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj167
Lj167:
	popl	%ecx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	L_g_threads_got_initialized$non_lazy_ptr-Lj167(%ecx),%eax
	cmpl	$0,(%eax)
	jne	Lj168
	jmp	Lj169
Lj169:
	movl	-4(%ebp),%eax
	movl	-8(%ebp),%edx
	movl	%edx,(%eax)
Lj168:
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_THREAD_YIELD
_GLIB2_G_THREAD_YIELD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj173
Lj173:
	popl	%ebx
	movl	L_g_threads_got_initialized$non_lazy_ptr-Lj173(%ebx),%eax
	cmpl	$0,(%eax)
	jne	Lj174
	jmp	Lj175
Lj174:
	movl	L_g_thread_functions_for_glib_use$non_lazy_ptr-Lj173(%ebx),%eax
	movl	60(%eax),%eax
	call	*%eax
Lj175:
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_THREAD_CREATE$TGTHREADFUNC$POINTER$BOOLEAN32$PPGERROR$$PGTHREAD
_GLIB2_G_THREAD_CREATE$TGTHREADFUNC$POINTER$BOOLEAN32$PPGERROR$$PGTHREAD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$1,20(%esp)
	movl	$0,16(%esp)
	movl	$0,8(%esp)
	movl	8(%ebp),%eax
	movl	%eax,24(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_thread_create_full$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_STATIC_MUTEX_GET_MUTEX$PPGMUTEX$$POINTER
_GLIB2_G_STATIC_MUTEX_GET_MUTEX$PPGMUTEX$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_static_mutex_get_mutex_impl$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_STATIC_MUTEX_LOCK$PGSTATICMUTEX
_GLIB2_G_STATIC_MUTEX_LOCK$PGSTATICMUTEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_static_mutex_get_mutex_impl$stub
	call	L_GLIB2_G_MUTEX_LOCK$POINTER$stub
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_STATIC_MUTEX_TRYLOCK$PGSTATICMUTEX$$BOOLEAN32
_GLIB2_G_STATIC_MUTEX_TRYLOCK$PGSTATICMUTEX$$BOOLEAN32:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_STATIC_MUTEX_GET_MUTEX$PPGMUTEX$$POINTER$stub
	call	L_GLIB2_G_MUTEX_TRYLOCK$POINTER$$BOOLEAN32$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_STATIC_MUTEX_UNLOCK$PGSTATICMUTEX
_GLIB2_G_STATIC_MUTEX_UNLOCK$PGSTATICMUTEX:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_static_mutex_get_mutex_impl$stub
	call	L_GLIB2_G_MUTEX_UNLOCK$POINTER$stub
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_MAIN_NEW$BOOLEAN32$$POINTER
_GLIB2_G_MAIN_NEW$BOOLEAN32$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_g_main_loop_new$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_MAIN_ITERATION$BOOLEAN32$$BOOLEAN32
_GLIB2_G_MAIN_ITERATION$BOOLEAN32$$BOOLEAN32:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_g_main_context_iteration$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_MAIN_PENDING$$BOOLEAN32
_GLIB2_G_MAIN_PENDING$$BOOLEAN32:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	$0,(%esp)
	call	L_g_main_context_pending$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_MAIN_SET_POLL_FUNC$TGPOLLFUNC
_GLIB2_G_MAIN_SET_POLL_FUNC$TGPOLLFUNC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_g_main_context_set_poll_func$stub
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_SLIST_NEXT$PGSLIST$$PGSLIST
_GLIB2_G_SLIST_NEXT$PGSLIST$$PGSLIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj250
	jmp	Lj251
Lj250:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj254
Lj251:
	movl	$0,-8(%ebp)
Lj254:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_NEW$LONGWORD$LONGWORD$$POINTER
_GLIB2_G_NEW$LONGWORD$LONGWORD$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	mull	-8(%ebp)
	movl	%eax,(%esp)
	call	L_g_malloc$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_NEW0$LONGWORD$LONGWORD$$POINTER
_GLIB2_G_NEW0$LONGWORD$LONGWORD$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	mull	-8(%ebp)
	movl	%eax,(%esp)
	call	L_g_malloc0$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_RENEW$LONGWORD$POINTER$LONGWORD$$POINTER
_GLIB2_G_RENEW$LONGWORD$POINTER$LONGWORD$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	movl	-12(%ebp),%eax
	mull	-4(%ebp)
	movl	%eax,4(%esp)
	call	L_g_realloc$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_CHUNK_NEW$POINTER$$POINTER
_GLIB2_G_CHUNK_NEW$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_mem_chunk_alloc$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_CHUNK_NEW0$POINTER$$POINTER
_GLIB2_G_CHUNK_NEW0$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_mem_chunk_alloc0$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_CHUNK_FREE$POINTER$POINTER
_GLIB2_G_CHUNK_FREE$POINTER$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_mem_chunk_free$stub
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_LIST_PREVIOUS$PGLIST$$PGLIST
_GLIB2_G_LIST_PREVIOUS$PGLIST$$PGLIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj297
	jmp	Lj298
Lj297:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj301
Lj298:
	movl	$0,-8(%ebp)
Lj301:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_LIST_NEXT$PGLIST$$PGLIST
_GLIB2_G_LIST_NEXT$PGLIST$$PGLIST:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj306
	jmp	Lj307
Lj306:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj310
Lj307:
	movl	$0,-8(%ebp)
Lj310:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_CONVERT_ERROR$$LONGWORD
_GLIB2_G_CONVERT_ERROR$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_g_convert_error_quark$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_DATALIST_ID_SET_DATA$PPGDATA$LONGWORD$POINTER
_GLIB2_G_DATALIST_ID_SET_DATA$PPGDATA$LONGWORD$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,12(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_datalist_id_set_data_full$stub
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_DATALIST_ID_REMOVE_DATA$PPGDATA$LONGWORD
_GLIB2_G_DATALIST_ID_REMOVE_DATA$PPGDATA$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	call	L_GLIB2_G_DATALIST_ID_SET_DATA$PPGDATA$LONGWORD$POINTER$stub
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_DATALIST_GET_DATA$PPGDATA$PGCHAR$$PPGDATA
_GLIB2_G_DATALIST_GET_DATA$PPGDATA$PGCHAR$$PPGDATA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%ebx
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_quark_try_string$stub
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	call	L_g_datalist_id_get_data$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_DATALIST_SET_DATA_FULL$PPGDATA$PGCHAR$POINTER$TGDESTROYNOTIFY
_GLIB2_G_DATALIST_SET_DATA_FULL$PPGDATA$PGCHAR$POINTER$TGDESTROYNOTIFY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%ebx
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_quark_from_string$stub
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	%ebx,(%esp)
	call	L_g_datalist_id_set_data_full$stub
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_DATALIST_SET_DATA$PPGDATA$PGCHAR$POINTER
_GLIB2_G_DATALIST_SET_DATA$PPGDATA$PGCHAR$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_DATALIST_SET_DATA_FULL$PPGDATA$PGCHAR$POINTER$TGDESTROYNOTIFY$stub
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_DATALIST_REMOVE_NO_NOTIFY$PPGDATA$PGCHAR
_GLIB2_G_DATALIST_REMOVE_NO_NOTIFY$PPGDATA$PGCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%ebx
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_quark_try_string$stub
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	call	L_g_datalist_id_remove_no_notify$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_DATALIST_REMOVE_DATA$PPGDATA$PGCHAR
_GLIB2_G_DATALIST_REMOVE_DATA$PPGDATA$PGCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_quark_try_string$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	call	L_GLIB2_G_DATALIST_ID_SET_DATA$PPGDATA$LONGWORD$POINTER$stub
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_DATASET_ID_SET_DATA$POINTER$LONGWORD$POINTER
_GLIB2_G_DATASET_ID_SET_DATA$POINTER$LONGWORD$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,12(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_dataset_id_set_data_full$stub
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_DATASET_ID_REMOVE_DATA$POINTER$LONGWORD
_GLIB2_G_DATASET_ID_REMOVE_DATA$POINTER$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	call	L_GLIB2_G_DATASET_ID_SET_DATA$POINTER$LONGWORD$POINTER$stub
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_DATASET_GET_DATA$POINTER$PGCHAR$$POINTER
_GLIB2_G_DATASET_GET_DATA$POINTER$PGCHAR$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%ebx
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_quark_try_string$stub
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	call	L_g_dataset_id_get_data$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_DATASET_SET_DATA_FULL$POINTER$PGCHAR$POINTER$TGDESTROYNOTIFY
_GLIB2_G_DATASET_SET_DATA_FULL$POINTER$PGCHAR$POINTER$TGDESTROYNOTIFY:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%ebx
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_quark_from_string$stub
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	%ebx,(%esp)
	call	L_g_dataset_id_set_data_full$stub
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_DATASET_REMOVE_NO_NOTIFY$POINTER$PGCHAR
_GLIB2_G_DATASET_REMOVE_NO_NOTIFY$POINTER$PGCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%ebx
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_quark_try_string$stub
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	call	L_g_dataset_id_remove_no_notify$stub
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_DATASET_SET_DATA$POINTER$PGCHAR$POINTER
_GLIB2_G_DATASET_SET_DATA$POINTER$PGCHAR$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,(%esp)
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_DATASET_SET_DATA_FULL$POINTER$PGCHAR$POINTER$TGDESTROYNOTIFY$stub
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_DATASET_REMOVE_DATA$POINTER$PGCHAR
_GLIB2_G_DATASET_REMOVE_DATA$POINTER$PGCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_quark_try_string$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	movl	$0,%ecx
	call	L_GLIB2_G_DATASET_ID_SET_DATA$POINTER$LONGWORD$POINTER$stub
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_FILE_ERROR$$LONGWORD
_GLIB2_G_FILE_ERROR$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_g_file_error_quark$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGHOOKLIST_HOOK_SIZE$TGHOOKLIST$$LONGWORD
_GLIB2_TGHOOKLIST_HOOK_SIZE$TGHOOKLIST$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	andl	$65535,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGHOOKLIST_SET_HOOK_SIZE$TGHOOKLIST$LONGWORD
_GLIB2_TGHOOKLIST_SET_HOOK_SIZE$TGHOOKLIST$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	andl	$65535,%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	%eax,4(%edx)
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGHOOKLIST_IS_SETUP$TGHOOKLIST$$LONGWORD
_GLIB2_TGHOOKLIST_IS_SETUP$TGHOOKLIST$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	andl	$65536,%eax
	shrl	$16,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGHOOKLIST_SET_IS_SETUP$TGHOOKLIST$LONGWORD
_GLIB2_TGHOOKLIST_SET_IS_SETUP$TGHOOKLIST$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$16,%eax
	andl	$65536,%eax
	movl	-4(%ebp),%edx
	movl	4(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	%eax,4(%edx)
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_HOOK$POINTER$$PGHOOK
_GLIB2_G_HOOK$POINTER$$PGHOOK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_HOOK_FLAGS$PGHOOK$$LONGWORD
_GLIB2_G_HOOK_FLAGS$PGHOOK$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_HOOK_ACTIVE$PGHOOK$$BOOLEAN
_GLIB2_G_HOOK_ACTIVE$PGHOOK$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	andl	$1,%eax
	testl	%eax,%eax
	setneb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_HOOK_IN_CALL$PGHOOK$$BOOLEAN
_GLIB2_G_HOOK_IN_CALL$PGHOOK$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	20(%eax),%eax
	andl	$2,%eax
	testl	%eax,%eax
	setneb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_HOOK_IS_VALID$PGHOOK$$BOOLEAN
_GLIB2_G_HOOK_IS_VALID$PGHOOK$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	jne	Lj493
	jmp	Lj492
Lj493:
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_HOOK_ACTIVE$PGHOOK$$BOOLEAN$stub
	testb	%al,%al
	jne	Lj491
	jmp	Lj492
Lj491:
	movb	$1,-5(%ebp)
	jmp	Lj496
Lj492:
	movb	$0,-5(%ebp)
Lj496:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_HOOK_IS_UNLINKED$PGHOOK$$BOOLEAN
_GLIB2_G_HOOK_IS_UNLINKED$PGHOOK$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj503
	jmp	Lj500
Lj503:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj502
	jmp	Lj500
Lj502:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	je	Lj501
	jmp	Lj500
Lj501:
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj499
	jmp	Lj500
Lj499:
	movb	$1,-5(%ebp)
	jmp	Lj504
Lj500:
	movb	$0,-5(%ebp)
Lj504:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_HOOK_APPEND$PGHOOKLIST$PGHOOK
_GLIB2_G_HOOK_APPEND$PGHOOKLIST$PGHOOK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_hook_insert_before$stub
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_IO_CHANNEL_ERROR$$LONGWORD
_GLIB2_G_IO_CHANNEL_ERROR$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_g_io_channel_error_quark$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGIOCHANNEL_USE_BUFFER$TGIOCHANNEL$$LONGWORD
_GLIB2_TGIOCHANNEL_USE_BUFFER$TGIOCHANNEL$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	50(%eax),%ax
	andw	$1,%ax
	movzwl	%ax,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGIOCHANNEL_SET_USE_BUFFER$TGIOCHANNEL$LONGWORD
_GLIB2_TGIOCHANNEL_SET_USE_BUFFER$TGIOCHANNEL$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	andl	$1,%eax
	movl	-4(%ebp),%edx
	movzwl	50(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movw	%ax,50(%edx)
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGIOCHANNEL_DO_ENCODE$TGIOCHANNEL$$LONGWORD
_GLIB2_TGIOCHANNEL_DO_ENCODE$TGIOCHANNEL$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	50(%eax),%ax
	andw	$2,%ax
	movzwl	%ax,%eax
	shrl	$1,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGIOCHANNEL_SET_DO_ENCODE$TGIOCHANNEL$LONGWORD
_GLIB2_TGIOCHANNEL_SET_DO_ENCODE$TGIOCHANNEL$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$1,%eax
	andl	$2,%eax
	movl	-4(%ebp),%edx
	movzwl	50(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movw	%ax,50(%edx)
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGIOCHANNEL_CLOSE_ON_UNREF$TGIOCHANNEL$$LONGWORD
_GLIB2_TGIOCHANNEL_CLOSE_ON_UNREF$TGIOCHANNEL$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	50(%eax),%ax
	andw	$4,%ax
	movzwl	%ax,%eax
	shrl	$2,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGIOCHANNEL_SET_CLOSE_ON_UNREF$TGIOCHANNEL$LONGWORD
_GLIB2_TGIOCHANNEL_SET_CLOSE_ON_UNREF$TGIOCHANNEL$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$2,%eax
	andl	$4,%eax
	movl	-4(%ebp),%edx
	movzwl	50(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movw	%ax,50(%edx)
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGIOCHANNEL_IS_READABLE$TGIOCHANNEL$$LONGWORD
_GLIB2_TGIOCHANNEL_IS_READABLE$TGIOCHANNEL$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	50(%eax),%ax
	andw	$8,%ax
	movzwl	%ax,%eax
	shrl	$3,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGIOCHANNEL_SET_IS_READABLE$TGIOCHANNEL$LONGWORD
_GLIB2_TGIOCHANNEL_SET_IS_READABLE$TGIOCHANNEL$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$3,%eax
	andl	$8,%eax
	movl	-4(%ebp),%edx
	movzwl	50(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movw	%ax,50(%edx)
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGIOCHANNEL_IS_WRITEABLE$TGIOCHANNEL$$LONGWORD
_GLIB2_TGIOCHANNEL_IS_WRITEABLE$TGIOCHANNEL$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	50(%eax),%ax
	andw	$16,%ax
	movzwl	%ax,%eax
	shrl	$4,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGIOCHANNEL_SET_IS_WRITEABLE$TGIOCHANNEL$LONGWORD
_GLIB2_TGIOCHANNEL_SET_IS_WRITEABLE$TGIOCHANNEL$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$4,%eax
	andl	$16,%eax
	movl	-4(%ebp),%edx
	movzwl	50(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movw	%ax,50(%edx)
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGIOCHANNEL_IS_SEEKABLE$TGIOCHANNEL$$LONGWORD
_GLIB2_TGIOCHANNEL_IS_SEEKABLE$TGIOCHANNEL$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movw	50(%eax),%ax
	andw	$32,%ax
	movzwl	%ax,%eax
	shrl	$5,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGIOCHANNEL_SET_IS_SEEKABLE$TGIOCHANNEL$LONGWORD
_GLIB2_TGIOCHANNEL_SET_IS_SEEKABLE$TGIOCHANNEL$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$5,%eax
	andl	$32,%eax
	movl	-4(%ebp),%edx
	movzwl	50(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movw	%ax,50(%edx)
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_UTF8_NEXT_CHAR$PGUCHAR$$PGUCHAR
_GLIB2_G_UTF8_NEXT_CHAR$PGUCHAR$$PGUCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj566
Lj566:
	popl	%edx
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movzbl	(%eax),%ecx
	movl	L_g_utf8_skip$non_lazy_ptr-Lj566(%edx),%eax
	movl	(%eax),%eax
	addl	%eax,%ecx
	movzbl	(%ecx),%ecx
	movl	-4(%ebp),%eax
	addl	%eax,%ecx
	movl	%ecx,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_GLIB_CHECK_VERSION$LONGWORD$LONGWORD$LONGWORD$$BOOLEAN
_GLIB2_GLIB_CHECK_VERSION$LONGWORD$LONGWORD$LONGWORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj570
Lj570:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	L_glib_major_version$non_lazy_ptr-Lj570(%ebx),%eax
	movl	(%eax),%eax
	cmpl	-4(%ebp),%eax
	ja	Lj571
	jmp	Lj574
Lj574:
	movl	L_glib_major_version$non_lazy_ptr-Lj570(%ebx),%eax
	movl	(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj575
	jmp	Lj573
Lj575:
	movl	L_glib_minor_version$non_lazy_ptr-Lj570(%ebx),%eax
	movl	(%eax),%eax
	cmpl	-8(%ebp),%eax
	ja	Lj571
	jmp	Lj573
Lj573:
	movl	L_glib_major_version$non_lazy_ptr-Lj570(%ebx),%eax
	movl	(%eax),%eax
	cmpl	-4(%ebp),%eax
	je	Lj577
	jmp	Lj572
Lj577:
	movl	L_glib_minor_version$non_lazy_ptr-Lj570(%ebx),%eax
	movl	(%eax),%eax
	cmpl	-8(%ebp),%eax
	je	Lj576
	jmp	Lj572
Lj576:
	movl	L_glib_micro_version$non_lazy_ptr-Lj570(%ebx),%eax
	movl	(%eax),%eax
	cmpl	-12(%ebp),%eax
	jae	Lj571
	jmp	Lj572
Lj571:
	movb	$1,-13(%ebp)
	jmp	Lj578
Lj572:
	movb	$0,-13(%ebp)
Lj578:
	movb	-13(%ebp),%al
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_ERROR$PGCHAR$array_of_const
_GLIB2_G_ERROR$PGCHAR$array_of_const:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$344,%esp
	movl	%ebx,-332(%ebp)
	movl	%esi,-328(%ebp)
	movl	%edi,-324(%ebp)
	call	Lj580
Lj580:
	popl	-320(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,%esi
	incl	%esi
	shll	$3,%esi
	movl	%edx,%ebx
	movl	%esi,%eax
	call	LFPC_GETMEM$stub
	movl	%eax,%edi
	movl	%esi,%ecx
	movl	%edi,%edx
	movl	%ebx,%eax
	call	LFPC_MOVE$stub
	movl	%edi,-8(%ebp)
	movl	$0,-60(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj581
	movl	$4,%esi
	movl	$0,%ebx
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%eax
	movl	%eax,(%esp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-4(%ebp),%ecx
	leal	-316(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_pchar_to_shortstr$stub
	leal	-316(%ebp),%eax
	leal	-60(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-60(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-56(%ebp),%edx
	testl	%edx,%edx
	jne	Lj608
	movl	-320(%ebp),%eax
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj580(%eax),%ecx
	movl	%ecx,%edx
Lj608:
	movl	%edx,8(%esp)
	movl	%esi,4(%esp)
	movl	%ebx,(%esp)
	call	L_g_log$stub
Lj581:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_FREEMEM$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj582
	call	LFPC_RERAISE$stub
Lj582:
	movl	-332(%ebp),%ebx
	movl	-328(%ebp),%esi
	movl	-324(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_ERROR$PGCHAR
_GLIB2_G_ERROR$PGCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	$4,4(%esp)
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,8(%esp)
	call	L_g_log$stub
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_MESSAGE$PGCHAR$array_of_const
_GLIB2_G_MESSAGE$PGCHAR$array_of_const:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$344,%esp
	movl	%ebx,-332(%ebp)
	movl	%esi,-328(%ebp)
	movl	%edi,-324(%ebp)
	call	Lj618
Lj618:
	popl	-320(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,%esi
	incl	%esi
	shll	$3,%esi
	movl	%edx,%ebx
	movl	%esi,%eax
	call	LFPC_GETMEM$stub
	movl	%eax,%edi
	movl	%esi,%ecx
	movl	%edi,%edx
	movl	%ebx,%eax
	call	LFPC_MOVE$stub
	movl	%edi,-8(%ebp)
	movl	$0,-60(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj619
	movl	$32,%esi
	movl	$0,%ebx
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%eax
	movl	%eax,(%esp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-4(%ebp),%ecx
	leal	-316(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_pchar_to_shortstr$stub
	leal	-316(%ebp),%eax
	leal	-60(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-60(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-56(%ebp),%edx
	testl	%edx,%edx
	jne	Lj646
	movl	-320(%ebp),%eax
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj618(%eax),%ecx
	movl	%ecx,%edx
Lj646:
	movl	%edx,8(%esp)
	movl	%esi,4(%esp)
	movl	%ebx,(%esp)
	call	L_g_log$stub
Lj619:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_FREEMEM$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj620
	call	LFPC_RERAISE$stub
Lj620:
	movl	-332(%ebp),%ebx
	movl	-328(%ebp),%esi
	movl	-324(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_MESSAGE$PGCHAR
_GLIB2_G_MESSAGE$PGCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	$32,4(%esp)
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,8(%esp)
	call	L_g_log$stub
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_CRITICAL$PGCHAR$array_of_const
_GLIB2_G_CRITICAL$PGCHAR$array_of_const:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$344,%esp
	movl	%ebx,-332(%ebp)
	movl	%esi,-328(%ebp)
	movl	%edi,-324(%ebp)
	call	Lj656
Lj656:
	popl	-320(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,%esi
	incl	%esi
	shll	$3,%esi
	movl	%edx,%ebx
	movl	%esi,%eax
	call	LFPC_GETMEM$stub
	movl	%eax,%edi
	movl	%esi,%ecx
	movl	%edi,%edx
	movl	%ebx,%eax
	call	LFPC_MOVE$stub
	movl	%edi,-8(%ebp)
	movl	$0,-60(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj657
	movl	$8,%esi
	movl	$0,%ebx
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%eax
	movl	%eax,(%esp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-4(%ebp),%ecx
	leal	-316(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_pchar_to_shortstr$stub
	leal	-316(%ebp),%eax
	leal	-60(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-60(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-56(%ebp),%edx
	testl	%edx,%edx
	jne	Lj684
	movl	-320(%ebp),%eax
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj656(%eax),%ecx
	movl	%ecx,%edx
Lj684:
	movl	%edx,8(%esp)
	movl	%esi,4(%esp)
	movl	%ebx,(%esp)
	call	L_g_log$stub
Lj657:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_FREEMEM$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj658
	call	LFPC_RERAISE$stub
Lj658:
	movl	-332(%ebp),%ebx
	movl	-328(%ebp),%esi
	movl	-324(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_CRITICAL$PGCHAR
_GLIB2_G_CRITICAL$PGCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	$8,4(%esp)
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,8(%esp)
	call	L_g_log$stub
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_WARNING$PGCHAR$array_of_const
_GLIB2_G_WARNING$PGCHAR$array_of_const:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$344,%esp
	movl	%ebx,-332(%ebp)
	movl	%esi,-328(%ebp)
	movl	%edi,-324(%ebp)
	call	Lj694
Lj694:
	popl	-320(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%edx
	movl	-12(%ebp),%eax
	movl	%eax,%esi
	incl	%esi
	shll	$3,%esi
	movl	%edx,%ebx
	movl	%esi,%eax
	call	LFPC_GETMEM$stub
	movl	%eax,%edi
	movl	%esi,%ecx
	movl	%edi,%edx
	movl	%ebx,%eax
	call	LFPC_MOVE$stub
	movl	%edi,-8(%ebp)
	movl	$0,-60(%ebp)
	movl	$0,-56(%ebp)
	leal	-24(%ebp),%ecx
	leal	-48(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-52(%ebp)
	testl	%eax,%eax
	jne	Lj695
	movl	$16,%esi
	movl	$0,%ebx
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	leal	-56(%ebp),%eax
	movl	%eax,(%esp)
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	movl	-4(%ebp),%ecx
	leal	-316(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_pchar_to_shortstr$stub
	leal	-316(%ebp),%eax
	leal	-60(%ebp),%edx
	call	Lfpc_shortstr_to_ansistr$stub
	movl	-60(%ebp),%eax
	movl	-12(%ebp),%ecx
	movl	-8(%ebp),%edx
	call	L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub
	movl	-56(%ebp),%edx
	testl	%edx,%edx
	jne	Lj722
	movl	-320(%ebp),%eax
	movl	LFPC_EMPTYCHAR$non_lazy_ptr-Lj694(%eax),%ecx
	movl	%ecx,%edx
Lj722:
	movl	%edx,8(%esp)
	movl	%esi,4(%esp)
	movl	%ebx,(%esp)
	call	L_g_log$stub
Lj695:
	call	LFPC_POPADDRSTACK$stub
	leal	-60(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-60(%ebp)
	leal	-56(%ebp),%eax
	call	LFPC_ANSISTR_DECR_REF$stub
	movl	$0,-56(%ebp)
	movl	-8(%ebp),%eax
	call	LFPC_FREEMEM$stub
	movl	-52(%ebp),%eax
	testl	%eax,%eax
	je	Lj696
	call	LFPC_RERAISE$stub
Lj696:
	movl	-332(%ebp),%ebx
	movl	-328(%ebp),%esi
	movl	-324(%ebp),%edi
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_WARNING$PGCHAR
_GLIB2_G_WARNING$PGCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	$16,4(%esp)
	movl	$0,(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,8(%esp)
	call	L_g_log$stub
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_MARKUP_ERROR$$LONGWORD
_GLIB2_G_MARKUP_ERROR$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_g_markup_error_quark$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_NODE_IS_ROOT$PGNODE$$BOOLEAN
_GLIB2_G_NODE_IS_ROOT$PGNODE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	12(%eax),%eax
	testl	%eax,%eax
	je	Lj740
	jmp	Lj738
Lj740:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	testl	%eax,%eax
	je	Lj739
	jmp	Lj738
Lj739:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	testl	%eax,%eax
	je	Lj737
	jmp	Lj738
Lj737:
	movb	$1,-5(%ebp)
	jmp	Lj741
Lj738:
	movb	$0,-5(%ebp)
Lj741:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_NODE_IS_LEAF$PGNODE$$BOOLEAN
_GLIB2_G_NODE_IS_LEAF$PGNODE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	testl	%eax,%eax
	seteb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_NODE_APPEND$PGNODE$PGNODE$$PGNODE
_GLIB2_G_NODE_APPEND$PGNODE$PGNODE$$PGNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_node_insert_before$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_NODE_INSERT_DATA$PGNODE$LONGINT$POINTER$$PGNODE
_GLIB2_G_NODE_INSERT_DATA$PGNODE$LONGINT$POINTER$$PGNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%esi
	movl	-4(%ebp),%ebx
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_node_new$stub
	movl	%eax,8(%esp)
	movl	%esi,4(%esp)
	movl	%ebx,(%esp)
	call	L_g_node_insert$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_NODE_INSERT_DATA_BEFORE$PGNODE$PGNODE$POINTER$$PGNODE
_GLIB2_G_NODE_INSERT_DATA_BEFORE$PGNODE$PGNODE$POINTER$$PGNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-24(%ebp)
	movl	%esi,-20(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-8(%ebp),%esi
	movl	-4(%ebp),%ebx
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_node_new$stub
	movl	%eax,8(%esp)
	movl	%esi,4(%esp)
	movl	%ebx,(%esp)
	call	L_g_node_insert_before$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-24(%ebp),%ebx
	movl	-20(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_NODE_PREPEND_DATA$PGNODE$POINTER$$PGNODE
_GLIB2_G_NODE_PREPEND_DATA$PGNODE$POINTER$$PGNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%ebx
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_node_new$stub
	movl	%eax,4(%esp)
	movl	%ebx,(%esp)
	call	L_g_node_prepend$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_NODE_APPEND_DATA$PGNODE$POINTER$$PGNODE
_GLIB2_G_NODE_APPEND_DATA$PGNODE$POINTER$$PGNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%ebx,-20(%ebp)
	movl	%esi,-16(%ebp)
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	$0,%esi
	movl	-4(%ebp),%ebx
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_node_new$stub
	movl	%eax,8(%esp)
	movl	%esi,4(%esp)
	movl	%ebx,(%esp)
	call	L_g_node_insert_before$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	-20(%ebp),%ebx
	movl	-16(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_NODE_PREV_SIBLING$PGNODE$$PGNODE
_GLIB2_G_NODE_PREV_SIBLING$PGNODE$$PGNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj804
	jmp	Lj805
Lj804:
	movl	-4(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj808
Lj805:
	movl	$0,-8(%ebp)
Lj808:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_NODE_NEXT_SIBLING$PGNODE$$PGNODE
_GLIB2_G_NODE_NEXT_SIBLING$PGNODE$$PGNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj813
	jmp	Lj814
Lj813:
	movl	-4(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj817
Lj814:
	movl	$0,-8(%ebp)
Lj817:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_NODE_FIRST_CHILD$PGNODE$$PGNODE
_GLIB2_G_NODE_FIRST_CHILD$PGNODE$$PGNODE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	jne	Lj822
	jmp	Lj823
Lj822:
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	movl	%eax,-8(%ebp)
	jmp	Lj826
Lj823:
	movl	$0,-8(%ebp)
Lj826:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_RAND_BOOLEAN$POINTER$$BOOLEAN32
_GLIB2_G_RAND_BOOLEAN$POINTER$$BOOLEAN32:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_rand_int$stub
	andl	$32768,%eax
	testl	%eax,%eax
	movl	$0,-8(%ebp)
	setneb	-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_RANDOM_BOOLEAN$$BOOLEAN32
_GLIB2_G_RANDOM_BOOLEAN$$BOOLEAN32:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_g_random_int$stub
	andl	$32768,%eax
	testl	%eax,%eax
	movl	$0,-4(%ebp)
	setneb	-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGSCANNERCONFIG_CASE_SENSITIVE$TGSCANNERCONFIG$$LONGWORD
_GLIB2_TGSCANNERCONFIG_CASE_SENSITIVE$TGSCANNERCONFIG$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	andl	$1,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGSCANNERCONFIG_SET_CASE_SENSITIVE$TGSCANNERCONFIG$LONGWORD
_GLIB2_TGSCANNERCONFIG_SET_CASE_SENSITIVE$TGSCANNERCONFIG$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	andl	$1,%eax
	movl	-4(%ebp),%edx
	movl	16(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	%eax,16(%edx)
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGSCANNERCONFIG_SKIP_COMMENT_MULTI$TGSCANNERCONFIG$$LONGWORD
_GLIB2_TGSCANNERCONFIG_SKIP_COMMENT_MULTI$TGSCANNERCONFIG$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	andl	$2,%eax
	shrl	$1,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGSCANNERCONFIG_SET_SKIP_COMMENT_MULTI$TGSCANNERCONFIG$LONGWORD
_GLIB2_TGSCANNERCONFIG_SET_SKIP_COMMENT_MULTI$TGSCANNERCONFIG$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$1,%eax
	andl	$2,%eax
	movl	-4(%ebp),%edx
	movl	16(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	%eax,16(%edx)
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGSCANNERCONFIG_SKIP_COMMENT_SINGLE$TGSCANNERCONFIG$$LONGWORD
_GLIB2_TGSCANNERCONFIG_SKIP_COMMENT_SINGLE$TGSCANNERCONFIG$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	andl	$4,%eax
	shrl	$2,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGSCANNERCONFIG_SET_SKIP_COMMENT_SINGLE$TGSCANNERCONFIG$LONGWORD
_GLIB2_TGSCANNERCONFIG_SET_SKIP_COMMENT_SINGLE$TGSCANNERCONFIG$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$2,%eax
	andl	$4,%eax
	movl	-4(%ebp),%edx
	movl	16(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	%eax,16(%edx)
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGSCANNERCONFIG_SCAN_COMMENT_MULTI$TGSCANNERCONFIG$$LONGWORD
_GLIB2_TGSCANNERCONFIG_SCAN_COMMENT_MULTI$TGSCANNERCONFIG$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	andl	$8,%eax
	shrl	$3,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGSCANNERCONFIG_SET_SCAN_COMMENT_MULTI$TGSCANNERCONFIG$LONGWORD
_GLIB2_TGSCANNERCONFIG_SET_SCAN_COMMENT_MULTI$TGSCANNERCONFIG$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$3,%eax
	andl	$8,%eax
	movl	-4(%ebp),%edx
	movl	16(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	%eax,16(%edx)
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGSCANNERCONFIG_SCAN_IDENTIFIER$TGSCANNERCONFIG$$LONGWORD
_GLIB2_TGSCANNERCONFIG_SCAN_IDENTIFIER$TGSCANNERCONFIG$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	andl	$16,%eax
	shrl	$4,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGSCANNERCONFIG_SET_SCAN_IDENTIFIER$TGSCANNERCONFIG$LONGWORD
_GLIB2_TGSCANNERCONFIG_SET_SCAN_IDENTIFIER$TGSCANNERCONFIG$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$4,%eax
	andl	$16,%eax
	movl	-4(%ebp),%edx
	movl	16(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	%eax,16(%edx)
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGSCANNERCONFIG_SCAN_IDENTIFIER_1CHAR$TGSCANNERCONFIG$$LONGWORD
_GLIB2_TGSCANNERCONFIG_SCAN_IDENTIFIER_1CHAR$TGSCANNERCONFIG$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	andl	$32,%eax
	shrl	$5,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGSCANNERCONFIG_SET_SCAN_IDENTIFIER_1CHAR$TGSCANNERCONFIG$LONGWORD
_GLIB2_TGSCANNERCONFIG_SET_SCAN_IDENTIFIER_1CHAR$TGSCANNERCONFIG$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$5,%eax
	andl	$32,%eax
	movl	-4(%ebp),%edx
	movl	16(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	%eax,16(%edx)
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGSCANNERCONFIG_SCAN_IDENTIFIER_NULL$TGSCANNERCONFIG$$LONGWORD
_GLIB2_TGSCANNERCONFIG_SCAN_IDENTIFIER_NULL$TGSCANNERCONFIG$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	andl	$64,%eax
	shrl	$6,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGSCANNERCONFIG_SET_SCAN_IDENTIFIER_NULL$TGSCANNERCONFIG$LONGWORD
_GLIB2_TGSCANNERCONFIG_SET_SCAN_IDENTIFIER_NULL$TGSCANNERCONFIG$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$6,%eax
	andl	$64,%eax
	movl	-4(%ebp),%edx
	movl	16(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	%eax,16(%edx)
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGSCANNERCONFIG_SCAN_SYMBOLS$TGSCANNERCONFIG$$LONGWORD
_GLIB2_TGSCANNERCONFIG_SCAN_SYMBOLS$TGSCANNERCONFIG$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	andl	$128,%eax
	shrl	$7,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGSCANNERCONFIG_SET_SCAN_SYMBOLS$TGSCANNERCONFIG$LONGWORD
_GLIB2_TGSCANNERCONFIG_SET_SCAN_SYMBOLS$TGSCANNERCONFIG$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$7,%eax
	andl	$128,%eax
	movl	-4(%ebp),%edx
	movl	16(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	%eax,16(%edx)
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGSCANNERCONFIG_SCAN_BINARY$TGSCANNERCONFIG$$LONGWORD
_GLIB2_TGSCANNERCONFIG_SCAN_BINARY$TGSCANNERCONFIG$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	andl	$256,%eax
	shrl	$8,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGSCANNERCONFIG_SET_SCAN_BINARY$TGSCANNERCONFIG$LONGWORD
_GLIB2_TGSCANNERCONFIG_SET_SCAN_BINARY$TGSCANNERCONFIG$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$8,%eax
	andl	$256,%eax
	movl	-4(%ebp),%edx
	movl	16(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	%eax,16(%edx)
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGSCANNERCONFIG_SCAN_OCTAL$TGSCANNERCONFIG$$LONGWORD
_GLIB2_TGSCANNERCONFIG_SCAN_OCTAL$TGSCANNERCONFIG$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	andl	$512,%eax
	shrl	$9,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGSCANNERCONFIG_SET_SCAN_OCTAL$TGSCANNERCONFIG$LONGWORD
_GLIB2_TGSCANNERCONFIG_SET_SCAN_OCTAL$TGSCANNERCONFIG$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$9,%eax
	andl	$512,%eax
	movl	-4(%ebp),%edx
	movl	16(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	%eax,16(%edx)
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGSCANNERCONFIG_SCAN_FLOAT$TGSCANNERCONFIG$$LONGWORD
_GLIB2_TGSCANNERCONFIG_SCAN_FLOAT$TGSCANNERCONFIG$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	andl	$1024,%eax
	shrl	$10,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGSCANNERCONFIG_SET_SCAN_FLOAT$TGSCANNERCONFIG$LONGWORD
_GLIB2_TGSCANNERCONFIG_SET_SCAN_FLOAT$TGSCANNERCONFIG$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$10,%eax
	andl	$1024,%eax
	movl	-4(%ebp),%edx
	movl	16(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	%eax,16(%edx)
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGSCANNERCONFIG_SCAN_HEX$TGSCANNERCONFIG$$LONGWORD
_GLIB2_TGSCANNERCONFIG_SCAN_HEX$TGSCANNERCONFIG$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	andl	$2048,%eax
	shrl	$11,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGSCANNERCONFIG_SET_SCAN_HEX$TGSCANNERCONFIG$LONGWORD
_GLIB2_TGSCANNERCONFIG_SET_SCAN_HEX$TGSCANNERCONFIG$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$11,%eax
	andl	$2048,%eax
	movl	-4(%ebp),%edx
	movl	16(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	%eax,16(%edx)
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGSCANNERCONFIG_SCAN_HEX_DOLLAR$TGSCANNERCONFIG$$LONGWORD
_GLIB2_TGSCANNERCONFIG_SCAN_HEX_DOLLAR$TGSCANNERCONFIG$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	andl	$4096,%eax
	shrl	$12,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGSCANNERCONFIG_SET_SCAN_HEX_DOLLAR$TGSCANNERCONFIG$LONGWORD
_GLIB2_TGSCANNERCONFIG_SET_SCAN_HEX_DOLLAR$TGSCANNERCONFIG$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$12,%eax
	andl	$4096,%eax
	movl	-4(%ebp),%edx
	movl	16(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	%eax,16(%edx)
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGSCANNERCONFIG_SCAN_STRING_SQ$TGSCANNERCONFIG$$LONGWORD
_GLIB2_TGSCANNERCONFIG_SCAN_STRING_SQ$TGSCANNERCONFIG$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	andl	$8192,%eax
	shrl	$13,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGSCANNERCONFIG_SET_SCAN_STRING_SQ$TGSCANNERCONFIG$LONGWORD
_GLIB2_TGSCANNERCONFIG_SET_SCAN_STRING_SQ$TGSCANNERCONFIG$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$13,%eax
	andl	$8192,%eax
	movl	-4(%ebp),%edx
	movl	16(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	%eax,16(%edx)
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGSCANNERCONFIG_SCAN_STRING_DQ$TGSCANNERCONFIG$$LONGWORD
_GLIB2_TGSCANNERCONFIG_SCAN_STRING_DQ$TGSCANNERCONFIG$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	andl	$16384,%eax
	shrl	$14,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGSCANNERCONFIG_SET_SCAN_STRING_DQ$TGSCANNERCONFIG$LONGWORD
_GLIB2_TGSCANNERCONFIG_SET_SCAN_STRING_DQ$TGSCANNERCONFIG$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$14,%eax
	andl	$16384,%eax
	movl	-4(%ebp),%edx
	movl	16(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	%eax,16(%edx)
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGSCANNERCONFIG_NUMBERS_2_INT$TGSCANNERCONFIG$$LONGWORD
_GLIB2_TGSCANNERCONFIG_NUMBERS_2_INT$TGSCANNERCONFIG$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	andl	$32768,%eax
	shrl	$15,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGSCANNERCONFIG_SET_NUMBERS_2_INT$TGSCANNERCONFIG$LONGWORD
_GLIB2_TGSCANNERCONFIG_SET_NUMBERS_2_INT$TGSCANNERCONFIG$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$15,%eax
	andl	$32768,%eax
	movl	-4(%ebp),%edx
	movl	16(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	%eax,16(%edx)
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGSCANNERCONFIG_INT_2_FLOAT$TGSCANNERCONFIG$$LONGWORD
_GLIB2_TGSCANNERCONFIG_INT_2_FLOAT$TGSCANNERCONFIG$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	andl	$65536,%eax
	shrl	$16,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGSCANNERCONFIG_SET_INT_2_FLOAT$TGSCANNERCONFIG$LONGWORD
_GLIB2_TGSCANNERCONFIG_SET_INT_2_FLOAT$TGSCANNERCONFIG$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$16,%eax
	andl	$65536,%eax
	movl	-4(%ebp),%edx
	movl	16(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	%eax,16(%edx)
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGSCANNERCONFIG_IDENTIFIER_2_STRING$TGSCANNERCONFIG$$LONGWORD
_GLIB2_TGSCANNERCONFIG_IDENTIFIER_2_STRING$TGSCANNERCONFIG$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	andl	$131072,%eax
	shrl	$17,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGSCANNERCONFIG_SET_IDENTIFIER_2_STRING$TGSCANNERCONFIG$LONGWORD
_GLIB2_TGSCANNERCONFIG_SET_IDENTIFIER_2_STRING$TGSCANNERCONFIG$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$17,%eax
	andl	$131072,%eax
	movl	-4(%ebp),%edx
	movl	16(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	%eax,16(%edx)
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGSCANNERCONFIG_CHAR_2_TOKEN$TGSCANNERCONFIG$$LONGWORD
_GLIB2_TGSCANNERCONFIG_CHAR_2_TOKEN$TGSCANNERCONFIG$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	andl	$262144,%eax
	shrl	$18,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGSCANNERCONFIG_SET_CHAR_2_TOKEN$TGSCANNERCONFIG$LONGWORD
_GLIB2_TGSCANNERCONFIG_SET_CHAR_2_TOKEN$TGSCANNERCONFIG$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$18,%eax
	andl	$262144,%eax
	movl	-4(%ebp),%edx
	movl	16(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	%eax,16(%edx)
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGSCANNERCONFIG_SYMBOL_2_TOKEN$TGSCANNERCONFIG$$LONGWORD
_GLIB2_TGSCANNERCONFIG_SYMBOL_2_TOKEN$TGSCANNERCONFIG$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	andl	$524288,%eax
	shrl	$19,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGSCANNERCONFIG_SET_SYMBOL_2_TOKEN$TGSCANNERCONFIG$LONGWORD
_GLIB2_TGSCANNERCONFIG_SET_SYMBOL_2_TOKEN$TGSCANNERCONFIG$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$19,%eax
	andl	$524288,%eax
	movl	-4(%ebp),%edx
	movl	16(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	%eax,16(%edx)
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGSCANNERCONFIG_SCOPE_0_FALLBACK$TGSCANNERCONFIG$$LONGWORD
_GLIB2_TGSCANNERCONFIG_SCOPE_0_FALLBACK$TGSCANNERCONFIG$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	16(%eax),%eax
	andl	$1048576,%eax
	shrl	$20,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_TGSCANNERCONFIG_SET_SCOPE_0_FALLBACK$TGSCANNERCONFIG$LONGWORD
_GLIB2_TGSCANNERCONFIG_SET_SCOPE_0_FALLBACK$TGSCANNERCONFIG$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$20,%eax
	andl	$1048576,%eax
	movl	-4(%ebp),%edx
	movl	16(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	%eax,16(%edx)
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_SCANNER_FREEZE_SYMBOL_TABLE$PGSCANNER
_GLIB2_G_SCANNER_FREEZE_SYMBOL_TABLE$PGSCANNER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1009
	jmp	Lj1010
Lj1009:
Lj1010:
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_SCANNER_THAW_SYMBOL_TABLE$PGSCANNER
_GLIB2_G_SCANNER_THAW_SYMBOL_TABLE$PGSCANNER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	testl	%eax,%eax
	je	Lj1013
	jmp	Lj1014
Lj1013:
Lj1014:
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_SHELL_ERROR$$LONGWORD
_GLIB2_G_SHELL_ERROR$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_g_shell_error_quark$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_SPAWN_ERROR$$LONGWORD
_GLIB2_G_SPAWN_ERROR$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_g_spawn_error_quark$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_ASCII_ISALNUM$CHAR$$BOOLEAN
_GLIB2_G_ASCII_ISALNUM$CHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj1024
Lj1024:
	popl	%edx
	movb	%al,-4(%ebp)
	movl	L_g_ascii_table$non_lazy_ptr-Lj1024(%edx),%eax
	movl	(%eax),%ecx
	movzbl	-4(%ebp),%eax
	movw	(%ecx,%eax,2),%ax
	andw	$1,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	setneb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_ASCII_ISALPHA$CHAR$$BOOLEAN
_GLIB2_G_ASCII_ISALPHA$CHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj1028
Lj1028:
	popl	%edx
	movb	%al,-4(%ebp)
	movl	L_g_ascii_table$non_lazy_ptr-Lj1028(%edx),%eax
	movl	(%eax),%ecx
	movzbl	-4(%ebp),%eax
	movw	(%ecx,%eax,2),%ax
	andw	$2,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	setneb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_ASCII_ISCNTRL$CHAR$$BOOLEAN
_GLIB2_G_ASCII_ISCNTRL$CHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj1032
Lj1032:
	popl	%edx
	movb	%al,-4(%ebp)
	movl	L_g_ascii_table$non_lazy_ptr-Lj1032(%edx),%eax
	movl	(%eax),%ecx
	movzbl	-4(%ebp),%eax
	movw	(%ecx,%eax,2),%ax
	andw	$4,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	setneb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_ASCII_ISDIGIT$CHAR$$BOOLEAN
_GLIB2_G_ASCII_ISDIGIT$CHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj1036
Lj1036:
	popl	%edx
	movb	%al,-4(%ebp)
	movl	L_g_ascii_table$non_lazy_ptr-Lj1036(%edx),%eax
	movl	(%eax),%ecx
	movzbl	-4(%ebp),%eax
	movw	(%ecx,%eax,2),%ax
	andw	$8,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	setneb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_ASCII_ISGRAPH$CHAR$$BOOLEAN
_GLIB2_G_ASCII_ISGRAPH$CHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj1040
Lj1040:
	popl	%edx
	movb	%al,-4(%ebp)
	movl	L_g_ascii_table$non_lazy_ptr-Lj1040(%edx),%eax
	movl	(%eax),%ecx
	movzbl	-4(%ebp),%eax
	movw	(%ecx,%eax,2),%ax
	andw	$16,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	setneb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_ASCII_ISLOWER$CHAR$$BOOLEAN
_GLIB2_G_ASCII_ISLOWER$CHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj1044
Lj1044:
	popl	%edx
	movb	%al,-4(%ebp)
	movl	L_g_ascii_table$non_lazy_ptr-Lj1044(%edx),%eax
	movl	(%eax),%ecx
	movzbl	-4(%ebp),%eax
	movw	(%ecx,%eax,2),%ax
	andw	$32,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	setneb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_ASCII_ISPRINT$CHAR$$BOOLEAN
_GLIB2_G_ASCII_ISPRINT$CHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj1048
Lj1048:
	popl	%edx
	movb	%al,-4(%ebp)
	movl	L_g_ascii_table$non_lazy_ptr-Lj1048(%edx),%eax
	movl	(%eax),%ecx
	movzbl	-4(%ebp),%eax
	movw	(%ecx,%eax,2),%ax
	andw	$64,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	setneb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_ASCII_ISPUNCT$CHAR$$BOOLEAN
_GLIB2_G_ASCII_ISPUNCT$CHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj1052
Lj1052:
	popl	%edx
	movb	%al,-4(%ebp)
	movl	L_g_ascii_table$non_lazy_ptr-Lj1052(%edx),%eax
	movl	(%eax),%ecx
	movzbl	-4(%ebp),%eax
	movw	(%ecx,%eax,2),%ax
	andw	$128,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	setneb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_ASCII_ISSPACE$CHAR$$BOOLEAN
_GLIB2_G_ASCII_ISSPACE$CHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj1056
Lj1056:
	popl	%edx
	movb	%al,-4(%ebp)
	movl	L_g_ascii_table$non_lazy_ptr-Lj1056(%edx),%eax
	movl	(%eax),%ecx
	movzbl	-4(%ebp),%eax
	movw	(%ecx,%eax,2),%ax
	andw	$256,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	setneb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_ASCII_ISUPPER$CHAR$$BOOLEAN
_GLIB2_G_ASCII_ISUPPER$CHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj1060
Lj1060:
	popl	%edx
	movb	%al,-4(%ebp)
	movl	L_g_ascii_table$non_lazy_ptr-Lj1060(%edx),%eax
	movl	(%eax),%ecx
	movzbl	-4(%ebp),%eax
	movw	(%ecx,%eax,2),%ax
	andw	$512,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	setneb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_ASCII_ISXDIGIT$CHAR$$BOOLEAN
_GLIB2_G_ASCII_ISXDIGIT$CHAR$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	Lj1064
Lj1064:
	popl	%edx
	movb	%al,-4(%ebp)
	movl	L_g_ascii_table$non_lazy_ptr-Lj1064(%edx),%eax
	movl	(%eax),%ecx
	movzbl	-4(%ebp),%eax
	movw	(%ecx,%eax,2),%ax
	andw	$1024,%ax
	movzwl	%ax,%eax
	testl	%eax,%eax
	setneb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_STRSTRIP$PGCHAR$$PGCHAR
_GLIB2_G_STRSTRIP$PGCHAR$$PGCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_strchug$stub
	movl	%eax,(%esp)
	call	L_g_strchomp$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_TYPE_MAKE_FUNDAMENTAL$LONGINT$$LONGWORD
_GLIB2_G_TYPE_MAKE_FUNDAMENTAL$LONGINT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	shll	$2,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_TYPE_IS_FUNDAMENTAL$LONGWORD$$BOOLEAN
_GLIB2_G_TYPE_IS_FUNDAMENTAL$LONGWORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1020,%eax
	setbeb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_TYPE_IS_DERIVED$LONGWORD$$BOOLEAN
_GLIB2_G_TYPE_IS_DERIVED$LONGWORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$1020,%eax
	setab	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_TYPE_IS_INTERFACE$LONGWORD$$BOOLEAN
_GLIB2_G_TYPE_IS_INTERFACE$LONGWORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_type_fundamental$stub
	cmpl	$8,%eax
	seteb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_TYPE_IS_CLASSED$LONGWORD$$BOOLEAN32
_GLIB2_G_TYPE_IS_CLASSED$LONGWORD$$BOOLEAN32:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	$1,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_type_test_flags$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_TYPE_IS_INSTANTIATABLE$LONGWORD$$BOOLEAN
_GLIB2_G_TYPE_IS_INSTANTIATABLE$LONGWORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	$2,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_type_test_flags$stub
	orl	%eax,%eax
	setneb	%al
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_TYPE_IS_DERIVABLE$LONGWORD$$BOOLEAN
_GLIB2_G_TYPE_IS_DERIVABLE$LONGWORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	$4,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_type_test_flags$stub
	orl	%eax,%eax
	setneb	%al
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_TYPE_IS_DEEP_DERIVABLE$LONGWORD$$BOOLEAN
_GLIB2_G_TYPE_IS_DEEP_DERIVABLE$LONGWORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	$8,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_type_test_flags$stub
	orl	%eax,%eax
	setneb	%al
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_TYPE_IS_ABSTRACT$LONGWORD$$BOOLEAN
_GLIB2_G_TYPE_IS_ABSTRACT$LONGWORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	$16,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_type_test_flags$stub
	orl	%eax,%eax
	setneb	%al
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_TYPE_IS_VALUE_ABSTRACT$LONGWORD$$BOOLEAN
_GLIB2_G_TYPE_IS_VALUE_ABSTRACT$LONGWORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	$32,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_type_test_flags$stub
	orl	%eax,%eax
	setneb	%al
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_TYPE_IS_VALUE_TYPE$LONGWORD$$BOOLEAN
_GLIB2_G_TYPE_IS_VALUE_TYPE$LONGWORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_type_check_is_value_type$stub
	orl	%eax,%eax
	setneb	%al
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_TYPE_HAS_VALUE_TABLE$LONGWORD$$BOOLEAN
_GLIB2_G_TYPE_HAS_VALUE_TABLE$LONGWORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_type_value_table_peek$stub
	testl	%eax,%eax
	setneb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_TYPE_CHECK_INSTANCE$POINTER$$BOOLEAN32
_GLIB2_G_TYPE_CHECK_INSTANCE$POINTER$$BOOLEAN32:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_type_check_instance$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE
_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_type_check_instance_cast$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN
_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_type_check_instance_is_a$stub
	orl	%eax,%eax
	setneb	%al
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_TYPE_INSTANCE_GET_CLASS$POINTER$LONGWORD$$PGTYPECLASS
_GLIB2_G_TYPE_INSTANCE_GET_CLASS$POINTER$LONGWORD$$PGTYPECLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_type_check_class_cast$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_TYPE_INSTANCE_GET_INTERFACE$POINTER$LONGWORD$$POINTER
_GLIB2_G_TYPE_INSTANCE_GET_INTERFACE$POINTER$LONGWORD$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	call	L_g_type_interface_peek$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER
_GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_type_check_class_cast$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN
_GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_type_check_class_is_a$stub
	orl	%eax,%eax
	setneb	%al
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_TYPE_CHECK_VALUE$POINTER$$BOOLEAN
_GLIB2_G_TYPE_CHECK_VALUE$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_type_check_value$stub
	orl	%eax,%eax
	setneb	%al
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_TYPE_CHECK_VALUE_TYPE$POINTER$LONGWORD$$BOOLEAN
_GLIB2_G_TYPE_CHECK_VALUE_TYPE$POINTER$LONGWORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_type_check_value_holds$stub
	orl	%eax,%eax
	setneb	%al
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_TYPE_FROM_INSTANCE$POINTER$$LONGWORD
_GLIB2_G_TYPE_FROM_INSTANCE$POINTER$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	call	L_GLIB2_G_TYPE_FROM_CLASS$POINTER$$LONGWORD$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_TYPE_FROM_CLASS$POINTER$$LONGWORD
_GLIB2_G_TYPE_FROM_CLASS$POINTER$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_TYPE_FROM_INTERFACE$POINTER$$LONGWORD
_GLIB2_G_TYPE_FROM_INTERFACE$POINTER$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_TYPE_IS_VALUE$LONGWORD$$BOOLEAN
_GLIB2_G_TYPE_IS_VALUE$LONGWORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_type_check_is_value_type$stub
	orl	%eax,%eax
	setneb	%al
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_IS_VALUE$POINTER$$BOOLEAN
_GLIB2_G_IS_VALUE$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_VALUE$POINTER$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_VALUE_TYPE$POINTER$$LONGWORD
_GLIB2_G_VALUE_TYPE$POINTER$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_VALUE_TYPE_NAME$POINTER$$PGCHAR
_GLIB2_G_VALUE_TYPE_NAME$POINTER$$PGCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_VALUE_TYPE$POINTER$$LONGWORD$stub
	movl	%eax,(%esp)
	call	L_g_type_name$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_VALUE_HOLDS$POINTER$LONGWORD$$BOOLEAN
_GLIB2_G_VALUE_HOLDS$POINTER$LONGWORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_VALUE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_TYPE_IS_PARAM$LONGWORD$$BOOLEAN
_GLIB2_G_TYPE_IS_PARAM$LONGWORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_type_fundamental$stub
	cmpl	$76,%eax
	seteb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_PARAM_SPEC$POINTER$$PGPARAMSPEC
_GLIB2_G_PARAM_SPEC$POINTER$$PGPARAMSPEC:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$76,%edx
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_IS_PARAM_SPEC$POINTER$$BOOLEAN
_GLIB2_G_IS_PARAM_SPEC$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$76,%edx
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_PARAM_SPEC_CLASS$POINTER$$PGPARAMSPECCLASS
_GLIB2_G_PARAM_SPEC_CLASS$POINTER$$PGPARAMSPECCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$76,%edx
	call	L_GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_IS_PARAM_SPEC_CLASS$POINTER$$BOOLEAN
_GLIB2_G_IS_PARAM_SPEC_CLASS$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$76,%edx
	call	L_GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_PARAM_SPEC_GET_CLASS$POINTER$$PGPARAMSPECCLASS
_GLIB2_G_PARAM_SPEC_GET_CLASS$POINTER$$PGPARAMSPECCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$76,%edx
	call	L_GLIB2_G_TYPE_INSTANCE_GET_CLASS$POINTER$LONGWORD$$PGTYPECLASS$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_PARAM_SPEC_TYPE$POINTER$$LONGWORD
_GLIB2_G_PARAM_SPEC_TYPE$POINTER$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_FROM_INSTANCE$POINTER$$LONGWORD$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_PARAM_SPEC_TYPE_NAME$POINTER$$PGCHAR
_GLIB2_G_PARAM_SPEC_TYPE_NAME$POINTER$$PGCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_PARAM_SPEC_TYPE$POINTER$$LONGWORD$stub
	movl	%eax,(%esp)
	call	L_g_type_name$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_PARAM_SPEC_VALUE_TYPE$POINTER$$LONGWORD
_GLIB2_G_PARAM_SPEC_VALUE_TYPE$POINTER$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_PARAM_SPEC$POINTER$$PGPARAMSPEC$stub
	movl	12(%eax),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_VALUE_HOLDS_PARAM$POINTER$$BOOLEAN
_GLIB2_G_VALUE_HOLDS_PARAM$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$76,%edx
	call	L_GLIB2_G_TYPE_CHECK_VALUE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_CLOSURE_NEEDS_MARSHAL$POINTER$$BOOLEAN
_GLIB2_G_CLOSURE_NEEDS_MARSHAL$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	cmpl	$0,4(%eax)
	jne	Lj1368
	jmp	Lj1367
Lj1367:
	movb	$1,-5(%ebp)
	jmp	Lj1369
Lj1368:
	movb	$0,-5(%ebp)
Lj1369:
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_CLOSURE_N_NOTIFIERS$PGCLOSURE$$LONGINT
_GLIB2_G_CLOSURE_N_NOTIFIERS$PGCLOSURE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_GLIB2_META_MARSHAL$PGCLOSURE$$LONGWORD$stub
	movl	%eax,%ebx
	movl	-4(%ebp),%eax
	call	L_GLIB2_N_GUARDS$PGCLOSURE$$LONGWORD$stub
	shll	$1,%eax
	addl	%eax,%ebx
	movl	-4(%ebp),%eax
	call	L_GLIB2_N_FNOTIFIERS$PGCLOSURE$$LONGWORD$stub
	addl	%eax,%ebx
	movl	-4(%ebp),%eax
	call	L_GLIB2_N_INOTIFIERS$PGCLOSURE$$LONGWORD$stub
	addl	%eax,%ebx
	movl	%ebx,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-12(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_CCLOSURE_SWAP_DATA$PGCLOSURE$$LONGINT
_GLIB2_G_CCLOSURE_SWAP_DATA$PGCLOSURE$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_GLIB2_DERIVATIVE_FLAG$PGCLOSURE$$LONGWORD$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_CALLBACK$POINTER$$TGCALLBACK
_GLIB2_G_CALLBACK$POINTER$$TGCALLBACK:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_REF_COUNT$TGCLOSURE$$LONGWORD
_GLIB2_REF_COUNT$TGCLOSURE$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	andl	$32767,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_SET_REF_COUNT$TGCLOSURE$LONGWORD
_GLIB2_SET_REF_COUNT$TGCLOSURE$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	andl	$32767,%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_GLIB2_META_MARSHAL$PGCLOSURE$$LONGWORD
_GLIB2_META_MARSHAL$PGCLOSURE$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	andl	$32768,%eax
	shrl	$15,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_SET_META_MARSHAL$TGCLOSURE$LONGWORD
_GLIB2_SET_META_MARSHAL$TGCLOSURE$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$15,%eax
	andl	$32768,%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_GLIB2_N_GUARDS$PGCLOSURE$$LONGWORD
_GLIB2_N_GUARDS$PGCLOSURE$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	andl	$65536,%eax
	shrl	$16,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_SET_N_GUARDS$TGCLOSURE$LONGWORD
_GLIB2_SET_N_GUARDS$TGCLOSURE$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$16,%eax
	andl	$65536,%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_GLIB2_N_FNOTIFIERS$PGCLOSURE$$LONGWORD
_GLIB2_N_FNOTIFIERS$PGCLOSURE$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	andl	$393216,%eax
	shrl	$17,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_SET_N_FNOTIFIERS$TGCLOSURE$LONGWORD
_GLIB2_SET_N_FNOTIFIERS$TGCLOSURE$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$17,%eax
	andl	$393216,%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_GLIB2_N_INOTIFIERS$PGCLOSURE$$LONGWORD
_GLIB2_N_INOTIFIERS$PGCLOSURE$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	andl	$133693440,%eax
	shrl	$19,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_SET_N_INOTIFIERS$TGCLOSURE$LONGWORD
_GLIB2_SET_N_INOTIFIERS$TGCLOSURE$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$19,%eax
	andl	$133693440,%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_GLIB2_IN_INOTIFY$TGCLOSURE$$LONGWORD
_GLIB2_IN_INOTIFY$TGCLOSURE$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	andl	$134217728,%eax
	shrl	$27,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_SET_IN_INOTIFY$TGCLOSURE$LONGWORD
_GLIB2_SET_IN_INOTIFY$TGCLOSURE$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$27,%eax
	andl	$134217728,%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_GLIB2_FLOATING$TGCLOSURE$$LONGWORD
_GLIB2_FLOATING$TGCLOSURE$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	andl	$268435456,%eax
	shrl	$28,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_SET_FLOATING$TGCLOSURE$LONGWORD
_GLIB2_SET_FLOATING$TGCLOSURE$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$28,%eax
	andl	$268435456,%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_GLIB2_DERIVATIVE_FLAG$PGCLOSURE$$LONGWORD
_GLIB2_DERIVATIVE_FLAG$PGCLOSURE$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	andl	$536870912,%eax
	shrl	$29,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_SET_DERIVATIVE_FLAG$TGCLOSURE$LONGWORD
_GLIB2_SET_DERIVATIVE_FLAG$TGCLOSURE$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$29,%eax
	andl	$536870912,%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_GLIB2_IN_MARSHAL$TGCLOSURE$$LONGWORD
_GLIB2_IN_MARSHAL$TGCLOSURE$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	andl	$1073741824,%eax
	shrl	$30,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_SET_IN_MARSHAL$TGCLOSURE$LONGWORD
_GLIB2_SET_IN_MARSHAL$TGCLOSURE$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$30,%eax
	andl	$1073741824,%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_GLIB2_IS_INVALID$TGCLOSURE$$LONGWORD
_GLIB2_IS_INVALID$TGCLOSURE$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	(%eax),%eax
	andl	$-2147483648,%eax
	shrl	$31,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_SET_IS_INVALID$TGCLOSURE$LONGWORD
_GLIB2_SET_IS_INVALID$TGCLOSURE$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	shll	$31,%eax
	andl	$-2147483648,%eax
	movl	-4(%ebp),%edx
	movl	(%edx),%edx
	orl	%edx,%eax
	movl	-4(%ebp),%edx
	movl	%eax,(%edx)
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_SIGNAL_CONNECT$POINTER$PGCHAR$TGCALLBACK$POINTER$$LONGWORD
_GLIB2_G_SIGNAL_CONNECT$POINTER$PGCHAR$TGCALLBACK$POINTER$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,20(%esp)
	movl	$0,16(%esp)
	movl	8(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_signal_connect_data$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_SIGNAL_CONNECT_AFTER$POINTER$PGCHAR$TGCALLBACK$POINTER$$LONGWORD
_GLIB2_G_SIGNAL_CONNECT_AFTER$POINTER$PGCHAR$TGCALLBACK$POINTER$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$1,20(%esp)
	movl	$0,16(%esp)
	movl	8(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_signal_connect_data$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_SIGNAL_CONNECT_SWAPPED$POINTER$PGCHAR$TGCALLBACK$POINTER$$LONGWORD
_GLIB2_G_SIGNAL_CONNECT_SWAPPED$POINTER$PGCHAR$TGCALLBACK$POINTER$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$2,20(%esp)
	movl	$0,16(%esp)
	movl	8(%ebp),%eax
	movl	%eax,12(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_signal_connect_data$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_SIGNAL_HANDLERS_DISCONNECT_BY_FUNC$POINTER$POINTER$POINTER$$LONGWORD
_GLIB2_G_SIGNAL_HANDLERS_DISCONNECT_BY_FUNC$POINTER$POINTER$POINTER$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,16(%esp)
	movl	$0,12(%esp)
	movl	$0,8(%esp)
	movl	$24,4(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,24(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,20(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_signal_handlers_disconnect_matched$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_SIGNAL_HANDLERS_BLOCK_BY_FUNC$POINTER$POINTER$POINTER
_GLIB2_G_SIGNAL_HANDLERS_BLOCK_BY_FUNC$POINTER$POINTER$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,16(%esp)
	movl	$0,12(%esp)
	movl	$0,8(%esp)
	movl	$24,4(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,24(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,20(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_signal_handlers_block_matched$stub
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_SIGNAL_HANDLERS_UNBLOCK_BY_FUNC$POINTER$POINTER$POINTER
_GLIB2_G_SIGNAL_HANDLERS_UNBLOCK_BY_FUNC$POINTER$POINTER$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	$0,16(%esp)
	movl	$0,12(%esp)
	movl	$0,8(%esp)
	movl	$24,4(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,24(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,20(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_signal_handlers_unblock_matched$stub
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_TYPE_IS_OBJECT$LONGWORD$$BOOLEAN
_GLIB2_G_TYPE_IS_OBJECT$LONGWORD$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_type_fundamental$stub
	cmpl	$80,%eax
	seteb	-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_OBJECT$POINTER$$PGOBJECT
_GLIB2_G_OBJECT$POINTER$$PGOBJECT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$80,%edx
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_OBJECT_CLASS$POINTER$$PGOBJECTCLASS
_GLIB2_G_OBJECT_CLASS$POINTER$$PGOBJECTCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$80,%edx
	call	L_GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_IS_OBJECT$POINTER$$BOOLEAN
_GLIB2_G_IS_OBJECT$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$80,%edx
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_IS_OBJECT_CLASS$POINTER$$BOOLEAN
_GLIB2_G_IS_OBJECT_CLASS$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$80,%edx
	call	L_GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_OBJECT_GET_CLASS$POINTER$$PGOBJECTCLASS
_GLIB2_G_OBJECT_GET_CLASS$POINTER$$PGOBJECTCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$80,%edx
	call	L_GLIB2_G_TYPE_INSTANCE_GET_CLASS$POINTER$LONGWORD$$PGTYPECLASS$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_OBJECT_TYPE$POINTER$$LONGWORD
_GLIB2_G_OBJECT_TYPE$POINTER$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_FROM_INSTANCE$POINTER$$LONGWORD$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_OBJECT_TYPE_NAME$POINTER$$PGCHAR
_GLIB2_G_OBJECT_TYPE_NAME$POINTER$$PGCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_OBJECT_TYPE$POINTER$$LONGWORD$stub
	movl	%eax,(%esp)
	call	L_g_type_name$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_OBJECT_CLASS_TYPE$POINTER$$LONGWORD
_GLIB2_G_OBJECT_CLASS_TYPE$POINTER$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_FROM_CLASS$POINTER$$LONGWORD$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_OBJECT_CLASS_NAME$POINTER$$PGCHAR
_GLIB2_G_OBJECT_CLASS_NAME$POINTER$$PGCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_OBJECT_CLASS_TYPE$POINTER$$LONGWORD$stub
	movl	%eax,(%esp)
	call	L_g_type_name$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_VALUE_HOLDS_OBJECT$POINTER$$BOOLEAN
_GLIB2_G_VALUE_HOLDS_OBJECT$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$80,%edx
	call	L_GLIB2_G_TYPE_CHECK_VALUE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_OBJECT_WARN_INVALID_PROPERTY_ID$POINTER$LONGINT$POINTER
_GLIB2_G_OBJECT_WARN_INVALID_PROPERTY_ID$POINTER$LONGINT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj1653
Lj1653:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	movl	-8(%ebp),%ecx
	movl	L_$GLIB2$_Ld1$non_lazy_ptr-Lj1653(%ebx),%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_OBJECT_WARN_INVALID_PSPEC$POINTER$PGCHAR$LONGINT$POINTER$stub
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_OBJECT_WARN_INVALID_PSPEC$POINTER$PGCHAR$LONGINT$POINTER
_GLIB2_G_OBJECT_WARN_INVALID_PSPEC$POINTER$PGCHAR$LONGINT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-76(%ebp)
	call	Lj1663
Lj1663:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
	movl	8(%ebp),%eax
	movl	%eax,-20(%ebp)
	movl	-12(%ebp),%eax
	movl	%eax,-24(%ebp)
	movl	$0,-68(%ebp)
	movl	$11,-72(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,-60(%ebp)
	movl	$6,-64(%ebp)
	movl	-24(%ebp),%eax
	movl	%eax,-52(%ebp)
	movl	$0,-56(%ebp)
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-44(%ebp)
	movl	$6,-48(%ebp)
	movl	-20(%ebp),%eax
	call	L_GLIB2_G_PARAM_SPEC_TYPE$POINTER$$LONGWORD$stub
	movl	%eax,(%esp)
	call	L_g_type_name$stub
	movl	%eax,-36(%ebp)
	movl	$6,-40(%ebp)
	movl	-16(%ebp),%eax
	call	L_GLIB2_G_OBJECT_TYPE_NAME$POINTER$$PGCHAR$stub
	movl	%eax,-28(%ebp)
	movl	$6,-32(%ebp)
	leal	-72(%ebp),%edx
	movl	L_$GLIB2$_Ld2$non_lazy_ptr-Lj1663(%ebx),%eax
	movl	$5,%ecx
	call	L_GLIB2_G_WARNING$PGCHAR$array_of_const$stub
	movl	-76(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_TYPE_TYPE_PLUGIN$$LONGWORD
_GLIB2_G_TYPE_TYPE_PLUGIN$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_g_type_plugin_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_TYPE_PLUGIN$POINTER$$POINTER
_GLIB2_G_TYPE_PLUGIN$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GLIB2_G_TYPE_TYPE_PLUGIN$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_TYPE_PLUGIN_CLASS$POINTER$$PGTYPEPLUGINCLASS
_GLIB2_G_TYPE_PLUGIN_CLASS$POINTER$$PGTYPEPLUGINCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GLIB2_G_TYPE_TYPE_PLUGIN$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_IS_TYPE_PLUGIN$POINTER$$BOOLEAN
_GLIB2_G_IS_TYPE_PLUGIN$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GLIB2_G_TYPE_TYPE_PLUGIN$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_IS_TYPE_PLUGIN_CLASS$POINTER$$BOOLEAN
_GLIB2_G_IS_TYPE_PLUGIN_CLASS$POINTER$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GLIB2_G_TYPE_TYPE_PLUGIN$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_TYPE_PLUGIN_GET_CLASS$POINTER$$PGTYPEPLUGINCLASS
_GLIB2_G_TYPE_PLUGIN_GET_CLASS$POINTER$$PGTYPEPLUGINCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_GLIB2_G_TYPE_TYPE_PLUGIN$$LONGWORD$stub
	movl	%eax,%edx
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_INSTANCE_GET_INTERFACE$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_TYPE_IS_ENUM$LONGWORD$$BOOLEAN32
_GLIB2_G_TYPE_IS_ENUM$LONGWORD$$BOOLEAN32:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_type_fundamental$stub
	cmpl	$48,%eax
	movl	$0,-8(%ebp)
	seteb	-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_ENUM_CLASS$POINTER$$PGENUMCLASS
_GLIB2_G_ENUM_CLASS$POINTER$$PGENUMCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$48,%edx
	call	L_GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_IS_ENUM_CLASS$POINTER$$BOOLEAN32
_GLIB2_G_IS_ENUM_CLASS$POINTER$$BOOLEAN32:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$48,%edx
	call	L_GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	orb	%al,%al
	setneb	%al
	movzbl	%al,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_ENUM_CLASS_TYPE$POINTER$$LONGWORD
_GLIB2_G_ENUM_CLASS_TYPE$POINTER$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_FROM_CLASS$POINTER$$LONGWORD$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_ENUM_CLASS_TYPE_NAME$POINTER$$PGCHAR
_GLIB2_G_ENUM_CLASS_TYPE_NAME$POINTER$$PGCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_ENUM_CLASS_TYPE$POINTER$$LONGWORD$stub
	movl	%eax,(%esp)
	call	L_g_type_name$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_TYPE_IS_FLAGS$LONGWORD$$BOOLEAN32
_GLIB2_G_TYPE_IS_FLAGS$LONGWORD$$BOOLEAN32:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_type_fundamental$stub
	cmpl	$52,%eax
	movl	$0,-8(%ebp)
	seteb	-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_FLAGS_CLASS$POINTER$$PGFLAGSCLASS
_GLIB2_G_FLAGS_CLASS$POINTER$$PGFLAGSCLASS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$52,%edx
	call	L_GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_IS_FLAGS_CLASS$POINTER$$BOOLEAN32
_GLIB2_G_IS_FLAGS_CLASS$POINTER$$BOOLEAN32:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$52,%edx
	call	L_GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	orb	%al,%al
	setneb	%al
	movzbl	%al,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_FLAGS_CLASS_TYPE$POINTER$$LONGWORD
_GLIB2_G_FLAGS_CLASS_TYPE$POINTER$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	call	L_GLIB2_G_TYPE_FROM_CLASS$POINTER$$LONGWORD$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_FLAGS_CLASS_TYPE_NAME$POINTER$$PGCHAR
_GLIB2_G_FLAGS_CLASS_TYPE_NAME$POINTER$$PGCHAR:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_type_name$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_VALUE_HOLDS_ENUM$POINTER$$BOOLEAN32
_GLIB2_G_VALUE_HOLDS_ENUM$POINTER$$BOOLEAN32:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$48,%edx
	call	L_GLIB2_G_TYPE_CHECK_VALUE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	orb	%al,%al
	setneb	%al
	movzbl	%al,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_VALUE_HOLDS_FLAGS$POINTER$$BOOLEAN32
_GLIB2_G_VALUE_HOLDS_FLAGS$POINTER$$BOOLEAN32:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$52,%edx
	call	L_GLIB2_G_TYPE_CHECK_VALUE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	orb	%al,%al
	setneb	%al
	movzbl	%al,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_CLAMP$LONGINT$LONGINT$LONGINT$$LONGINT
_GLIB2_CLAMP$LONGINT$LONGINT$LONGINT$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	-4(%ebp),%eax
	cmpl	-8(%ebp),%eax
	jl	Lj1822
	jmp	Lj1823
Lj1822:
	movl	-8(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj1826
Lj1823:
	movl	-4(%ebp),%eax
	cmpl	-12(%ebp),%eax
	jg	Lj1827
	jmp	Lj1828
Lj1827:
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp)
	jmp	Lj1831
Lj1828:
	movl	-4(%ebp),%eax
	movl	%eax,-16(%ebp)
Lj1831:
Lj1826:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_GPOINTER_TO_SIZE$POINTER$$LONGWORD
_GLIB2_GPOINTER_TO_SIZE$POINTER$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_GSIZE_TO_POINTER$LONGWORD$$POINTER
_GLIB2_GSIZE_TO_POINTER$LONGWORD$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_VALUE_HOLDS_CHAR$PGVALUE$$BOOLEAN
_GLIB2_G_VALUE_HOLDS_CHAR$PGVALUE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$12,%edx
	call	L_GLIB2_G_TYPE_CHECK_VALUE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_VALUE_HOLDS_UCHAR$PGVALUE$$BOOLEAN
_GLIB2_G_VALUE_HOLDS_UCHAR$PGVALUE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$16,%edx
	call	L_GLIB2_G_TYPE_CHECK_VALUE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_VALUE_HOLDS_BOOLEAN$PGVALUE$$BOOLEAN
_GLIB2_G_VALUE_HOLDS_BOOLEAN$PGVALUE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$20,%edx
	call	L_GLIB2_G_TYPE_CHECK_VALUE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_VALUE_HOLDS_INT$PGVALUE$$BOOLEAN
_GLIB2_G_VALUE_HOLDS_INT$PGVALUE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$24,%edx
	call	L_GLIB2_G_TYPE_CHECK_VALUE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_VALUE_HOLDS_UINT$PGVALUE$$BOOLEAN
_GLIB2_G_VALUE_HOLDS_UINT$PGVALUE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$28,%edx
	call	L_GLIB2_G_TYPE_CHECK_VALUE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_VALUE_HOLDS_LONG$PGVALUE$$BOOLEAN
_GLIB2_G_VALUE_HOLDS_LONG$PGVALUE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$32,%edx
	call	L_GLIB2_G_TYPE_CHECK_VALUE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_VALUE_HOLDS_ULONG$PGVALUE$$BOOLEAN
_GLIB2_G_VALUE_HOLDS_ULONG$PGVALUE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$36,%edx
	call	L_GLIB2_G_TYPE_CHECK_VALUE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_VALUE_HOLDS_INT64$PGVALUE$$BOOLEAN
_GLIB2_G_VALUE_HOLDS_INT64$PGVALUE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$40,%edx
	call	L_GLIB2_G_TYPE_CHECK_VALUE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_VALUE_HOLDS_UINT64$PGVALUE$$BOOLEAN
_GLIB2_G_VALUE_HOLDS_UINT64$PGVALUE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$44,%edx
	call	L_GLIB2_G_TYPE_CHECK_VALUE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_VALUE_HOLDS_FLOAT$PGVALUE$$BOOLEAN
_GLIB2_G_VALUE_HOLDS_FLOAT$PGVALUE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$56,%edx
	call	L_GLIB2_G_TYPE_CHECK_VALUE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_VALUE_HOLDS_DOUBLE$PGVALUE$$BOOLEAN
_GLIB2_G_VALUE_HOLDS_DOUBLE$PGVALUE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$60,%edx
	call	L_GLIB2_G_TYPE_CHECK_VALUE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_VALUE_HOLDS_STRING$PGVALUE$$BOOLEAN
_GLIB2_G_VALUE_HOLDS_STRING$PGVALUE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$64,%edx
	call	L_GLIB2_G_TYPE_CHECK_VALUE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_VALUE_HOLDS_POINTER$PGVALUE$$BOOLEAN
_GLIB2_G_VALUE_HOLDS_POINTER$PGVALUE$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$68,%edx
	call	L_GLIB2_G_TYPE_CHECK_VALUE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	movb	%al,-5(%ebp)
	movb	-5(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_TYPE_IS_BOXED$LONGWORD$$BOOLEAN32
_GLIB2_G_TYPE_IS_BOXED$LONGWORD$$BOOLEAN32:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_g_type_fundamental$stub
	cmpl	$72,%eax
	movl	$0,-8(%ebp)
	seteb	-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_VALUE_HOLDS_BOXED$PGVALUE$$BOOLEAN32
_GLIB2_G_VALUE_HOLDS_BOXED$PGVALUE$$BOOLEAN32:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	$72,%edx
	call	L_GLIB2_G_TYPE_CHECK_VALUE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub
	orb	%al,%al
	setneb	%al
	movzbl	%al,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_TYPE_CLOSURE$$LONGWORD
_GLIB2_G_TYPE_CLOSURE$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_g_closure_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_TYPE_VALUE$$LONGWORD
_GLIB2_G_TYPE_VALUE$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_g_value_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_TYPE_VALUE_ARRAY$$LONGWORD
_GLIB2_G_TYPE_VALUE_ARRAY$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_g_value_array_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_GLIB2_G_TYPE_GSTRING$$LONGWORD
_GLIB2_G_TYPE_GSTRING$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_g_gstring_get_type$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals

.data
	.align 2
.globl	_THREADVARLIST_GLIB2
_THREADVARLIST_GLIB2:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.const
	.align 2
.globl	_$GLIB2$_Ld1
_$GLIB2$_Ld1:
	.ascii	"property\000"

.const
	.align 2
.globl	_$GLIB2$_Ld2
_$GLIB2$_Ld2:
	.ascii	"%s: invalid %s id %u for \"%s\" of type `%s' in `%s"
	.ascii	"'\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_option_error_quark$stub:
.indirect_symbol _g_option_error_quark
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_array_append_vals$stub:
.indirect_symbol _g_array_append_vals
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_array_prepend_vals$stub:
.indirect_symbol _g_array_prepend_vals
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_array_insert_vals$stub:
.indirect_symbol _g_array_insert_vals
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_thread_error_quark$stub:
.indirect_symbol _g_thread_error_quark
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_thread_create_full$stub:
.indirect_symbol _g_thread_create_full
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_static_mutex_get_mutex_impl$stub:
.indirect_symbol _g_static_mutex_get_mutex_impl
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_G_MUTEX_LOCK$POINTER$stub:
.indirect_symbol _GLIB2_G_MUTEX_LOCK$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_G_STATIC_MUTEX_GET_MUTEX$PPGMUTEX$$POINTER$stub:
.indirect_symbol _GLIB2_G_STATIC_MUTEX_GET_MUTEX$PPGMUTEX$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_G_MUTEX_TRYLOCK$POINTER$$BOOLEAN32$stub:
.indirect_symbol _GLIB2_G_MUTEX_TRYLOCK$POINTER$$BOOLEAN32
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_G_MUTEX_UNLOCK$POINTER$stub:
.indirect_symbol _GLIB2_G_MUTEX_UNLOCK$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_main_loop_new$stub:
.indirect_symbol _g_main_loop_new
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_main_context_iteration$stub:
.indirect_symbol _g_main_context_iteration
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_main_context_pending$stub:
.indirect_symbol _g_main_context_pending
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_main_context_set_poll_func$stub:
.indirect_symbol _g_main_context_set_poll_func
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_malloc$stub:
.indirect_symbol _g_malloc
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_malloc0$stub:
.indirect_symbol _g_malloc0
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_realloc$stub:
.indirect_symbol _g_realloc
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_mem_chunk_alloc$stub:
.indirect_symbol _g_mem_chunk_alloc
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_mem_chunk_alloc0$stub:
.indirect_symbol _g_mem_chunk_alloc0
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_mem_chunk_free$stub:
.indirect_symbol _g_mem_chunk_free
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_convert_error_quark$stub:
.indirect_symbol _g_convert_error_quark
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_datalist_id_set_data_full$stub:
.indirect_symbol _g_datalist_id_set_data_full
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_G_DATALIST_ID_SET_DATA$PPGDATA$LONGWORD$POINTER$stub:
.indirect_symbol _GLIB2_G_DATALIST_ID_SET_DATA$PPGDATA$LONGWORD$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_quark_try_string$stub:
.indirect_symbol _g_quark_try_string
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_datalist_id_get_data$stub:
.indirect_symbol _g_datalist_id_get_data
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_quark_from_string$stub:
.indirect_symbol _g_quark_from_string
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_G_DATALIST_SET_DATA_FULL$PPGDATA$PGCHAR$POINTER$TGDESTROYNOTIFY$stub:
.indirect_symbol _GLIB2_G_DATALIST_SET_DATA_FULL$PPGDATA$PGCHAR$POINTER$TGDESTROYNOTIFY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_datalist_id_remove_no_notify$stub:
.indirect_symbol _g_datalist_id_remove_no_notify
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_dataset_id_set_data_full$stub:
.indirect_symbol _g_dataset_id_set_data_full
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_G_DATASET_ID_SET_DATA$POINTER$LONGWORD$POINTER$stub:
.indirect_symbol _GLIB2_G_DATASET_ID_SET_DATA$POINTER$LONGWORD$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_dataset_id_get_data$stub:
.indirect_symbol _g_dataset_id_get_data
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_dataset_id_remove_no_notify$stub:
.indirect_symbol _g_dataset_id_remove_no_notify
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_G_DATASET_SET_DATA_FULL$POINTER$PGCHAR$POINTER$TGDESTROYNOTIFY$stub:
.indirect_symbol _GLIB2_G_DATASET_SET_DATA_FULL$POINTER$PGCHAR$POINTER$TGDESTROYNOTIFY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_file_error_quark$stub:
.indirect_symbol _g_file_error_quark
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_G_HOOK_ACTIVE$PGHOOK$$BOOLEAN$stub:
.indirect_symbol _GLIB2_G_HOOK_ACTIVE$PGHOOK$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_hook_insert_before$stub:
.indirect_symbol _g_hook_insert_before
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_io_channel_error_quark$stub:
.indirect_symbol _g_io_channel_error_quark
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_GETMEM$stub:
.indirect_symbol FPC_GETMEM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_MOVE$stub:
.indirect_symbol FPC_MOVE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_PUSHEXCEPTADDR$stub:
.indirect_symbol FPC_PUSHEXCEPTADDR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SETJMP$stub:
.indirect_symbol FPC_SETJMP
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_ANSISTR_DECR_REF$stub:
.indirect_symbol FPC_ANSISTR_DECR_REF
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_pchar_to_shortstr$stub:
.indirect_symbol fpc_pchar_to_shortstr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_to_ansistr$stub:
.indirect_symbol fpc_shortstr_to_ansistr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING$stub:
.indirect_symbol _SYSUTILS_FORMAT$ANSISTRING$array_of_const$$ANSISTRING
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_log$stub:
.indirect_symbol _g_log
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_POPADDRSTACK$stub:
.indirect_symbol FPC_POPADDRSTACK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_RERAISE$stub:
.indirect_symbol FPC_RERAISE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_FREEMEM$stub:
.indirect_symbol FPC_FREEMEM
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_markup_error_quark$stub:
.indirect_symbol _g_markup_error_quark
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_node_insert_before$stub:
.indirect_symbol _g_node_insert_before
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_node_new$stub:
.indirect_symbol _g_node_new
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_node_insert$stub:
.indirect_symbol _g_node_insert
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_node_prepend$stub:
.indirect_symbol _g_node_prepend
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_rand_int$stub:
.indirect_symbol _g_rand_int
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_random_int$stub:
.indirect_symbol _g_random_int
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_shell_error_quark$stub:
.indirect_symbol _g_shell_error_quark
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_spawn_error_quark$stub:
.indirect_symbol _g_spawn_error_quark
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_strchug$stub:
.indirect_symbol _g_strchug
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_strchomp$stub:
.indirect_symbol _g_strchomp
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_type_fundamental$stub:
.indirect_symbol _g_type_fundamental
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_type_test_flags$stub:
.indirect_symbol _g_type_test_flags
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_type_check_is_value_type$stub:
.indirect_symbol _g_type_check_is_value_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_type_value_table_peek$stub:
.indirect_symbol _g_type_value_table_peek
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_type_check_instance$stub:
.indirect_symbol _g_type_check_instance
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_type_check_instance_cast$stub:
.indirect_symbol _g_type_check_instance_cast
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_type_check_instance_is_a$stub:
.indirect_symbol _g_type_check_instance_is_a
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_type_check_class_cast$stub:
.indirect_symbol _g_type_check_class_cast
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_type_interface_peek$stub:
.indirect_symbol _g_type_interface_peek
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_type_check_class_is_a$stub:
.indirect_symbol _g_type_check_class_is_a
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_type_check_value$stub:
.indirect_symbol _g_type_check_value
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_type_check_value_holds$stub:
.indirect_symbol _g_type_check_value_holds
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_G_TYPE_FROM_CLASS$POINTER$$LONGWORD$stub:
.indirect_symbol _GLIB2_G_TYPE_FROM_CLASS$POINTER$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_G_TYPE_CHECK_VALUE$POINTER$$BOOLEAN$stub:
.indirect_symbol _GLIB2_G_TYPE_CHECK_VALUE$POINTER$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_G_VALUE_TYPE$POINTER$$LONGWORD$stub:
.indirect_symbol _GLIB2_G_VALUE_TYPE$POINTER$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_type_name$stub:
.indirect_symbol _g_type_name
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_G_TYPE_CHECK_VALUE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub:
.indirect_symbol _GLIB2_G_TYPE_CHECK_VALUE_TYPE$POINTER$LONGWORD$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE$stub:
.indirect_symbol _GLIB2_G_TYPE_CHECK_INSTANCE_CAST$POINTER$LONGWORD$$PGTYPEINSTANCE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN$stub:
.indirect_symbol _GLIB2_G_TYPE_CHECK_INSTANCE_TYPE$POINTER$LONGWORD$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER$stub:
.indirect_symbol _GLIB2_G_TYPE_CHECK_CLASS_CAST$POINTER$LONGWORD$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN$stub:
.indirect_symbol _GLIB2_G_TYPE_CHECK_CLASS_TYPE$POINTER$LONGWORD$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_G_TYPE_INSTANCE_GET_CLASS$POINTER$LONGWORD$$PGTYPECLASS$stub:
.indirect_symbol _GLIB2_G_TYPE_INSTANCE_GET_CLASS$POINTER$LONGWORD$$PGTYPECLASS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_G_TYPE_FROM_INSTANCE$POINTER$$LONGWORD$stub:
.indirect_symbol _GLIB2_G_TYPE_FROM_INSTANCE$POINTER$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_G_PARAM_SPEC_TYPE$POINTER$$LONGWORD$stub:
.indirect_symbol _GLIB2_G_PARAM_SPEC_TYPE$POINTER$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_G_PARAM_SPEC$POINTER$$PGPARAMSPEC$stub:
.indirect_symbol _GLIB2_G_PARAM_SPEC$POINTER$$PGPARAMSPEC
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_META_MARSHAL$PGCLOSURE$$LONGWORD$stub:
.indirect_symbol _GLIB2_META_MARSHAL$PGCLOSURE$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_N_GUARDS$PGCLOSURE$$LONGWORD$stub:
.indirect_symbol _GLIB2_N_GUARDS$PGCLOSURE$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_N_FNOTIFIERS$PGCLOSURE$$LONGWORD$stub:
.indirect_symbol _GLIB2_N_FNOTIFIERS$PGCLOSURE$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_N_INOTIFIERS$PGCLOSURE$$LONGWORD$stub:
.indirect_symbol _GLIB2_N_INOTIFIERS$PGCLOSURE$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_DERIVATIVE_FLAG$PGCLOSURE$$LONGWORD$stub:
.indirect_symbol _GLIB2_DERIVATIVE_FLAG$PGCLOSURE$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_signal_connect_data$stub:
.indirect_symbol _g_signal_connect_data
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_signal_handlers_disconnect_matched$stub:
.indirect_symbol _g_signal_handlers_disconnect_matched
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_signal_handlers_block_matched$stub:
.indirect_symbol _g_signal_handlers_block_matched
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_signal_handlers_unblock_matched$stub:
.indirect_symbol _g_signal_handlers_unblock_matched
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_G_OBJECT_TYPE$POINTER$$LONGWORD$stub:
.indirect_symbol _GLIB2_G_OBJECT_TYPE$POINTER$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_G_OBJECT_CLASS_TYPE$POINTER$$LONGWORD$stub:
.indirect_symbol _GLIB2_G_OBJECT_CLASS_TYPE$POINTER$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_G_OBJECT_WARN_INVALID_PSPEC$POINTER$PGCHAR$LONGINT$POINTER$stub:
.indirect_symbol _GLIB2_G_OBJECT_WARN_INVALID_PSPEC$POINTER$PGCHAR$LONGINT$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_G_OBJECT_TYPE_NAME$POINTER$$PGCHAR$stub:
.indirect_symbol _GLIB2_G_OBJECT_TYPE_NAME$POINTER$$PGCHAR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_G_WARNING$PGCHAR$array_of_const$stub:
.indirect_symbol _GLIB2_G_WARNING$PGCHAR$array_of_const
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_type_plugin_get_type$stub:
.indirect_symbol _g_type_plugin_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_G_TYPE_TYPE_PLUGIN$$LONGWORD$stub:
.indirect_symbol _GLIB2_G_TYPE_TYPE_PLUGIN$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_G_TYPE_INSTANCE_GET_INTERFACE$POINTER$LONGWORD$$POINTER$stub:
.indirect_symbol _GLIB2_G_TYPE_INSTANCE_GET_INTERFACE$POINTER$LONGWORD$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_GLIB2_G_ENUM_CLASS_TYPE$POINTER$$LONGWORD$stub:
.indirect_symbol _GLIB2_G_ENUM_CLASS_TYPE$POINTER$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_closure_get_type$stub:
.indirect_symbol _g_closure_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_value_get_type$stub:
.indirect_symbol _g_value_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_value_array_get_type$stub:
.indirect_symbol _g_value_array_get_type
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_g_gstring_get_type$stub:
.indirect_symbol _g_gstring_get_type
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
.globl	_INIT_GLIB2_PPPGCHAR
_INIT_GLIB2_PPPGCHAR:
	.byte	0
	.ascii	"\010PPPgchar"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PPPGCHAR
_RTTI_GLIB2_PPPGCHAR:
	.byte	0
	.ascii	"\010PPPgchar"

.const_data
	.align 2
.globl	_INIT_GLIB2_PPGCHAR
_INIT_GLIB2_PPGCHAR:
	.byte	0
	.ascii	"\007PPgchar"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PPGCHAR
_RTTI_GLIB2_PPGCHAR:
	.byte	0
	.ascii	"\007PPgchar"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGCHAR
_INIT_GLIB2_PGCHAR:
	.byte	0
	.ascii	"\006Pgchar"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGCHAR
_RTTI_GLIB2_PGCHAR:
	.byte	0
	.ascii	"\006Pgchar"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGSHORT
_INIT_GLIB2_PGSHORT:
	.byte	0
	.ascii	"\007Pgshort"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGSHORT
_RTTI_GLIB2_PGSHORT:
	.byte	0
	.ascii	"\007Pgshort"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGLONG
_INIT_GLIB2_PGLONG:
	.byte	0
	.ascii	"\006Pglong"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGLONG
_RTTI_GLIB2_PGLONG:
	.byte	0
	.ascii	"\006Pglong"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGINT
_INIT_GLIB2_PGINT:
	.byte	0
	.ascii	"\005Pgint"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGINT
_RTTI_GLIB2_PGINT:
	.byte	0
	.ascii	"\005Pgint"

.const_data
	.align 2
.globl	_INIT_GLIB2_PPGINT
_INIT_GLIB2_PPGINT:
	.byte	0
	.ascii	"\006PPgint"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PPGINT
_RTTI_GLIB2_PPGINT:
	.byte	0
	.ascii	"\006PPgint"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGBOOLEAN
_INIT_GLIB2_PGBOOLEAN:
	.byte	0
	.ascii	"\011Pgboolean"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGBOOLEAN
_RTTI_GLIB2_PGBOOLEAN:
	.byte	0
	.ascii	"\011Pgboolean"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGUCHAR
_INIT_GLIB2_PGUCHAR:
	.byte	0
	.ascii	"\007Pguchar"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGUCHAR
_RTTI_GLIB2_PGUCHAR:
	.byte	0
	.ascii	"\007Pguchar"

.const_data
	.align 2
.globl	_INIT_GLIB2_PPGUCHAR
_INIT_GLIB2_PPGUCHAR:
	.byte	0
	.ascii	"\010PPguchar"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PPGUCHAR
_RTTI_GLIB2_PPGUCHAR:
	.byte	0
	.ascii	"\010PPguchar"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGUSHORT
_INIT_GLIB2_PGUSHORT:
	.byte	0
	.ascii	"\010Pgushort"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGUSHORT
_RTTI_GLIB2_PGUSHORT:
	.byte	0
	.ascii	"\010Pgushort"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGULONG
_INIT_GLIB2_PGULONG:
	.byte	0
	.ascii	"\007Pgulong"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGULONG
_RTTI_GLIB2_PGULONG:
	.byte	0
	.ascii	"\007Pgulong"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGUINT
_INIT_GLIB2_PGUINT:
	.byte	0
	.ascii	"\006Pguint"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGUINT
_RTTI_GLIB2_PGUINT:
	.byte	0
	.ascii	"\006Pguint"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGFLOAT
_INIT_GLIB2_PGFLOAT:
	.byte	0
	.ascii	"\007Pgfloat"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGFLOAT
_RTTI_GLIB2_PGFLOAT:
	.byte	0
	.ascii	"\007Pgfloat"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGDOUBLE
_INIT_GLIB2_PGDOUBLE:
	.byte	0
	.ascii	"\010Pgdouble"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGDOUBLE
_RTTI_GLIB2_PGDOUBLE:
	.byte	0
	.ascii	"\010Pgdouble"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGPOINTER
_INIT_GLIB2_PGPOINTER:
	.byte	0
	.ascii	"\011pgpointer"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGPOINTER
_RTTI_GLIB2_PGPOINTER:
	.byte	0
	.ascii	"\011pgpointer"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGCOMPAREFUNC
_INIT_GLIB2_PGCOMPAREFUNC:
	.byte	0
	.ascii	"\015PGCompareFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGCOMPAREFUNC
_RTTI_GLIB2_PGCOMPAREFUNC:
	.byte	0
	.ascii	"\015PGCompareFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGCOMPAREFUNC
_INIT_GLIB2_TGCOMPAREFUNC:
	.byte	23,13
	.ascii	"TGCompareFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGCOMPAREFUNC
_RTTI_GLIB2_TGCOMPAREFUNC:
	.byte	23,13
	.ascii	"TGCompareFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGCOMPAREDATAFUNC
_INIT_GLIB2_PGCOMPAREDATAFUNC:
	.byte	0
	.ascii	"\021PGCompareDataFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGCOMPAREDATAFUNC
_RTTI_GLIB2_PGCOMPAREDATAFUNC:
	.byte	0
	.ascii	"\021PGCompareDataFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGCOMPAREDATAFUNC
_INIT_GLIB2_TGCOMPAREDATAFUNC:
	.byte	23,17
	.ascii	"TGCompareDataFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGCOMPAREDATAFUNC
_RTTI_GLIB2_TGCOMPAREDATAFUNC:
	.byte	23,17
	.ascii	"TGCompareDataFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGEQUALFUNC
_INIT_GLIB2_PGEQUALFUNC:
	.byte	0
	.ascii	"\013PGEqualFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGEQUALFUNC
_RTTI_GLIB2_PGEQUALFUNC:
	.byte	0
	.ascii	"\013PGEqualFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGEQUALFUNC
_INIT_GLIB2_TGEQUALFUNC:
	.byte	23,11
	.ascii	"TGEqualFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGEQUALFUNC
_RTTI_GLIB2_TGEQUALFUNC:
	.byte	23,11
	.ascii	"TGEqualFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGDESTROYNOTIFY
_INIT_GLIB2_PGDESTROYNOTIFY:
	.byte	0
	.ascii	"\017PGDestroyNotify"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGDESTROYNOTIFY
_RTTI_GLIB2_PGDESTROYNOTIFY:
	.byte	0
	.ascii	"\017PGDestroyNotify"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGDESTROYNOTIFY
_INIT_GLIB2_TGDESTROYNOTIFY:
	.byte	23,15
	.ascii	"TGDestroyNotify"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGDESTROYNOTIFY
_RTTI_GLIB2_TGDESTROYNOTIFY:
	.byte	23,15
	.ascii	"TGDestroyNotify"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGFUNC
_INIT_GLIB2_PGFUNC:
	.byte	0
	.ascii	"\006PGFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGFUNC
_RTTI_GLIB2_PGFUNC:
	.byte	0
	.ascii	"\006PGFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGFUNC
_INIT_GLIB2_TGFUNC:
	.byte	23,6
	.ascii	"TGFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGFUNC
_RTTI_GLIB2_TGFUNC:
	.byte	23,6
	.ascii	"TGFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGHASHFUNC
_INIT_GLIB2_PGHASHFUNC:
	.byte	0
	.ascii	"\012PGHashFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGHASHFUNC
_RTTI_GLIB2_PGHASHFUNC:
	.byte	0
	.ascii	"\012PGHashFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGHASHFUNC
_INIT_GLIB2_TGHASHFUNC:
	.byte	23,10
	.ascii	"TGHashFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGHASHFUNC
_RTTI_GLIB2_TGHASHFUNC:
	.byte	23,10
	.ascii	"TGHashFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGHFUNC
_INIT_GLIB2_PGHFUNC:
	.byte	0
	.ascii	"\007PGHFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGHFUNC
_RTTI_GLIB2_PGHFUNC:
	.byte	0
	.ascii	"\007PGHFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGHFUNC
_INIT_GLIB2_TGHFUNC:
	.byte	23,7
	.ascii	"TGHFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGHFUNC
_RTTI_GLIB2_TGHFUNC:
	.byte	23,7
	.ascii	"TGHFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGFREEFUNC
_INIT_GLIB2_PGFREEFUNC:
	.byte	23,10
	.ascii	"PGFreeFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGFREEFUNC
_RTTI_GLIB2_PGFREEFUNC:
	.byte	23,10
	.ascii	"PGFreeFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGTIMEVAL
_INIT_GLIB2_PGTIMEVAL:
	.byte	0
	.ascii	"\011PGTimeVal"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGTIMEVAL
_RTTI_GLIB2_PGTIMEVAL:
	.byte	0
	.ascii	"\011PGTimeVal"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGTIMEVAL
_INIT_GLIB2_TGTIMEVAL:
	.byte	13,9
	.ascii	"TGTimeVal"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGTIMEVAL
_RTTI_GLIB2_TGTIMEVAL:
	.byte	13,9
	.ascii	"TGTimeVal"
	.long	8,2
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4

.const_data
	.align 2
.globl	_INIT_GLIB2_PGTYPE
_INIT_GLIB2_PGTYPE:
	.byte	0
	.ascii	"\006PGType"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGTYPE
_RTTI_GLIB2_PGTYPE:
	.byte	0
	.ascii	"\006PGType"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGTYPECLASS
_INIT_GLIB2_PGTYPECLASS:
	.byte	0
	.ascii	"\013PGTypeClass"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGTYPECLASS
_RTTI_GLIB2_PGTYPECLASS:
	.byte	0
	.ascii	"\013PGTypeClass"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGTYPECLASS
_INIT_GLIB2_TGTYPECLASS:
	.byte	13,11
	.ascii	"TGTypeClass"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGTYPECLASS
_RTTI_GLIB2_TGTYPECLASS:
	.byte	13,11
	.ascii	"TGTypeClass"
	.long	4,1
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0

.const_data
	.align 2
.globl	_INIT_GLIB2_PGTYPEINSTANCE
_INIT_GLIB2_PGTYPEINSTANCE:
	.byte	0
	.ascii	"\016PGTypeInstance"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGTYPEINSTANCE
_RTTI_GLIB2_PGTYPEINSTANCE:
	.byte	0
	.ascii	"\016PGTypeInstance"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGTYPEINSTANCE
_INIT_GLIB2_TGTYPEINSTANCE:
	.byte	13,14
	.ascii	"TGTypeInstance"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGTYPEINSTANCE
_RTTI_GLIB2_TGTYPEINSTANCE:
	.byte	13,14
	.ascii	"TGTypeInstance"
	.long	4,1
	.long	_RTTI_GLIB2_PGTYPECLASS
	.long	0

.const_data
	.align 2
.globl	_INIT_GLIB2_PGTYPEINTERFACE
_INIT_GLIB2_PGTYPEINTERFACE:
	.byte	0
	.ascii	"\017PGTypeInterface"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGTYPEINTERFACE
_RTTI_GLIB2_PGTYPEINTERFACE:
	.byte	0
	.ascii	"\017PGTypeInterface"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGTYPEINTERFACE
_INIT_GLIB2_TGTYPEINTERFACE:
	.byte	13,15
	.ascii	"TGTypeInterface"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGTYPEINTERFACE
_RTTI_GLIB2_TGTYPEINTERFACE:
	.byte	13,15
	.ascii	"TGTypeInterface"
	.long	8,2
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4

.const_data
	.align 2
.globl	_INIT_GLIB2_PGTYPEQUERY
_INIT_GLIB2_PGTYPEQUERY:
	.byte	0
	.ascii	"\013PGTypeQuery"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGTYPEQUERY
_RTTI_GLIB2_PGTYPEQUERY:
	.byte	0
	.ascii	"\013PGTypeQuery"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGTYPEQUERY
_INIT_GLIB2_TGTYPEQUERY:
	.byte	13,11
	.ascii	"TGTypeQuery"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGTYPEQUERY
_RTTI_GLIB2_TGTYPEQUERY:
	.byte	13,11
	.ascii	"TGTypeQuery"
	.long	16,4
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_GLIB2_PGCHAR
	.long	4
	.long	_RTTI_SYSTEM_LONGWORD
	.long	8
	.long	_RTTI_SYSTEM_LONGWORD
	.long	12

.const_data
	.align 2
.globl	_INIT_GLIB2_PGINT8
_INIT_GLIB2_PGINT8:
	.byte	0
	.ascii	"\006Pgint8"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGINT8
_RTTI_GLIB2_PGINT8:
	.byte	0
	.ascii	"\006Pgint8"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGUINT8
_INIT_GLIB2_PGUINT8:
	.byte	0
	.ascii	"\007Pguint8"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGUINT8
_RTTI_GLIB2_PGUINT8:
	.byte	0
	.ascii	"\007Pguint8"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGINT16
_INIT_GLIB2_PGINT16:
	.byte	0
	.ascii	"\007Pgint16"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGINT16
_RTTI_GLIB2_PGINT16:
	.byte	0
	.ascii	"\007Pgint16"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGUINT16
_INIT_GLIB2_PGUINT16:
	.byte	0
	.ascii	"\010Pguint16"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGUINT16
_RTTI_GLIB2_PGUINT16:
	.byte	0
	.ascii	"\010Pguint16"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGINT32
_INIT_GLIB2_PGINT32:
	.byte	0
	.ascii	"\007Pgint32"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGINT32
_RTTI_GLIB2_PGINT32:
	.byte	0
	.ascii	"\007Pgint32"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGUINT32
_INIT_GLIB2_PGUINT32:
	.byte	0
	.ascii	"\010Pguint32"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGUINT32
_RTTI_GLIB2_PGUINT32:
	.byte	0
	.ascii	"\010Pguint32"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGINT64
_INIT_GLIB2_PGINT64:
	.byte	0
	.ascii	"\007Pgint64"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGINT64
_RTTI_GLIB2_PGINT64:
	.byte	0
	.ascii	"\007Pgint64"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGUINT64
_INIT_GLIB2_PGUINT64:
	.byte	0
	.ascii	"\010Pguint64"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGUINT64
_RTTI_GLIB2_PGUINT64:
	.byte	0
	.ascii	"\010Pguint64"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGSSIZE
_INIT_GLIB2_PGSSIZE:
	.byte	0
	.ascii	"\007pgssize"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGSSIZE
_RTTI_GLIB2_PGSSIZE:
	.byte	0
	.ascii	"\007pgssize"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGSIZE
_INIT_GLIB2_PGSIZE:
	.byte	0
	.ascii	"\006pgsize"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGSIZE
_RTTI_GLIB2_PGSIZE:
	.byte	0
	.ascii	"\006pgsize"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGVALUE
_INIT_GLIB2_PGVALUE:
	.byte	0
	.ascii	"\007PGValue"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGVALUE
_RTTI_GLIB2_PGVALUE:
	.byte	0
	.ascii	"\007PGValue"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGTYPECVALUE
_INIT_GLIB2_PGTYPECVALUE:
	.byte	0
	.ascii	"\014PGTypeCValue"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGTYPECVALUE
_RTTI_GLIB2_PGTYPECVALUE:
	.byte	0
	.ascii	"\014PGTypeCValue"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGPARAMFLAGS
_INIT_GLIB2_PGPARAMFLAGS:
	.byte	0
	.ascii	"\014PGParamFlags"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGPARAMFLAGS
_RTTI_GLIB2_PGPARAMFLAGS:
	.byte	0
	.ascii	"\014PGParamFlags"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGPARAMSPEC
_INIT_GLIB2_PGPARAMSPEC:
	.byte	0
	.ascii	"\013PGParamSpec"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGPARAMSPEC
_RTTI_GLIB2_PGPARAMSPEC:
	.byte	0
	.ascii	"\013PGParamSpec"

.const_data
	.align 2
.globl	_INIT_GLIB2_PPGPARAMSPEC
_INIT_GLIB2_PPGPARAMSPEC:
	.byte	0
	.ascii	"\014PPGParamSpec"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PPGPARAMSPEC
_RTTI_GLIB2_PPGPARAMSPEC:
	.byte	0
	.ascii	"\014PPGParamSpec"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGPARAMSPECCLASS
_INIT_GLIB2_PGPARAMSPECCLASS:
	.byte	0
	.ascii	"\020PGParamSpecClass"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGPARAMSPECCLASS
_RTTI_GLIB2_PGPARAMSPECCLASS:
	.byte	0
	.ascii	"\020PGParamSpecClass"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGPARAMETER
_INIT_GLIB2_PGPARAMETER:
	.byte	0
	.ascii	"\013PGParameter"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGPARAMETER
_RTTI_GLIB2_PGPARAMETER:
	.byte	0
	.ascii	"\013PGParameter"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGPARAMSPECTYPEINFO
_INIT_GLIB2_PGPARAMSPECTYPEINFO:
	.byte	0
	.ascii	"\023PGParamSpecTypeInfo"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGPARAMSPECTYPEINFO
_RTTI_GLIB2_PGPARAMSPECTYPEINFO:
	.byte	0
	.ascii	"\023PGParamSpecTypeInfo"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGQUARK
_INIT_GLIB2_PGQUARK:
	.byte	0
	.ascii	"\007PGQuark"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGQUARK
_RTTI_GLIB2_PGQUARK:
	.byte	0
	.ascii	"\007PGQuark"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGSLIST
_INIT_GLIB2_PGSLIST:
	.byte	0
	.ascii	"\007PGSList"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGSLIST
_RTTI_GLIB2_PGSLIST:
	.byte	0
	.ascii	"\007PGSList"

.const_data
	.align 2
.globl	_INIT_GLIB2_PPGSLIST
_INIT_GLIB2_PPGSLIST:
	.byte	0
	.ascii	"\010PPGSList"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PPGSLIST
_RTTI_GLIB2_PPGSLIST:
	.byte	0
	.ascii	"\010PPGSList"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGLIST
_INIT_GLIB2_PGLIST:
	.byte	0
	.ascii	"\006PGList"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGLIST
_RTTI_GLIB2_PGLIST:
	.byte	0
	.ascii	"\006PGList"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGLIST
_INIT_GLIB2_TGLIST:
	.byte	13,6
	.ascii	"TGList"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGLIST
_RTTI_GLIB2_TGLIST:
	.byte	13,6
	.ascii	"TGList"
	.long	12,3
	.long	_RTTI_SYSTEM_POINTER
	.long	0
	.long	_RTTI_GLIB2_PGLIST
	.long	4
	.long	_RTTI_GLIB2_PGLIST
	.long	8

.const_data
	.align 2
.globl	_INIT_GLIB2_PPGDATA
_INIT_GLIB2_PPGDATA:
	.byte	0
	.ascii	"\007PPGData"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PPGDATA
_RTTI_GLIB2_PPGDATA:
	.byte	0
	.ascii	"\007PPGData"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGBOXEDCOPYFUNC
_INIT_GLIB2_TGBOXEDCOPYFUNC:
	.byte	23,15
	.ascii	"TGBoxedCopyFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGBOXEDCOPYFUNC
_RTTI_GLIB2_TGBOXEDCOPYFUNC:
	.byte	23,15
	.ascii	"TGBoxedCopyFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGBOXEDFREEFUNC
_INIT_GLIB2_TGBOXEDFREEFUNC:
	.byte	23,15
	.ascii	"TGBoxedFreeFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGBOXEDFREEFUNC
_RTTI_GLIB2_TGBOXEDFREEFUNC:
	.byte	23,15
	.ascii	"TGBoxedFreeFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGTYPEDEBUGFLAGS
_INIT_GLIB2_PGTYPEDEBUGFLAGS:
	.byte	0
	.ascii	"\020PGTypeDebugFlags"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGTYPEDEBUGFLAGS
_RTTI_GLIB2_PGTYPEDEBUGFLAGS:
	.byte	0
	.ascii	"\020PGTypeDebugFlags"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGBASEINITFUNC
_INIT_GLIB2_TGBASEINITFUNC:
	.byte	23,14
	.ascii	"TGBaseInitFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGBASEINITFUNC
_RTTI_GLIB2_TGBASEINITFUNC:
	.byte	23,14
	.ascii	"TGBaseInitFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGBASEFINALIZEFUNC
_INIT_GLIB2_TGBASEFINALIZEFUNC:
	.byte	23,18
	.ascii	"TGBaseFinalizeFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGBASEFINALIZEFUNC
_RTTI_GLIB2_TGBASEFINALIZEFUNC:
	.byte	23,18
	.ascii	"TGBaseFinalizeFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGCLASSINITFUNC
_INIT_GLIB2_TGCLASSINITFUNC:
	.byte	23,15
	.ascii	"TGClassInitFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGCLASSINITFUNC
_RTTI_GLIB2_TGCLASSINITFUNC:
	.byte	23,15
	.ascii	"TGClassInitFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGCLASSFINALIZEFUNC
_INIT_GLIB2_TGCLASSFINALIZEFUNC:
	.byte	23,19
	.ascii	"TGClassFinalizeFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGCLASSFINALIZEFUNC
_RTTI_GLIB2_TGCLASSFINALIZEFUNC:
	.byte	23,19
	.ascii	"TGClassFinalizeFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGINSTANCEINITFUNC
_INIT_GLIB2_TGINSTANCEINITFUNC:
	.byte	23,18
	.ascii	"TGInstanceInitFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGINSTANCEINITFUNC
_RTTI_GLIB2_TGINSTANCEINITFUNC:
	.byte	23,18
	.ascii	"TGInstanceInitFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGINTERFACEINITFUNC
_INIT_GLIB2_TGINTERFACEINITFUNC:
	.byte	23,19
	.ascii	"TGInterfaceInitFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGINTERFACEINITFUNC
_RTTI_GLIB2_TGINTERFACEINITFUNC:
	.byte	23,19
	.ascii	"TGInterfaceInitFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGINTERFACEFINALIZEFUNC
_INIT_GLIB2_TGINTERFACEFINALIZEFUNC:
	.byte	23,23
	.ascii	"TGInterfaceFinalizeFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGINTERFACEFINALIZEFUNC
_RTTI_GLIB2_TGINTERFACEFINALIZEFUNC:
	.byte	23,23
	.ascii	"TGInterfaceFinalizeFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGTYPECLASSCACHEFUNC
_INIT_GLIB2_TGTYPECLASSCACHEFUNC:
	.byte	23,20
	.ascii	"TGTypeClassCacheFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGTYPECLASSCACHEFUNC
_RTTI_GLIB2_TGTYPECLASSCACHEFUNC:
	.byte	23,20
	.ascii	"TGTypeClassCacheFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGTRANSLATEFUNC
_INIT_GLIB2_TGTRANSLATEFUNC:
	.byte	23,15
	.ascii	"TGTranslateFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGTRANSLATEFUNC
_RTTI_GLIB2_TGTRANSLATEFUNC:
	.byte	23,15
	.ascii	"TGTranslateFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGTYPEFUNDAMENTALFLAGS
_INIT_GLIB2_PGTYPEFUNDAMENTALFLAGS:
	.byte	0
	.ascii	"\026PGTypeFundamentalFlags"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGTYPEFUNDAMENTALFLAGS
_RTTI_GLIB2_PGTYPEFUNDAMENTALFLAGS:
	.byte	0
	.ascii	"\026PGTypeFundamentalFlags"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGTYPEFLAGS
_INIT_GLIB2_PGTYPEFLAGS:
	.byte	0
	.ascii	"\013PGTypeFlags"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGTYPEFLAGS
_RTTI_GLIB2_PGTYPEFLAGS:
	.byte	0
	.ascii	"\013PGTypeFlags"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGTYPEVALUETABLE
_INIT_GLIB2_PGTYPEVALUETABLE:
	.byte	0
	.ascii	"\020PGTypeValueTable"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGTYPEVALUETABLE
_RTTI_GLIB2_PGTYPEVALUETABLE:
	.byte	0
	.ascii	"\020PGTypeValueTable"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGTYPEVALUETABLE
_INIT_GLIB2_TGTYPEVALUETABLE:
	.byte	13,16
	.ascii	"TGTypeValueTable"
	.long	32,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF86
_RTTI_GLIB2_DEF86:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF87
_RTTI_GLIB2_DEF87:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF88
_RTTI_GLIB2_DEF88:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF89
_RTTI_GLIB2_DEF89:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF90
_RTTI_GLIB2_DEF90:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF91
_RTTI_GLIB2_DEF91:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGTYPEVALUETABLE
_RTTI_GLIB2_TGTYPEVALUETABLE:
	.byte	13,16
	.ascii	"TGTypeValueTable"
	.long	32,8
	.long	_RTTI_GLIB2_DEF86
	.long	0
	.long	_RTTI_GLIB2_DEF87
	.long	4
	.long	_RTTI_GLIB2_DEF88
	.long	8
	.long	_RTTI_GLIB2_DEF89
	.long	12
	.long	_RTTI_GLIB2_PGCHAR
	.long	16
	.long	_RTTI_GLIB2_DEF90
	.long	20
	.long	_RTTI_GLIB2_PGCHAR
	.long	24
	.long	_RTTI_GLIB2_DEF91
	.long	28

.const_data
	.align 2
.globl	_INIT_GLIB2_PGTYPEINFO
_INIT_GLIB2_PGTYPEINFO:
	.byte	0
	.ascii	"\012PGTypeInfo"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGTYPEINFO
_RTTI_GLIB2_PGTYPEINFO:
	.byte	0
	.ascii	"\012PGTypeInfo"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGTYPEINFO
_INIT_GLIB2_TGTYPEINFO:
	.byte	13,10
	.ascii	"TGTypeInfo"
	.long	36,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGTYPEINFO
_RTTI_GLIB2_TGTYPEINFO:
	.byte	13,10
	.ascii	"TGTypeInfo"
	.long	36,10
	.long	_RTTI_SYSTEM_WORD
	.long	0
	.long	_RTTI_GLIB2_TGBASEINITFUNC
	.long	4
	.long	_RTTI_GLIB2_TGBASEFINALIZEFUNC
	.long	8
	.long	_RTTI_GLIB2_TGCLASSINITFUNC
	.long	12
	.long	_RTTI_GLIB2_TGCLASSFINALIZEFUNC
	.long	16
	.long	_RTTI_SYSTEM_POINTER
	.long	20
	.long	_RTTI_SYSTEM_WORD
	.long	24
	.long	_RTTI_SYSTEM_WORD
	.long	26
	.long	_RTTI_GLIB2_TGINSTANCEINITFUNC
	.long	28
	.long	_RTTI_GLIB2_PGTYPEVALUETABLE
	.long	32

.const_data
	.align 2
.globl	_INIT_GLIB2_PGTYPEFUNDAMENTALINFO
_INIT_GLIB2_PGTYPEFUNDAMENTALINFO:
	.byte	0
	.ascii	"\025PGTypeFundamentalInfo"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGTYPEFUNDAMENTALINFO
_RTTI_GLIB2_PGTYPEFUNDAMENTALINFO:
	.byte	0
	.ascii	"\025PGTypeFundamentalInfo"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGTYPEFUNDAMENTALINFO
_INIT_GLIB2_TGTYPEFUNDAMENTALINFO:
	.byte	13,21
	.ascii	"TGTypeFundamentalInfo"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGTYPEFUNDAMENTALINFO
_RTTI_GLIB2_TGTYPEFUNDAMENTALINFO:
	.byte	13,21
	.ascii	"TGTypeFundamentalInfo"
	.long	4,1
	.long	_RTTI_SYSTEM_LONGINT
	.long	0

.const_data
	.align 2
.globl	_INIT_GLIB2_PGINTERFACEINFO
_INIT_GLIB2_PGINTERFACEINFO:
	.byte	0
	.ascii	"\017PGInterfaceInfo"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGINTERFACEINFO
_RTTI_GLIB2_PGINTERFACEINFO:
	.byte	0
	.ascii	"\017PGInterfaceInfo"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGINTERFACEINFO
_INIT_GLIB2_TGINTERFACEINFO:
	.byte	13,15
	.ascii	"TGInterfaceInfo"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGINTERFACEINFO
_RTTI_GLIB2_TGINTERFACEINFO:
	.byte	13,15
	.ascii	"TGInterfaceInfo"
	.long	12,3
	.long	_RTTI_GLIB2_TGINTERFACEINITFUNC
	.long	0
	.long	_RTTI_GLIB2_TGINTERFACEFINALIZEFUNC
	.long	4
	.long	_RTTI_SYSTEM_POINTER
	.long	8

.const_data
	.align 2
.globl	_INIT_GLIB2_PGSYSTEMTHREAD
_INIT_GLIB2_PGSYSTEMTHREAD:
	.byte	0
	.ascii	"\016PGSystemThread"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGSYSTEMTHREAD
_RTTI_GLIB2_PGSYSTEMTHREAD:
	.byte	0
	.ascii	"\016PGSystemThread"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGSYSTEMTHREAD
_INIT_GLIB2_TGSYSTEMTHREAD:
	.byte	13,14
	.ascii	"TGSystemThread"
	.long	20,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF100
_RTTI_GLIB2_DEF100:
	.byte	12
	.ascii	"\000"
	.long	1,4
	.long	_RTTI_SYSTEM_CHAR
	.long	-1

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGSYSTEMTHREAD
_RTTI_GLIB2_TGSYSTEMTHREAD:
	.byte	13,14
	.ascii	"TGSystemThread"
	.long	20,4
	.long	_RTTI_GLIB2_DEF100
	.long	0
	.long	_RTTI_SYSTEM_DOUBLE
	.long	4
	.long	_RTTI_SYSTEM_POINTER
	.long	12
	.long	_RTTI_SYSTEM_LONGINT
	.long	16

.const_data
	.align 2
.globl	_INIT_GLIB2_TGVALUE
_INIT_GLIB2_TGVALUE:
	.byte	13,7
	.ascii	"TGValue"
	.long	20,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF103
_RTTI_GLIB2_DEF103:
	.byte	13
	.ascii	"\000"
	.long	8,9
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_SYSTEM_INT64
	.long	0
	.long	_RTTI_SYSTEM_QWORD
	.long	0
	.long	_RTTI_SYSTEM_SINGLE
	.long	0
	.long	_RTTI_SYSTEM_DOUBLE
	.long	0
	.long	_RTTI_SYSTEM_POINTER
	.long	0

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF102
_RTTI_GLIB2_DEF102:
	.byte	12
	.ascii	"\000"
	.long	8,2
	.long	_RTTI_GLIB2_DEF103
	.long	-1

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGVALUE
_RTTI_GLIB2_TGVALUE:
	.byte	13,7
	.ascii	"TGValue"
	.long	20,2
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_GLIB2_DEF102
	.long	4

.const_data
	.align 2
.globl	_INIT_GLIB2_PGVALUEARRAY
_INIT_GLIB2_PGVALUEARRAY:
	.byte	0
	.ascii	"\014PGValueArray"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGVALUEARRAY
_RTTI_GLIB2_PGVALUEARRAY:
	.byte	0
	.ascii	"\014PGValueArray"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGVALUEARRAY
_INIT_GLIB2_TGVALUEARRAY:
	.byte	13,12
	.ascii	"TGValueArray"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGVALUEARRAY
_RTTI_GLIB2_TGVALUEARRAY:
	.byte	13,12
	.ascii	"TGValueArray"
	.long	12,3
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_GLIB2_PGVALUE
	.long	4
	.long	_RTTI_SYSTEM_LONGWORD
	.long	8

.const_data
	.align 2
.globl	_INIT_GLIB2_TGTYPECVALUE
_INIT_GLIB2_TGTYPECVALUE:
	.byte	13,12
	.ascii	"TGTypeCValue"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGTYPECVALUE
_RTTI_GLIB2_TGTYPECVALUE:
	.byte	13,12
	.ascii	"TGTypeCValue"
	.long	8,5
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_SYSTEM_INT64
	.long	0
	.long	_RTTI_SYSTEM_DOUBLE
	.long	0
	.long	_RTTI_SYSTEM_POINTER
	.long	0

.const_data
	.align 2
.globl	_INIT_GLIB2_PGCHARARRAY
_INIT_GLIB2_PGCHARARRAY:
	.byte	0
	.ascii	"\013Pgchararray"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGCHARARRAY
_RTTI_GLIB2_PGCHARARRAY:
	.byte	0
	.ascii	"\013Pgchararray"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGPARAMSPEC
_INIT_GLIB2_TGPARAMSPEC:
	.byte	13,11
	.ascii	"TGParamSpec"
	.long	40,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGPARAMSPEC
_RTTI_GLIB2_TGPARAMSPEC:
	.byte	13,11
	.ascii	"TGParamSpec"
	.long	40,10
	.long	_RTTI_GLIB2_TGTYPEINSTANCE
	.long	0
	.long	_RTTI_GLIB2_PGCHAR
	.long	4
	.long	_RTTI_SYSTEM_LONGINT
	.long	8
	.long	_RTTI_SYSTEM_LONGWORD
	.long	12
	.long	_RTTI_SYSTEM_LONGWORD
	.long	16
	.long	_RTTI_GLIB2_PGCHAR
	.long	20
	.long	_RTTI_GLIB2_PGCHAR
	.long	24
	.long	_RTTI_SYSTEM_POINTER
	.long	28
	.long	_RTTI_SYSTEM_LONGWORD
	.long	32
	.long	_RTTI_SYSTEM_LONGWORD
	.long	36

.const_data
	.align 2
.globl	_INIT_GLIB2_TGPARAMSPECCLASS
_INIT_GLIB2_TGPARAMSPECCLASS:
	.byte	13,16
	.ascii	"TGParamSpecClass"
	.long	40,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF112
_RTTI_GLIB2_DEF112:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF113
_RTTI_GLIB2_DEF113:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF114
_RTTI_GLIB2_DEF114:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF115
_RTTI_GLIB2_DEF115:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF116
_RTTI_GLIB2_DEF116:
	.byte	12
	.ascii	"\000"
	.long	4,4
	.long	_RTTI_SYSTEM_POINTER
	.long	-1

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGPARAMSPECCLASS
_RTTI_GLIB2_TGPARAMSPECCLASS:
	.byte	13,16
	.ascii	"TGParamSpecClass"
	.long	40,7
	.long	_RTTI_GLIB2_TGTYPECLASS
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4
	.long	_RTTI_GLIB2_DEF112
	.long	8
	.long	_RTTI_GLIB2_DEF113
	.long	12
	.long	_RTTI_GLIB2_DEF114
	.long	16
	.long	_RTTI_GLIB2_DEF115
	.long	20
	.long	_RTTI_GLIB2_DEF116
	.long	24

.const_data
	.align 2
.globl	_INIT_GLIB2_TGPARAMETER
_INIT_GLIB2_TGPARAMETER:
	.byte	13,11
	.ascii	"TGParameter"
	.long	24,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGPARAMETER
_RTTI_GLIB2_TGPARAMETER:
	.byte	13,11
	.ascii	"TGParameter"
	.long	24,2
	.long	_RTTI_GLIB2_PGCHAR
	.long	0
	.long	_RTTI_GLIB2_TGVALUE
	.long	4

.const_data
	.align 2
.globl	_INIT_GLIB2_TGPARAMSPECTYPEINFO
_INIT_GLIB2_TGPARAMSPECTYPEINFO:
	.byte	13,19
	.ascii	"TGParamSpecTypeInfo"
	.long	28,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF119
_RTTI_GLIB2_DEF119:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF120
_RTTI_GLIB2_DEF120:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF121
_RTTI_GLIB2_DEF121:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF122
_RTTI_GLIB2_DEF122:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF123
_RTTI_GLIB2_DEF123:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGPARAMSPECTYPEINFO
_RTTI_GLIB2_TGPARAMSPECTYPEINFO:
	.byte	13,19
	.ascii	"TGParamSpecTypeInfo"
	.long	28,8
	.long	_RTTI_SYSTEM_WORD
	.long	0
	.long	_RTTI_SYSTEM_WORD
	.long	2
	.long	_RTTI_GLIB2_DEF119
	.long	4
	.long	_RTTI_SYSTEM_LONGWORD
	.long	8
	.long	_RTTI_GLIB2_DEF120
	.long	12
	.long	_RTTI_GLIB2_DEF121
	.long	16
	.long	_RTTI_GLIB2_DEF122
	.long	20
	.long	_RTTI_GLIB2_DEF123
	.long	24

.const_data
	.align 2
.globl	_INIT_GLIB2_PGCLOSURE
_INIT_GLIB2_PGCLOSURE:
	.byte	0
	.ascii	"\011PGClosure"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGCLOSURE
_RTTI_GLIB2_PGCLOSURE:
	.byte	0
	.ascii	"\011PGClosure"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGCLOSURENOTIFYDATA
_INIT_GLIB2_PGCLOSURENOTIFYDATA:
	.byte	0
	.ascii	"\023PGClosureNotifyData"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGCLOSURENOTIFYDATA
_RTTI_GLIB2_PGCLOSURENOTIFYDATA:
	.byte	0
	.ascii	"\023PGClosureNotifyData"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGCLOSURENOTIFY
_INIT_GLIB2_TGCLOSURENOTIFY:
	.byte	23,15
	.ascii	"TGClosureNotify"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGCLOSURENOTIFY
_RTTI_GLIB2_TGCLOSURENOTIFY:
	.byte	23,15
	.ascii	"TGClosureNotify"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGCLOSURE
_INIT_GLIB2_TGCLOSURE:
	.byte	13,9
	.ascii	"TGClosure"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF128
_RTTI_GLIB2_DEF128:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGCLOSURE
_RTTI_GLIB2_TGCLOSURE:
	.byte	13,9
	.ascii	"TGClosure"
	.long	16,4
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_GLIB2_DEF128
	.long	4
	.long	_RTTI_SYSTEM_POINTER
	.long	8
	.long	_RTTI_GLIB2_PGCLOSURENOTIFYDATA
	.long	12

.const_data
	.align 2
.globl	_INIT_GLIB2_PGCCLOSURE
_INIT_GLIB2_PGCCLOSURE:
	.byte	0
	.ascii	"\012PGCClosure"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGCCLOSURE
_RTTI_GLIB2_PGCCLOSURE:
	.byte	0
	.ascii	"\012PGCClosure"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGCCLOSURE
_INIT_GLIB2_TGCCLOSURE:
	.byte	13,10
	.ascii	"TGCClosure"
	.long	20,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGCCLOSURE
_RTTI_GLIB2_TGCCLOSURE:
	.byte	13,10
	.ascii	"TGCClosure"
	.long	20,2
	.long	_RTTI_GLIB2_TGCLOSURE
	.long	0
	.long	_RTTI_SYSTEM_POINTER
	.long	16

.const_data
	.align 2
.globl	_INIT_GLIB2_TGCALLBACKPROCEDURE
_INIT_GLIB2_TGCALLBACKPROCEDURE:
	.byte	23,19
	.ascii	"TGCallBackProcedure"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGCALLBACKPROCEDURE
_RTTI_GLIB2_TGCALLBACKPROCEDURE:
	.byte	23,19
	.ascii	"TGCallBackProcedure"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGCALLBACK
_INIT_GLIB2_TGCALLBACK:
	.byte	23,10
	.ascii	"TGCallback"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGCALLBACK
_RTTI_GLIB2_TGCALLBACK:
	.byte	23,10
	.ascii	"TGCallback"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGCLOSUREMARSHAL
_INIT_GLIB2_TGCLOSUREMARSHAL:
	.byte	23,16
	.ascii	"TGClosureMarshal"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGCLOSUREMARSHAL
_RTTI_GLIB2_TGCLOSUREMARSHAL:
	.byte	23,16
	.ascii	"TGClosureMarshal"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGCLOSURENOTIFYDATA
_INIT_GLIB2_TGCLOSURENOTIFYDATA:
	.byte	13,19
	.ascii	"TGClosureNotifyData"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGCLOSURENOTIFYDATA
_RTTI_GLIB2_TGCLOSURENOTIFYDATA:
	.byte	13,19
	.ascii	"TGClosureNotifyData"
	.long	8,2
	.long	_RTTI_SYSTEM_POINTER
	.long	0
	.long	_RTTI_GLIB2_TGCLOSURENOTIFY
	.long	4

.const_data
	.align 2
.globl	_INIT_GLIB2_PGSIGNALINVOCATIONHINT
_INIT_GLIB2_PGSIGNALINVOCATIONHINT:
	.byte	0
	.ascii	"\026PGSignalInvocationHint"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGSIGNALINVOCATIONHINT
_RTTI_GLIB2_PGSIGNALINVOCATIONHINT:
	.byte	0
	.ascii	"\026PGSignalInvocationHint"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGSIGNALCMARSHALLER
_INIT_GLIB2_PGSIGNALCMARSHALLER:
	.byte	0
	.ascii	"\023PGSignalCMarshaller"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGSIGNALCMARSHALLER
_RTTI_GLIB2_PGSIGNALCMARSHALLER:
	.byte	0
	.ascii	"\023PGSignalCMarshaller"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGSIGNALEMISSIONHOOK
_INIT_GLIB2_TGSIGNALEMISSIONHOOK:
	.byte	23,20
	.ascii	"TGSignalEmissionHook"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGSIGNALEMISSIONHOOK
_RTTI_GLIB2_TGSIGNALEMISSIONHOOK:
	.byte	23,20
	.ascii	"TGSignalEmissionHook"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGSIGNALACCUMULATOR
_INIT_GLIB2_TGSIGNALACCUMULATOR:
	.byte	23,19
	.ascii	"TGSignalAccumulator"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGSIGNALACCUMULATOR
_RTTI_GLIB2_TGSIGNALACCUMULATOR:
	.byte	23,19
	.ascii	"TGSignalAccumulator"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGSIGNALFLAGS
_INIT_GLIB2_PGSIGNALFLAGS:
	.byte	0
	.ascii	"\015PGSignalFlags"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGSIGNALFLAGS
_RTTI_GLIB2_PGSIGNALFLAGS:
	.byte	0
	.ascii	"\015PGSignalFlags"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGSIGNALINVOCATIONHINT
_INIT_GLIB2_TGSIGNALINVOCATIONHINT:
	.byte	13,22
	.ascii	"TGSignalInvocationHint"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGSIGNALINVOCATIONHINT
_RTTI_GLIB2_TGSIGNALINVOCATIONHINT:
	.byte	13,22
	.ascii	"TGSignalInvocationHint"
	.long	12,3
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4
	.long	_RTTI_SYSTEM_LONGINT
	.long	8

.const_data
	.align 2
.globl	_INIT_GLIB2_PGSIGNALQUERY
_INIT_GLIB2_PGSIGNALQUERY:
	.byte	0
	.ascii	"\015PGSignalQuery"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGSIGNALQUERY
_RTTI_GLIB2_PGSIGNALQUERY:
	.byte	0
	.ascii	"\015PGSignalQuery"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGSIGNALQUERY
_INIT_GLIB2_TGSIGNALQUERY:
	.byte	13,13
	.ascii	"TGSignalQuery"
	.long	28,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGSIGNALQUERY
_RTTI_GLIB2_TGSIGNALQUERY:
	.byte	13,13
	.ascii	"TGSignalQuery"
	.long	28,7
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_GLIB2_PGCHAR
	.long	4
	.long	_RTTI_SYSTEM_LONGWORD
	.long	8
	.long	_RTTI_SYSTEM_LONGINT
	.long	12
	.long	_RTTI_SYSTEM_LONGWORD
	.long	16
	.long	_RTTI_SYSTEM_LONGWORD
	.long	20
	.long	_RTTI_GLIB2_PGTYPE
	.long	24

.const_data
	.align 2
.globl	_INIT_GLIB2_TGTYPEPLUGINUSE
_INIT_GLIB2_TGTYPEPLUGINUSE:
	.byte	23,15
	.ascii	"TGTypePluginUse"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGTYPEPLUGINUSE
_RTTI_GLIB2_TGTYPEPLUGINUSE:
	.byte	23,15
	.ascii	"TGTypePluginUse"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGTYPEPLUGINUNUSE
_INIT_GLIB2_TGTYPEPLUGINUNUSE:
	.byte	23,17
	.ascii	"TGTypePluginUnuse"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGTYPEPLUGINUNUSE
_RTTI_GLIB2_TGTYPEPLUGINUNUSE:
	.byte	23,17
	.ascii	"TGTypePluginUnuse"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGTYPEPLUGINCOMPLETETYPEINFO
_INIT_GLIB2_TGTYPEPLUGINCOMPLETETYPEINFO:
	.byte	23,28
	.ascii	"TGTypePluginCompleteTypeInfo"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGTYPEPLUGINCOMPLETETYPEINFO
_RTTI_GLIB2_TGTYPEPLUGINCOMPLETETYPEINFO:
	.byte	23,28
	.ascii	"TGTypePluginCompleteTypeInfo"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGTYPEPLUGINCOMPLETEINTERFACEINFO
_INIT_GLIB2_TGTYPEPLUGINCOMPLETEINTERFACEINFO:
	.byte	23,33
	.ascii	"TGTypePluginCompleteInterfaceInfo"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGTYPEPLUGINCOMPLETEINTERFACEINFO
_RTTI_GLIB2_TGTYPEPLUGINCOMPLETEINTERFACEINFO:
	.byte	23,33
	.ascii	"TGTypePluginCompleteInterfaceInfo"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGTYPEPLUGINCLASS
_INIT_GLIB2_PGTYPEPLUGINCLASS:
	.byte	0
	.ascii	"\021PGTypePluginClass"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGTYPEPLUGINCLASS
_RTTI_GLIB2_PGTYPEPLUGINCLASS:
	.byte	0
	.ascii	"\021PGTypePluginClass"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGTYPEPLUGINCLASS
_INIT_GLIB2_TGTYPEPLUGINCLASS:
	.byte	13,17
	.ascii	"TGTypePluginClass"
	.long	24,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGTYPEPLUGINCLASS
_RTTI_GLIB2_TGTYPEPLUGINCLASS:
	.byte	13,17
	.ascii	"TGTypePluginClass"
	.long	24,5
	.long	_RTTI_GLIB2_TGTYPEINTERFACE
	.long	0
	.long	_RTTI_GLIB2_TGTYPEPLUGINUSE
	.long	8
	.long	_RTTI_GLIB2_TGTYPEPLUGINUNUSE
	.long	12
	.long	_RTTI_GLIB2_TGTYPEPLUGINCOMPLETETYPEINFO
	.long	16
	.long	_RTTI_GLIB2_TGTYPEPLUGINCOMPLETEINTERFACEINFO
	.long	20

.const_data
	.align 2
.globl	_INIT_GLIB2_PGOBJECT
_INIT_GLIB2_PGOBJECT:
	.byte	0
	.ascii	"\010PGObject"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGOBJECT
_RTTI_GLIB2_PGOBJECT:
	.byte	0
	.ascii	"\010PGObject"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGOBJECT
_INIT_GLIB2_TGOBJECT:
	.byte	13,8
	.ascii	"TGObject"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGOBJECT
_RTTI_GLIB2_TGOBJECT:
	.byte	13,8
	.ascii	"TGObject"
	.long	12,3
	.long	_RTTI_GLIB2_TGTYPEINSTANCE
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4
	.long	_RTTI_SYSTEM_POINTER
	.long	8

.const_data
	.align 2
.globl	_INIT_GLIB2_TGOBJECTGETPROPERTYFUNC
_INIT_GLIB2_TGOBJECTGETPROPERTYFUNC:
	.byte	23,23
	.ascii	"TGObjectGetPropertyFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGOBJECTGETPROPERTYFUNC
_RTTI_GLIB2_TGOBJECTGETPROPERTYFUNC:
	.byte	23,23
	.ascii	"TGObjectGetPropertyFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGOBJECTSETPROPERTYFUNC
_INIT_GLIB2_TGOBJECTSETPROPERTYFUNC:
	.byte	23,23
	.ascii	"TGObjectSetPropertyFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGOBJECTSETPROPERTYFUNC
_RTTI_GLIB2_TGOBJECTSETPROPERTYFUNC:
	.byte	23,23
	.ascii	"TGObjectSetPropertyFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGOBJECTFINALIZEFUNC
_INIT_GLIB2_TGOBJECTFINALIZEFUNC:
	.byte	23,20
	.ascii	"TGObjectFinalizeFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGOBJECTFINALIZEFUNC
_RTTI_GLIB2_TGOBJECTFINALIZEFUNC:
	.byte	23,20
	.ascii	"TGObjectFinalizeFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGWEAKNOTIFY
_INIT_GLIB2_TGWEAKNOTIFY:
	.byte	23,12
	.ascii	"TGWeakNotify"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGWEAKNOTIFY
_RTTI_GLIB2_TGWEAKNOTIFY:
	.byte	23,12
	.ascii	"TGWeakNotify"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGOBJECTCONSTRUCTPARAM
_INIT_GLIB2_PGOBJECTCONSTRUCTPARAM:
	.byte	0
	.ascii	"\026PGObjectConstructParam"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGOBJECTCONSTRUCTPARAM
_RTTI_GLIB2_PGOBJECTCONSTRUCTPARAM:
	.byte	0
	.ascii	"\026PGObjectConstructParam"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGOBJECTCLASS
_INIT_GLIB2_PGOBJECTCLASS:
	.byte	0
	.ascii	"\015PGObjectClass"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGOBJECTCLASS
_RTTI_GLIB2_PGOBJECTCLASS:
	.byte	0
	.ascii	"\015PGObjectClass"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGOBJECTCLASS
_INIT_GLIB2_TGOBJECTCLASS:
	.byte	13,13
	.ascii	"TGObjectClass"
	.long	68,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF158
_RTTI_GLIB2_DEF158:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF159
_RTTI_GLIB2_DEF159:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF160
_RTTI_GLIB2_DEF160:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF161
_RTTI_GLIB2_DEF161:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF162
_RTTI_GLIB2_DEF162:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF163
_RTTI_GLIB2_DEF163:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF164
_RTTI_GLIB2_DEF164:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF165
_RTTI_GLIB2_DEF165:
	.byte	12
	.ascii	"\000"
	.long	4,8
	.long	_RTTI_SYSTEM_POINTER
	.long	-1

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGOBJECTCLASS
_RTTI_GLIB2_TGOBJECTCLASS:
	.byte	13,13
	.ascii	"TGObjectClass"
	.long	68,10
	.long	_RTTI_GLIB2_TGTYPECLASS
	.long	0
	.long	_RTTI_GLIB2_PGSLIST
	.long	4
	.long	_RTTI_GLIB2_DEF158
	.long	8
	.long	_RTTI_GLIB2_DEF159
	.long	12
	.long	_RTTI_GLIB2_DEF160
	.long	16
	.long	_RTTI_GLIB2_DEF161
	.long	20
	.long	_RTTI_GLIB2_DEF162
	.long	24
	.long	_RTTI_GLIB2_DEF163
	.long	28
	.long	_RTTI_GLIB2_DEF164
	.long	32
	.long	_RTTI_GLIB2_DEF165
	.long	36

.const_data
	.align 2
.globl	_INIT_GLIB2_TGOBJECTCONSTRUCTPARAM
_INIT_GLIB2_TGOBJECTCONSTRUCTPARAM:
	.byte	13,22
	.ascii	"TGObjectConstructParam"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGOBJECTCONSTRUCTPARAM
_RTTI_GLIB2_TGOBJECTCONSTRUCTPARAM:
	.byte	13,22
	.ascii	"TGObjectConstructParam"
	.long	8,2
	.long	_RTTI_GLIB2_PGPARAMSPEC
	.long	0
	.long	_RTTI_GLIB2_PGVALUE
	.long	4

.const_data
	.align 2
.globl	_INIT_GLIB2_PGENUMCLASS
_INIT_GLIB2_PGENUMCLASS:
	.byte	0
	.ascii	"\013PGEnumClass"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGENUMCLASS
_RTTI_GLIB2_PGENUMCLASS:
	.byte	0
	.ascii	"\013PGEnumClass"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGENUMVALUE
_INIT_GLIB2_PGENUMVALUE:
	.byte	0
	.ascii	"\013PGEnumValue"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGENUMVALUE
_RTTI_GLIB2_PGENUMVALUE:
	.byte	0
	.ascii	"\013PGEnumValue"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGENUMCLASS
_INIT_GLIB2_TGENUMCLASS:
	.byte	13,11
	.ascii	"TGEnumClass"
	.long	20,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGENUMCLASS
_RTTI_GLIB2_TGENUMCLASS:
	.byte	13,11
	.ascii	"TGEnumClass"
	.long	20,5
	.long	_RTTI_GLIB2_TGTYPECLASS
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4
	.long	_RTTI_SYSTEM_LONGINT
	.long	8
	.long	_RTTI_SYSTEM_LONGWORD
	.long	12
	.long	_RTTI_GLIB2_PGENUMVALUE
	.long	16

.const_data
	.align 2
.globl	_INIT_GLIB2_TGENUMVALUE
_INIT_GLIB2_TGENUMVALUE:
	.byte	13,11
	.ascii	"TGEnumValue"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGENUMVALUE
_RTTI_GLIB2_TGENUMVALUE:
	.byte	13,11
	.ascii	"TGEnumValue"
	.long	12,3
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_GLIB2_PGCHAR
	.long	4
	.long	_RTTI_GLIB2_PGCHAR
	.long	8

.const_data
	.align 2
.globl	_INIT_GLIB2_PGFLAGSCLASS
_INIT_GLIB2_PGFLAGSCLASS:
	.byte	0
	.ascii	"\014PGFlagsClass"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGFLAGSCLASS
_RTTI_GLIB2_PGFLAGSCLASS:
	.byte	0
	.ascii	"\014PGFlagsClass"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGFLAGSVALUE
_INIT_GLIB2_PGFLAGSVALUE:
	.byte	0
	.ascii	"\014PGFlagsValue"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGFLAGSVALUE
_RTTI_GLIB2_PGFLAGSVALUE:
	.byte	0
	.ascii	"\014PGFlagsValue"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGFLAGSCLASS
_INIT_GLIB2_TGFLAGSCLASS:
	.byte	13,12
	.ascii	"TGFlagsClass"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGFLAGSCLASS
_RTTI_GLIB2_TGFLAGSCLASS:
	.byte	13,12
	.ascii	"TGFlagsClass"
	.long	16,4
	.long	_RTTI_GLIB2_TGTYPECLASS
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4
	.long	_RTTI_SYSTEM_LONGWORD
	.long	8
	.long	_RTTI_GLIB2_PGFLAGSVALUE
	.long	12

.const_data
	.align 2
.globl	_INIT_GLIB2_TGFLAGSVALUE
_INIT_GLIB2_TGFLAGSVALUE:
	.byte	13,12
	.ascii	"TGFlagsValue"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGFLAGSVALUE
_RTTI_GLIB2_TGFLAGSVALUE:
	.byte	13,12
	.ascii	"TGFlagsValue"
	.long	12,3
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_GLIB2_PGCHAR
	.long	4
	.long	_RTTI_GLIB2_PGCHAR
	.long	8

.const_data
	.align 2
.globl	_INIT_GLIB2_PGASCIITYPE
_INIT_GLIB2_PGASCIITYPE:
	.byte	0
	.ascii	"\013PGAsciiType"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGASCIITYPE
_RTTI_GLIB2_PGASCIITYPE:
	.byte	0
	.ascii	"\013PGAsciiType"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGHRFUNC
_INIT_GLIB2_TGHRFUNC:
	.byte	23,8
	.ascii	"TGHRFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGHRFUNC
_RTTI_GLIB2_TGHRFUNC:
	.byte	23,8
	.ascii	"TGHRFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_PPGERROR
_INIT_GLIB2_PPGERROR:
	.byte	0
	.ascii	"\010PPGError"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PPGERROR
_RTTI_GLIB2_PPGERROR:
	.byte	0
	.ascii	"\010PPGError"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGERROR
_INIT_GLIB2_PGERROR:
	.byte	0
	.ascii	"\007PGError"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGERROR
_RTTI_GLIB2_PGERROR:
	.byte	0
	.ascii	"\007PGError"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGERROR
_INIT_GLIB2_TGERROR:
	.byte	13,7
	.ascii	"TGError"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGERROR
_RTTI_GLIB2_TGERROR:
	.byte	13,7
	.ascii	"TGError"
	.long	12,3
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4
	.long	_RTTI_GLIB2_PGCHAR
	.long	8

.const_data
	.align 2
.globl	_INIT_GLIB2_PGMEMVTABLE
_INIT_GLIB2_PGMEMVTABLE:
	.byte	0
	.ascii	"\013PGMemVTable"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGMEMVTABLE
_RTTI_GLIB2_PGMEMVTABLE:
	.byte	0
	.ascii	"\013PGMemVTable"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGMEMVTABLE
_INIT_GLIB2_TGMEMVTABLE:
	.byte	13,11
	.ascii	"TGMemVTable"
	.long	24,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF182
_RTTI_GLIB2_DEF182:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF183
_RTTI_GLIB2_DEF183:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF184
_RTTI_GLIB2_DEF184:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF185
_RTTI_GLIB2_DEF185:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF186
_RTTI_GLIB2_DEF186:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF187
_RTTI_GLIB2_DEF187:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGMEMVTABLE
_RTTI_GLIB2_TGMEMVTABLE:
	.byte	13,11
	.ascii	"TGMemVTable"
	.long	24,6
	.long	_RTTI_GLIB2_DEF182
	.long	0
	.long	_RTTI_GLIB2_DEF183
	.long	4
	.long	_RTTI_GLIB2_DEF184
	.long	8
	.long	_RTTI_GLIB2_DEF185
	.long	12
	.long	_RTTI_GLIB2_DEF186
	.long	16
	.long	_RTTI_GLIB2_DEF187
	.long	20

.const_data
	.align 2
.globl	_INIT_GLIB2_PGARRAY
_INIT_GLIB2_PGARRAY:
	.byte	0
	.ascii	"\007PGArray"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGARRAY
_RTTI_GLIB2_PGARRAY:
	.byte	0
	.ascii	"\007PGArray"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGARRAY
_INIT_GLIB2_TGARRAY:
	.byte	13,7
	.ascii	"TGArray"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGARRAY
_RTTI_GLIB2_TGARRAY:
	.byte	13,7
	.ascii	"TGArray"
	.long	8,2
	.long	_RTTI_GLIB2_PGCHAR
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4

.const_data
	.align 2
.globl	_INIT_GLIB2_PGBYTEARRAY
_INIT_GLIB2_PGBYTEARRAY:
	.byte	0
	.ascii	"\013PGByteArray"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGBYTEARRAY
_RTTI_GLIB2_PGBYTEARRAY:
	.byte	0
	.ascii	"\013PGByteArray"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGBYTEARRAY
_INIT_GLIB2_TGBYTEARRAY:
	.byte	13,11
	.ascii	"TGByteArray"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGBYTEARRAY
_RTTI_GLIB2_TGBYTEARRAY:
	.byte	13,11
	.ascii	"TGByteArray"
	.long	8,2
	.long	_RTTI_GLIB2_PGUINT8
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4

.const_data
	.align 2
.globl	_INIT_GLIB2_PGPTRARRAY
_INIT_GLIB2_PGPTRARRAY:
	.byte	0
	.ascii	"\012PGPtrArray"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGPTRARRAY
_RTTI_GLIB2_PGPTRARRAY:
	.byte	0
	.ascii	"\012PGPtrArray"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGPTRARRAY
_INIT_GLIB2_TGPTRARRAY:
	.byte	13,10
	.ascii	"TGPtrArray"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGPTRARRAY
_RTTI_GLIB2_TGPTRARRAY:
	.byte	13,10
	.ascii	"TGPtrArray"
	.long	8,2
	.long	_RTTI_GLIB2_PGPOINTER
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4

.const_data
	.align 2
.globl	_INIT_GLIB2_TGSLIST
_INIT_GLIB2_TGSLIST:
	.byte	13,7
	.ascii	"TGSList"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGSLIST
_RTTI_GLIB2_TGSLIST:
	.byte	13,7
	.ascii	"TGSList"
	.long	8,2
	.long	_RTTI_SYSTEM_POINTER
	.long	0
	.long	_RTTI_GLIB2_PGSLIST
	.long	4

.const_data
	.align 2
.globl	_INIT_GLIB2_TGCACHENEWFUNC
_INIT_GLIB2_TGCACHENEWFUNC:
	.byte	23,14
	.ascii	"TGCacheNewFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGCACHENEWFUNC
_RTTI_GLIB2_TGCACHENEWFUNC:
	.byte	23,14
	.ascii	"TGCacheNewFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGCACHEDUPFUNC
_INIT_GLIB2_TGCACHEDUPFUNC:
	.byte	23,14
	.ascii	"TGCacheDupFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGCACHEDUPFUNC
_RTTI_GLIB2_TGCACHEDUPFUNC:
	.byte	23,14
	.ascii	"TGCacheDupFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGCACHEDESTROYFUNC
_INIT_GLIB2_TGCACHEDESTROYFUNC:
	.byte	23,18
	.ascii	"TGCacheDestroyFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGCACHEDESTROYFUNC
_RTTI_GLIB2_TGCACHEDESTROYFUNC:
	.byte	23,18
	.ascii	"TGCacheDestroyFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGCOMPLETIONFUNC
_INIT_GLIB2_PGCOMPLETIONFUNC:
	.byte	0
	.ascii	"\020PGCompletionFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGCOMPLETIONFUNC
_RTTI_GLIB2_PGCOMPLETIONFUNC:
	.byte	0
	.ascii	"\020PGCompletionFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGCOMPLETIONSTRNCMPFUNC
_INIT_GLIB2_TGCOMPLETIONSTRNCMPFUNC:
	.byte	23,23
	.ascii	"TGCompletionStrncmpFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGCOMPLETIONSTRNCMPFUNC
_RTTI_GLIB2_TGCOMPLETIONSTRNCMPFUNC:
	.byte	23,23
	.ascii	"TGCompletionStrncmpFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGCOMPLETION
_INIT_GLIB2_PGCOMPLETION:
	.byte	0
	.ascii	"\014PGCompletion"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGCOMPLETION
_RTTI_GLIB2_PGCOMPLETION:
	.byte	0
	.ascii	"\014PGCompletion"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGCOMPLETION
_INIT_GLIB2_TGCOMPLETION:
	.byte	13,12
	.ascii	"TGCompletion"
	.long	20,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGCOMPLETION
_RTTI_GLIB2_TGCOMPLETION:
	.byte	13,12
	.ascii	"TGCompletion"
	.long	20,5
	.long	_RTTI_GLIB2_PGLIST
	.long	0
	.long	_RTTI_SYSTEM_CHAR
	.long	4
	.long	_RTTI_GLIB2_PGCHAR
	.long	8
	.long	_RTTI_GLIB2_PGLIST
	.long	12
	.long	_RTTI_GLIB2_TGCOMPLETIONSTRNCMPFUNC
	.long	16

.const_data
	.align 2
.globl	_INIT_GLIB2_PGCONVERTERROR
_INIT_GLIB2_PGCONVERTERROR:
	.byte	0
	.ascii	"\016PGConvertError"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGCONVERTERROR
_RTTI_GLIB2_PGCONVERTERROR:
	.byte	0
	.ascii	"\016PGConvertError"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGCONVERTERROR
_INIT_GLIB2_TGCONVERTERROR:
	.byte	3,14
	.ascii	"TGConvertError"
	.byte	5
	.long	0,5,0
	.byte	29
	.ascii	"G_CONVERT_ERROR_NO_CONVERSION"
	.byte	32
	.ascii	"G_CONVERT_ERROR_ILLEGAL_SEQUENCE"
	.byte	22
	.ascii	"G_CONVERT_ERROR_FAILED"
	.byte	29
	.ascii	"G_CONVERT_ERROR_PARTIAL_INPUT"
	.byte	23
	.ascii	"G_CONVERT_ERROR_BAD_URI"
	.byte	33
	.ascii	"G_CONVERT_ERROR_NOT_ABSOLUTE_PATH"
	.byte	5
	.ascii	"glib2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGCONVERTERROR
_RTTI_GLIB2_TGCONVERTERROR:
	.byte	3,14
	.ascii	"TGConvertError"
	.byte	5
	.long	0,5,0
	.byte	29
	.ascii	"G_CONVERT_ERROR_NO_CONVERSION"
	.byte	32
	.ascii	"G_CONVERT_ERROR_ILLEGAL_SEQUENCE"
	.byte	22
	.ascii	"G_CONVERT_ERROR_FAILED"
	.byte	29
	.ascii	"G_CONVERT_ERROR_PARTIAL_INPUT"
	.byte	23
	.ascii	"G_CONVERT_ERROR_BAD_URI"
	.byte	33
	.ascii	"G_CONVERT_ERROR_NOT_ABSOLUTE_PATH"
	.byte	5
	.ascii	"glib2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGCONVERTERROR_s2o
_RTTI_GLIB2_TGCONVERTERROR_s2o:
	.long	6,4
	.long	_RTTI_GLIB2_TGCONVERTERROR+145
	.long	2
	.long	_RTTI_GLIB2_TGCONVERTERROR+92
	.long	1
	.long	_RTTI_GLIB2_TGCONVERTERROR+59
	.long	5
	.long	_RTTI_GLIB2_TGCONVERTERROR+169
	.long	0
	.long	_RTTI_GLIB2_TGCONVERTERROR+29
	.long	3
	.long	_RTTI_GLIB2_TGCONVERTERROR+115

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGCONVERTERROR_o2s
_RTTI_GLIB2_TGCONVERTERROR_o2s:
	.long	0
	.long	_RTTI_GLIB2_TGCONVERTERROR+29
	.long	_RTTI_GLIB2_TGCONVERTERROR+59
	.long	_RTTI_GLIB2_TGCONVERTERROR+92
	.long	_RTTI_GLIB2_TGCONVERTERROR+115
	.long	_RTTI_GLIB2_TGCONVERTERROR+145
	.long	_RTTI_GLIB2_TGCONVERTERROR+169

.const_data
	.align 2
.globl	_INIT_GLIB2_PGICONV
_INIT_GLIB2_PGICONV:
	.byte	0
	.ascii	"\007PGIConv"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGICONV
_RTTI_GLIB2_PGICONV:
	.byte	0
	.ascii	"\007PGIConv"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGDATAFOREACHFUNC
_INIT_GLIB2_TGDATAFOREACHFUNC:
	.byte	23,17
	.ascii	"TGDataForeachFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGDATAFOREACHFUNC
_RTTI_GLIB2_TGDATAFOREACHFUNC:
	.byte	23,17
	.ascii	"TGDataForeachFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_GDESTROYNOTIFY
_INIT_GLIB2_GDESTROYNOTIFY:
	.byte	23,14
	.ascii	"GDestroyNotify"

.const_data
	.align 2
.globl	_RTTI_GLIB2_GDESTROYNOTIFY
_RTTI_GLIB2_GDESTROYNOTIFY:
	.byte	23,14
	.ascii	"GDestroyNotify"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGTIME
_INIT_GLIB2_PGTIME:
	.byte	0
	.ascii	"\006PGTime"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGTIME
_RTTI_GLIB2_PGTIME:
	.byte	0
	.ascii	"\006PGTime"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGDATEYEAR
_INIT_GLIB2_PGDATEYEAR:
	.byte	0
	.ascii	"\012PGDateYear"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGDATEYEAR
_RTTI_GLIB2_PGDATEYEAR:
	.byte	0
	.ascii	"\012PGDateYear"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGDATEDAY
_INIT_GLIB2_PGDATEDAY:
	.byte	0
	.ascii	"\011PGDateDay"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGDATEDAY
_RTTI_GLIB2_PGDATEDAY:
	.byte	0
	.ascii	"\011PGDateDay"

.const_data
	.align 2
.globl	_INIT_GLIB2_PTM
_INIT_GLIB2_PTM:
	.byte	0
	.ascii	"\003Ptm"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PTM
_RTTI_GLIB2_PTM:
	.byte	0
	.ascii	"\003Ptm"

.const_data
	.align 2
.globl	_INIT_GLIB2_TTM
_INIT_GLIB2_TTM:
	.byte	13,3
	.ascii	"Ttm"
	.long	44,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TTM
_RTTI_GLIB2_TTM:
	.byte	13,3
	.ascii	"Ttm"
	.long	44,11
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4
	.long	_RTTI_SYSTEM_LONGINT
	.long	8
	.long	_RTTI_SYSTEM_LONGINT
	.long	12
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
	.long	_RTTI_GLIB2_PGCHAR
	.long	40

.const_data
	.align 2
.globl	_INIT_GLIB2_PGDATEDMY
_INIT_GLIB2_PGDATEDMY:
	.byte	0
	.ascii	"\011PGDateDMY"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGDATEDMY
_RTTI_GLIB2_PGDATEDMY:
	.byte	0
	.ascii	"\011PGDateDMY"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGDATEWEEKDAY
_INIT_GLIB2_PGDATEWEEKDAY:
	.byte	0
	.ascii	"\015PGDateWeekday"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGDATEWEEKDAY
_RTTI_GLIB2_PGDATEWEEKDAY:
	.byte	0
	.ascii	"\015PGDateWeekday"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGDATEMONTH
_INIT_GLIB2_PGDATEMONTH:
	.byte	0
	.ascii	"\013PGDateMonth"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGDATEMONTH
_RTTI_GLIB2_PGDATEMONTH:
	.byte	0
	.ascii	"\013PGDateMonth"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGDATE
_INIT_GLIB2_PGDATE:
	.byte	0
	.ascii	"\006PGDate"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGDATE
_RTTI_GLIB2_PGDATE:
	.byte	0
	.ascii	"\006PGDate"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGDATE
_INIT_GLIB2_TGDATE:
	.byte	13,6
	.ascii	"TGDate"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGDATE
_RTTI_GLIB2_TGDATE:
	.byte	13,6
	.ascii	"TGDate"
	.long	8,2
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4

.const_data
	.align 2
.globl	_INIT_GLIB2_PGFILEERROR
_INIT_GLIB2_PGFILEERROR:
	.byte	0
	.ascii	"\013PGFileError"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGFILEERROR
_RTTI_GLIB2_PGFILEERROR:
	.byte	0
	.ascii	"\013PGFileError"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGFILETEST
_INIT_GLIB2_PGFILETEST:
	.byte	0
	.ascii	"\012PGFileTest"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGFILETEST
_RTTI_GLIB2_PGFILETEST:
	.byte	0
	.ascii	"\012PGFileTest"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGHOOK
_INIT_GLIB2_PGHOOK:
	.byte	0
	.ascii	"\006PGHook"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGHOOK
_RTTI_GLIB2_PGHOOK:
	.byte	0
	.ascii	"\006PGHook"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGHOOK
_INIT_GLIB2_TGHOOK:
	.byte	13,6
	.ascii	"TGHook"
	.long	32,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGHOOK
_RTTI_GLIB2_TGHOOK:
	.byte	13,6
	.ascii	"TGHook"
	.long	32,8
	.long	_RTTI_SYSTEM_POINTER
	.long	0
	.long	_RTTI_GLIB2_PGHOOK
	.long	4
	.long	_RTTI_GLIB2_PGHOOK
	.long	8
	.long	_RTTI_SYSTEM_LONGWORD
	.long	12
	.long	_RTTI_SYSTEM_LONGWORD
	.long	16
	.long	_RTTI_SYSTEM_LONGWORD
	.long	20
	.long	_RTTI_SYSTEM_POINTER
	.long	24
	.long	_RTTI_GLIB2_TGDESTROYNOTIFY
	.long	28

.const_data
	.align 2
.globl	_INIT_GLIB2_PGHOOKLIST
_INIT_GLIB2_PGHOOKLIST:
	.byte	0
	.ascii	"\012PGHookList"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGHOOKLIST
_RTTI_GLIB2_PGHOOKLIST:
	.byte	0
	.ascii	"\012PGHookList"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGHOOKCOMPAREFUNC
_INIT_GLIB2_TGHOOKCOMPAREFUNC:
	.byte	23,17
	.ascii	"TGHookCompareFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGHOOKCOMPAREFUNC
_RTTI_GLIB2_TGHOOKCOMPAREFUNC:
	.byte	23,17
	.ascii	"TGHookCompareFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGHOOKFINDFUNC
_INIT_GLIB2_TGHOOKFINDFUNC:
	.byte	23,14
	.ascii	"TGHookFindFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGHOOKFINDFUNC
_RTTI_GLIB2_TGHOOKFINDFUNC:
	.byte	23,14
	.ascii	"TGHookFindFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGHOOKMARSHALLER
_INIT_GLIB2_TGHOOKMARSHALLER:
	.byte	23,16
	.ascii	"TGHookMarshaller"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGHOOKMARSHALLER
_RTTI_GLIB2_TGHOOKMARSHALLER:
	.byte	23,16
	.ascii	"TGHookMarshaller"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGHOOKCHECKMARSHALLER
_INIT_GLIB2_TGHOOKCHECKMARSHALLER:
	.byte	23,21
	.ascii	"TGHookCheckMarshaller"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGHOOKCHECKMARSHALLER
_RTTI_GLIB2_TGHOOKCHECKMARSHALLER:
	.byte	23,21
	.ascii	"TGHookCheckMarshaller"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGHOOKFUNC
_INIT_GLIB2_TGHOOKFUNC:
	.byte	23,10
	.ascii	"TGHookFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGHOOKFUNC
_RTTI_GLIB2_TGHOOKFUNC:
	.byte	23,10
	.ascii	"TGHookFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGHOOKCHECKFUNC
_INIT_GLIB2_TGHOOKCHECKFUNC:
	.byte	23,15
	.ascii	"TGHookCheckFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGHOOKCHECKFUNC
_RTTI_GLIB2_TGHOOKCHECKFUNC:
	.byte	23,15
	.ascii	"TGHookCheckFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGHOOKFINALIZEFUNC
_INIT_GLIB2_TGHOOKFINALIZEFUNC:
	.byte	23,18
	.ascii	"TGHookFinalizeFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGHOOKFINALIZEFUNC
_RTTI_GLIB2_TGHOOKFINALIZEFUNC:
	.byte	23,18
	.ascii	"TGHookFinalizeFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGHOOKLIST
_INIT_GLIB2_TGHOOKLIST:
	.byte	13,10
	.ascii	"TGHookList"
	.long	28,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF230
_RTTI_GLIB2_DEF230:
	.byte	12
	.ascii	"\000"
	.long	4,2
	.long	_RTTI_SYSTEM_POINTER
	.long	-1

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGHOOKLIST
_RTTI_GLIB2_TGHOOKLIST:
	.byte	13,10
	.ascii	"TGHookList"
	.long	28,6
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_SYSTEM_LONGINT
	.long	4
	.long	_RTTI_GLIB2_PGHOOK
	.long	8
	.long	_RTTI_SYSTEM_POINTER
	.long	12
	.long	_RTTI_GLIB2_TGHOOKFINALIZEFUNC
	.long	16
	.long	_RTTI_GLIB2_DEF230
	.long	20

.const_data
	.align 2
.globl	_INIT_GLIB2_PGHOOKFLAGMASK
_INIT_GLIB2_PGHOOKFLAGMASK:
	.byte	0
	.ascii	"\016PGHookFlagMask"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGHOOKFLAGMASK
_RTTI_GLIB2_PGHOOKFLAGMASK:
	.byte	0
	.ascii	"\016PGHookFlagMask"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGTHREADERROR
_INIT_GLIB2_PGTHREADERROR:
	.byte	0
	.ascii	"\015PGThreadError"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGTHREADERROR
_RTTI_GLIB2_PGTHREADERROR:
	.byte	0
	.ascii	"\015PGThreadError"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGTHREADERROR
_INIT_GLIB2_TGTHREADERROR:
	.byte	3,13
	.ascii	"TGThreadError"
	.byte	5
	.long	0,0,0
	.byte	20
	.ascii	"G_THREAD_ERROR_AGAIN"
	.byte	5
	.ascii	"glib2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGTHREADERROR
_RTTI_GLIB2_TGTHREADERROR:
	.byte	3,13
	.ascii	"TGThreadError"
	.byte	5
	.long	0,0,0
	.byte	20
	.ascii	"G_THREAD_ERROR_AGAIN"
	.byte	5
	.ascii	"glib2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGTHREADERROR_s2o
_RTTI_GLIB2_TGTHREADERROR_s2o:
	.long	1,0
	.long	_RTTI_GLIB2_TGTHREADERROR+28

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGTHREADERROR_o2s
_RTTI_GLIB2_TGTHREADERROR_o2s:
	.long	0
	.long	_RTTI_GLIB2_TGTHREADERROR+28

.const_data
	.align 2
.globl	_INIT_GLIB2_TGTHREADFUNC
_INIT_GLIB2_TGTHREADFUNC:
	.byte	23,12
	.ascii	"TGThreadFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGTHREADFUNC
_RTTI_GLIB2_TGTHREADFUNC:
	.byte	23,12
	.ascii	"TGThreadFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGTHREADPRIORITY
_INIT_GLIB2_PGTHREADPRIORITY:
	.byte	0
	.ascii	"\020PGThreadPriority"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGTHREADPRIORITY
_RTTI_GLIB2_PGTHREADPRIORITY:
	.byte	0
	.ascii	"\020PGThreadPriority"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGTHREADPRIORITY
_INIT_GLIB2_TGTHREADPRIORITY:
	.byte	3,16
	.ascii	"TGThreadPriority"
	.byte	5
	.long	0,3,0
	.byte	21
	.ascii	"G_THREAD_PRIORITY_LOW"
	.byte	24
	.ascii	"G_THREAD_PRIORITY_NORMAL"
	.byte	22
	.ascii	"G_THREAD_PRIORITY_HIGH"
	.byte	24
	.ascii	"G_THREAD_PRIORITY_URGENT"
	.byte	5
	.ascii	"glib2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGTHREADPRIORITY
_RTTI_GLIB2_TGTHREADPRIORITY:
	.byte	3,16
	.ascii	"TGThreadPriority"
	.byte	5
	.long	0,3,0
	.byte	21
	.ascii	"G_THREAD_PRIORITY_LOW"
	.byte	24
	.ascii	"G_THREAD_PRIORITY_NORMAL"
	.byte	22
	.ascii	"G_THREAD_PRIORITY_HIGH"
	.byte	24
	.ascii	"G_THREAD_PRIORITY_URGENT"
	.byte	5
	.ascii	"glib2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGTHREADPRIORITY_s2o
_RTTI_GLIB2_TGTHREADPRIORITY_s2o:
	.long	4,2
	.long	_RTTI_GLIB2_TGTHREADPRIORITY+78
	.long	0
	.long	_RTTI_GLIB2_TGTHREADPRIORITY+31
	.long	1
	.long	_RTTI_GLIB2_TGTHREADPRIORITY+53
	.long	3
	.long	_RTTI_GLIB2_TGTHREADPRIORITY+101

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGTHREADPRIORITY_o2s
_RTTI_GLIB2_TGTHREADPRIORITY_o2s:
	.long	0
	.long	_RTTI_GLIB2_TGTHREADPRIORITY+31
	.long	_RTTI_GLIB2_TGTHREADPRIORITY+53
	.long	_RTTI_GLIB2_TGTHREADPRIORITY+78
	.long	_RTTI_GLIB2_TGTHREADPRIORITY+101

.const_data
	.align 2
.globl	_INIT_GLIB2_PGTHREAD
_INIT_GLIB2_PGTHREAD:
	.byte	0
	.ascii	"\010PGThread"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGTHREAD
_RTTI_GLIB2_PGTHREAD:
	.byte	0
	.ascii	"\010PGThread"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGTHREAD
_INIT_GLIB2_TGTHREAD:
	.byte	13,8
	.ascii	"TGThread"
	.long	16,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGTHREAD
_RTTI_GLIB2_TGTHREAD:
	.byte	13,8
	.ascii	"TGThread"
	.long	16,4
	.long	_RTTI_GLIB2_TGTHREADFUNC
	.long	0
	.long	_RTTI_SYSTEM_POINTER
	.long	4
	.long	_RTTI_SYSTEM_BOOLEAN32
	.long	8
	.long	_RTTI_GLIB2_TGTHREADPRIORITY
	.long	12

.const_data
	.align 2
.globl	_INIT_GLIB2_PPGMUTEX
_INIT_GLIB2_PPGMUTEX:
	.byte	0
	.ascii	"\010PPGMutex"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PPGMUTEX
_RTTI_GLIB2_PPGMUTEX:
	.byte	0
	.ascii	"\010PPGMutex"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGSTATICMUTEX
_INIT_GLIB2_PGSTATICMUTEX:
	.byte	0
	.ascii	"\015PGStaticMutex"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGSTATICMUTEX
_RTTI_GLIB2_PGSTATICMUTEX:
	.byte	0
	.ascii	"\015PGStaticMutex"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGTHREADFUNCTIONS
_INIT_GLIB2_PGTHREADFUNCTIONS:
	.byte	0
	.ascii	"\021PGThreadFunctions"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGTHREADFUNCTIONS
_RTTI_GLIB2_PGTHREADFUNCTIONS:
	.byte	0
	.ascii	"\021PGThreadFunctions"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGTHREADFUNCTIONS
_INIT_GLIB2_TGTHREADFUNCTIONS:
	.byte	13,17
	.ascii	"TGThreadFunctions"
	.long	84,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF243
_RTTI_GLIB2_DEF243:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF244
_RTTI_GLIB2_DEF244:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF245
_RTTI_GLIB2_DEF245:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF246
_RTTI_GLIB2_DEF246:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF247
_RTTI_GLIB2_DEF247:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF248
_RTTI_GLIB2_DEF248:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF249
_RTTI_GLIB2_DEF249:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF250
_RTTI_GLIB2_DEF250:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF251
_RTTI_GLIB2_DEF251:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF252
_RTTI_GLIB2_DEF252:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF253
_RTTI_GLIB2_DEF253:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF254
_RTTI_GLIB2_DEF254:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF255
_RTTI_GLIB2_DEF255:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF256
_RTTI_GLIB2_DEF256:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF257
_RTTI_GLIB2_DEF257:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF258
_RTTI_GLIB2_DEF258:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF259
_RTTI_GLIB2_DEF259:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF260
_RTTI_GLIB2_DEF260:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF261
_RTTI_GLIB2_DEF261:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF262
_RTTI_GLIB2_DEF262:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF263
_RTTI_GLIB2_DEF263:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGTHREADFUNCTIONS
_RTTI_GLIB2_TGTHREADFUNCTIONS:
	.byte	13,17
	.ascii	"TGThreadFunctions"
	.long	84,21
	.long	_RTTI_GLIB2_DEF243
	.long	0
	.long	_RTTI_GLIB2_DEF244
	.long	4
	.long	_RTTI_GLIB2_DEF245
	.long	8
	.long	_RTTI_GLIB2_DEF246
	.long	12
	.long	_RTTI_GLIB2_DEF247
	.long	16
	.long	_RTTI_GLIB2_DEF248
	.long	20
	.long	_RTTI_GLIB2_DEF249
	.long	24
	.long	_RTTI_GLIB2_DEF250
	.long	28
	.long	_RTTI_GLIB2_DEF251
	.long	32
	.long	_RTTI_GLIB2_DEF252
	.long	36
	.long	_RTTI_GLIB2_DEF253
	.long	40
	.long	_RTTI_GLIB2_DEF254
	.long	44
	.long	_RTTI_GLIB2_DEF255
	.long	48
	.long	_RTTI_GLIB2_DEF256
	.long	52
	.long	_RTTI_GLIB2_DEF257
	.long	56
	.long	_RTTI_GLIB2_DEF258
	.long	60
	.long	_RTTI_GLIB2_DEF259
	.long	64
	.long	_RTTI_GLIB2_DEF260
	.long	68
	.long	_RTTI_GLIB2_DEF261
	.long	72
	.long	_RTTI_GLIB2_DEF262
	.long	76
	.long	_RTTI_GLIB2_DEF263
	.long	80

.const_data
	.align 2
.globl	_INIT_GLIB2_PGSTATICPRIVATE
_INIT_GLIB2_PGSTATICPRIVATE:
	.byte	0
	.ascii	"\017PGStaticPrivate"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGSTATICPRIVATE
_RTTI_GLIB2_PGSTATICPRIVATE:
	.byte	0
	.ascii	"\017PGStaticPrivate"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGSTATICPRIVATE
_INIT_GLIB2_TGSTATICPRIVATE:
	.byte	13,15
	.ascii	"TGStaticPrivate"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGSTATICPRIVATE
_RTTI_GLIB2_TGSTATICPRIVATE:
	.byte	13,15
	.ascii	"TGStaticPrivate"
	.long	4,1
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0

.const_data
	.align 2
.globl	_INIT_GLIB2_PGSTATICRECMUTEX
_INIT_GLIB2_PGSTATICRECMUTEX:
	.byte	0
	.ascii	"\020PGStaticRecMutex"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGSTATICRECMUTEX
_RTTI_GLIB2_PGSTATICRECMUTEX:
	.byte	0
	.ascii	"\020PGStaticRecMutex"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGSTATICRECMUTEX
_INIT_GLIB2_TGSTATICRECMUTEX:
	.byte	13,16
	.ascii	"TGStaticRecMutex"
	.long	28,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGSTATICRECMUTEX
_RTTI_GLIB2_TGSTATICRECMUTEX:
	.byte	13,16
	.ascii	"TGStaticRecMutex"
	.long	28,3
	.long	_RTTI_SYSTEM_POINTER
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4
	.long	_RTTI_GLIB2_TGSYSTEMTHREAD
	.long	8

.const_data
	.align 2
.globl	_INIT_GLIB2_PGSTATICRWLOCK
_INIT_GLIB2_PGSTATICRWLOCK:
	.byte	0
	.ascii	"\016PGStaticRWLock"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGSTATICRWLOCK
_RTTI_GLIB2_PGSTATICRWLOCK:
	.byte	0
	.ascii	"\016PGStaticRWLock"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGSTATICRWLOCK
_INIT_GLIB2_TGSTATICRWLOCK:
	.byte	13,14
	.ascii	"TGStaticRWLock"
	.long	28,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGSTATICRWLOCK
_RTTI_GLIB2_TGSTATICRWLOCK:
	.byte	13,14
	.ascii	"TGStaticRWLock"
	.long	28,7
	.long	_RTTI_SYSTEM_POINTER
	.long	0
	.long	_RTTI_SYSTEM_POINTER
	.long	4
	.long	_RTTI_SYSTEM_POINTER
	.long	8
	.long	_RTTI_SYSTEM_LONGWORD
	.long	12
	.long	_RTTI_SYSTEM_BOOLEAN32
	.long	16
	.long	_RTTI_SYSTEM_LONGWORD
	.long	20
	.long	_RTTI_SYSTEM_LONGWORD
	.long	24

.const_data
	.align 2
.globl	_INIT_GLIB2_PGTHREADPOOL
_INIT_GLIB2_PGTHREADPOOL:
	.byte	0
	.ascii	"\014PGThreadPool"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGTHREADPOOL
_RTTI_GLIB2_PGTHREADPOOL:
	.byte	0
	.ascii	"\014PGThreadPool"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGTHREADPOOL
_INIT_GLIB2_TGTHREADPOOL:
	.byte	13,12
	.ascii	"TGThreadPool"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGTHREADPOOL
_RTTI_GLIB2_TGTHREADPOOL:
	.byte	13,12
	.ascii	"TGThreadPool"
	.long	12,3
	.long	_RTTI_GLIB2_TGFUNC
	.long	0
	.long	_RTTI_SYSTEM_POINTER
	.long	4
	.long	_RTTI_SYSTEM_BOOLEAN32
	.long	8

.const_data
	.align 2
.globl	_INIT_GLIB2_PGSOURCEFUNC
_INIT_GLIB2_PGSOURCEFUNC:
	.byte	0
	.ascii	"\014PGSourceFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGSOURCEFUNC
_RTTI_GLIB2_PGSOURCEFUNC:
	.byte	0
	.ascii	"\014PGSourceFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGSOURCEFUNC
_INIT_GLIB2_TGSOURCEFUNC:
	.byte	23,12
	.ascii	"TGSourceFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGSOURCEFUNC
_RTTI_GLIB2_TGSOURCEFUNC:
	.byte	23,12
	.ascii	"TGSourceFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGSOURCECALLBACKFUNCS
_INIT_GLIB2_PGSOURCECALLBACKFUNCS:
	.byte	0
	.ascii	"\025PGSourceCallbackFuncs"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGSOURCECALLBACKFUNCS
_RTTI_GLIB2_PGSOURCECALLBACKFUNCS:
	.byte	0
	.ascii	"\025PGSourceCallbackFuncs"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGSOURCE
_INIT_GLIB2_PGSOURCE:
	.byte	0
	.ascii	"\010PGSource"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGSOURCE
_RTTI_GLIB2_PGSOURCE:
	.byte	0
	.ascii	"\010PGSource"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGSOURCEFUNCS
_INIT_GLIB2_PGSOURCEFUNCS:
	.byte	0
	.ascii	"\015PGSourceFuncs"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGSOURCEFUNCS
_RTTI_GLIB2_PGSOURCEFUNCS:
	.byte	0
	.ascii	"\015PGSourceFuncs"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGSOURCE
_INIT_GLIB2_TGSOURCE:
	.byte	13,8
	.ascii	"TGSource"
	.long	52,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGSOURCE
_RTTI_GLIB2_TGSOURCE:
	.byte	13,8
	.ascii	"TGSource"
	.long	52,13
	.long	_RTTI_SYSTEM_POINTER
	.long	0
	.long	_RTTI_GLIB2_PGSOURCECALLBACKFUNCS
	.long	4
	.long	_RTTI_GLIB2_PGSOURCEFUNCS
	.long	8
	.long	_RTTI_SYSTEM_LONGWORD
	.long	12
	.long	_RTTI_SYSTEM_POINTER
	.long	16
	.long	_RTTI_SYSTEM_LONGINT
	.long	20
	.long	_RTTI_SYSTEM_LONGWORD
	.long	24
	.long	_RTTI_SYSTEM_LONGWORD
	.long	28
	.long	_RTTI_GLIB2_PGSLIST
	.long	32
	.long	_RTTI_GLIB2_PGSOURCE
	.long	36
	.long	_RTTI_GLIB2_PGSOURCE
	.long	40
	.long	_RTTI_SYSTEM_POINTER
	.long	44
	.long	_RTTI_SYSTEM_POINTER
	.long	48

.const_data
	.align 2
.globl	_INIT_GLIB2_TGSOURCECALLBACKFUNCS
_INIT_GLIB2_TGSOURCECALLBACKFUNCS:
	.byte	13,21
	.ascii	"TGSourceCallbackFuncs"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF279
_RTTI_GLIB2_DEF279:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF280
_RTTI_GLIB2_DEF280:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF281
_RTTI_GLIB2_DEF281:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGSOURCECALLBACKFUNCS
_RTTI_GLIB2_TGSOURCECALLBACKFUNCS:
	.byte	13,21
	.ascii	"TGSourceCallbackFuncs"
	.long	12,3
	.long	_RTTI_GLIB2_DEF279
	.long	0
	.long	_RTTI_GLIB2_DEF280
	.long	4
	.long	_RTTI_GLIB2_DEF281
	.long	8

.const_data
	.align 2
.globl	_INIT_GLIB2_TGSOURCEDUMMYMARSHAL
_INIT_GLIB2_TGSOURCEDUMMYMARSHAL:
	.byte	23,20
	.ascii	"TGSourceDummyMarshal"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGSOURCEDUMMYMARSHAL
_RTTI_GLIB2_TGSOURCEDUMMYMARSHAL:
	.byte	23,20
	.ascii	"TGSourceDummyMarshal"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGSOURCEFUNCS
_INIT_GLIB2_TGSOURCEFUNCS:
	.byte	13,13
	.ascii	"TGSourceFuncs"
	.long	24,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF284
_RTTI_GLIB2_DEF284:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF285
_RTTI_GLIB2_DEF285:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF286
_RTTI_GLIB2_DEF286:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF287
_RTTI_GLIB2_DEF287:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGSOURCEFUNCS
_RTTI_GLIB2_TGSOURCEFUNCS:
	.byte	13,13
	.ascii	"TGSourceFuncs"
	.long	24,6
	.long	_RTTI_GLIB2_DEF284
	.long	0
	.long	_RTTI_GLIB2_DEF285
	.long	4
	.long	_RTTI_GLIB2_DEF286
	.long	8
	.long	_RTTI_GLIB2_DEF287
	.long	12
	.long	_RTTI_GLIB2_TGSOURCEFUNC
	.long	16
	.long	_RTTI_GLIB2_TGSOURCEDUMMYMARSHAL
	.long	20

.const_data
	.align 2
.globl	_INIT_GLIB2_PGPOLLFD
_INIT_GLIB2_PGPOLLFD:
	.byte	0
	.ascii	"\010PGPollFD"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGPOLLFD
_RTTI_GLIB2_PGPOLLFD:
	.byte	0
	.ascii	"\010PGPollFD"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGPOLLFD
_INIT_GLIB2_TGPOLLFD:
	.byte	13,8
	.ascii	"TGPollFD"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGPOLLFD
_RTTI_GLIB2_TGPOLLFD:
	.byte	13,8
	.ascii	"TGPollFD"
	.long	8,3
	.long	_RTTI_SYSTEM_LONGINT
	.long	0
	.long	_RTTI_SYSTEM_WORD
	.long	4
	.long	_RTTI_SYSTEM_WORD
	.long	6

.const_data
	.align 2
.globl	_INIT_GLIB2_TGPOLLFUNC
_INIT_GLIB2_TGPOLLFUNC:
	.byte	23,10
	.ascii	"TGPollFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGPOLLFUNC
_RTTI_GLIB2_TGPOLLFUNC:
	.byte	23,10
	.ascii	"TGPollFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGUNICHAR
_INIT_GLIB2_PGUNICHAR:
	.byte	0
	.ascii	"\011Pgunichar"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGUNICHAR
_RTTI_GLIB2_PGUNICHAR:
	.byte	0
	.ascii	"\011Pgunichar"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGUNICHAR2
_INIT_GLIB2_PGUNICHAR2:
	.byte	0
	.ascii	"\012Pgunichar2"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGUNICHAR2
_RTTI_GLIB2_PGUNICHAR2:
	.byte	0
	.ascii	"\012Pgunichar2"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGUNICODETYPE
_INIT_GLIB2_PGUNICODETYPE:
	.byte	0
	.ascii	"\015PGUnicodeType"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGUNICODETYPE
_RTTI_GLIB2_PGUNICODETYPE:
	.byte	0
	.ascii	"\015PGUnicodeType"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGUNICODETYPE
_INIT_GLIB2_TGUNICODETYPE:
	.byte	3,13
	.ascii	"TGUnicodeType"
	.byte	5
	.long	0,29,0
	.byte	17
	.ascii	"G_UNICODE_CONTROL"
	.byte	16
	.ascii	"G_UNICODE_FORMAT"
	.byte	20
	.ascii	"G_UNICODE_UNASSIGNED"
	.byte	21
	.ascii	"G_UNICODE_PRIVATE_USE"
	.byte	19
	.ascii	"G_UNICODE_SURROGATE"
	.byte	26
	.ascii	"G_UNICODE_LOWERCASE_LETTER"
	.byte	25
	.ascii	"G_UNICODE_MODIFIER_LETTER"
	.byte	22
	.ascii	"G_UNICODE_OTHER_LETTER"
	.byte	26
	.ascii	"G_UNICODE_TITLECASE_LETTER"
	.byte	26
	.ascii	"G_UNICODE_UPPERCASE_LETTER"
	.byte	24
	.ascii	"G_UNICODE_COMBINING_MARK"
	.byte	24
	.ascii	"G_UNICODE_ENCLOSING_MARK"
	.byte	26
	.ascii	"G_UNICODE_NON_SPACING_MARK"
	.byte	24
	.ascii	"G_UNICODE_DECIMAL_NUMBER"
	.byte	23
	.ascii	"G_UNICODE_LETTER_NUMBER"
	.byte	22
	.ascii	"G_UNICODE_OTHER_NUMBER"
	.byte	29
	.ascii	"G_UNICODE_CONNECT_PUNCTUATION"
	.byte	26
	.ascii	"G_UNICODE_DASH_PUNCTUATION"
	.byte	27
	.ascii	"G_UNICODE_CLOSE_PUNCTUATION"
	.byte	27
	.ascii	"G_UNICODE_FINAL_PUNCTUATION"
	.byte	29
	.ascii	"G_UNICODE_INITIAL_PUNCTUATION"
	.byte	27
	.ascii	"G_UNICODE_OTHER_PUNCTUATION"
	.byte	26
	.ascii	"G_UNICODE_OPEN_PUNCTUATION"
	.byte	25
	.ascii	"G_UNICODE_CURRENCY_SYMBOL"
	.byte	25
	.ascii	"G_UNICODE_MODIFIER_SYMBOL"
	.byte	21
	.ascii	"G_UNICODE_MATH_SYMBOL"
	.byte	22
	.ascii	"G_UNICODE_OTHER_SYMBOL"
	.byte	24
	.ascii	"G_UNICODE_LINE_SEPARATOR"
	.byte	29
	.ascii	"G_UNICODE_PARAGRAPH_SEPARATOR"
	.byte	25
	.ascii	"G_UNICODE_SPACE_SEPARATOR"
	.byte	5
	.ascii	"glib2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGUNICODETYPE
_RTTI_GLIB2_TGUNICODETYPE:
	.byte	3,13
	.ascii	"TGUnicodeType"
	.byte	5
	.long	0,29,0
	.byte	17
	.ascii	"G_UNICODE_CONTROL"
	.byte	16
	.ascii	"G_UNICODE_FORMAT"
	.byte	20
	.ascii	"G_UNICODE_UNASSIGNED"
	.byte	21
	.ascii	"G_UNICODE_PRIVATE_USE"
	.byte	19
	.ascii	"G_UNICODE_SURROGATE"
	.byte	26
	.ascii	"G_UNICODE_LOWERCASE_LETTER"
	.byte	25
	.ascii	"G_UNICODE_MODIFIER_LETTER"
	.byte	22
	.ascii	"G_UNICODE_OTHER_LETTER"
	.byte	26
	.ascii	"G_UNICODE_TITLECASE_LETTER"
	.byte	26
	.ascii	"G_UNICODE_UPPERCASE_LETTER"
	.byte	24
	.ascii	"G_UNICODE_COMBINING_MARK"
	.byte	24
	.ascii	"G_UNICODE_ENCLOSING_MARK"
	.byte	26
	.ascii	"G_UNICODE_NON_SPACING_MARK"
	.byte	24
	.ascii	"G_UNICODE_DECIMAL_NUMBER"
	.byte	23
	.ascii	"G_UNICODE_LETTER_NUMBER"
	.byte	22
	.ascii	"G_UNICODE_OTHER_NUMBER"
	.byte	29
	.ascii	"G_UNICODE_CONNECT_PUNCTUATION"
	.byte	26
	.ascii	"G_UNICODE_DASH_PUNCTUATION"
	.byte	27
	.ascii	"G_UNICODE_CLOSE_PUNCTUATION"
	.byte	27
	.ascii	"G_UNICODE_FINAL_PUNCTUATION"
	.byte	29
	.ascii	"G_UNICODE_INITIAL_PUNCTUATION"
	.byte	27
	.ascii	"G_UNICODE_OTHER_PUNCTUATION"
	.byte	26
	.ascii	"G_UNICODE_OPEN_PUNCTUATION"
	.byte	25
	.ascii	"G_UNICODE_CURRENCY_SYMBOL"
	.byte	25
	.ascii	"G_UNICODE_MODIFIER_SYMBOL"
	.byte	21
	.ascii	"G_UNICODE_MATH_SYMBOL"
	.byte	22
	.ascii	"G_UNICODE_OTHER_SYMBOL"
	.byte	24
	.ascii	"G_UNICODE_LINE_SEPARATOR"
	.byte	29
	.ascii	"G_UNICODE_PARAGRAPH_SEPARATOR"
	.byte	25
	.ascii	"G_UNICODE_SPACE_SEPARATOR"
	.byte	5
	.ascii	"glib2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGUNICODETYPE_s2o
_RTTI_GLIB2_TGUNICODETYPE_s2o:
	.long	30,18
	.long	_RTTI_GLIB2_TGUNICODETYPE+462
	.long	10
	.long	_RTTI_GLIB2_TGUNICODETYPE+256
	.long	16
	.long	_RTTI_GLIB2_TGUNICODETYPE+405
	.long	0
	.long	_RTTI_GLIB2_TGUNICODETYPE+28
	.long	23
	.long	_RTTI_GLIB2_TGUNICODETYPE+603
	.long	17
	.long	_RTTI_GLIB2_TGUNICODETYPE+435
	.long	13
	.long	_RTTI_GLIB2_TGUNICODETYPE+333
	.long	11
	.long	_RTTI_GLIB2_TGUNICODETYPE+281
	.long	19
	.long	_RTTI_GLIB2_TGUNICODETYPE+490
	.long	1
	.long	_RTTI_GLIB2_TGUNICODETYPE+46
	.long	20
	.long	_RTTI_GLIB2_TGUNICODETYPE+518
	.long	14
	.long	_RTTI_GLIB2_TGUNICODETYPE+358
	.long	27
	.long	_RTTI_GLIB2_TGUNICODETYPE+700
	.long	5
	.long	_RTTI_GLIB2_TGUNICODETYPE+126
	.long	25
	.long	_RTTI_GLIB2_TGUNICODETYPE+655
	.long	6
	.long	_RTTI_GLIB2_TGUNICODETYPE+153
	.long	24
	.long	_RTTI_GLIB2_TGUNICODETYPE+629
	.long	12
	.long	_RTTI_GLIB2_TGUNICODETYPE+306
	.long	22
	.long	_RTTI_GLIB2_TGUNICODETYPE+576
	.long	7
	.long	_RTTI_GLIB2_TGUNICODETYPE+179
	.long	15
	.long	_RTTI_GLIB2_TGUNICODETYPE+382
	.long	21
	.long	_RTTI_GLIB2_TGUNICODETYPE+548
	.long	26
	.long	_RTTI_GLIB2_TGUNICODETYPE+677
	.long	28
	.long	_RTTI_GLIB2_TGUNICODETYPE+725
	.long	3
	.long	_RTTI_GLIB2_TGUNICODETYPE+84
	.long	29
	.long	_RTTI_GLIB2_TGUNICODETYPE+755
	.long	4
	.long	_RTTI_GLIB2_TGUNICODETYPE+106
	.long	8
	.long	_RTTI_GLIB2_TGUNICODETYPE+202
	.long	2
	.long	_RTTI_GLIB2_TGUNICODETYPE+63
	.long	9
	.long	_RTTI_GLIB2_TGUNICODETYPE+229

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGUNICODETYPE_o2s
_RTTI_GLIB2_TGUNICODETYPE_o2s:
	.long	0
	.long	_RTTI_GLIB2_TGUNICODETYPE+28
	.long	_RTTI_GLIB2_TGUNICODETYPE+46
	.long	_RTTI_GLIB2_TGUNICODETYPE+63
	.long	_RTTI_GLIB2_TGUNICODETYPE+84
	.long	_RTTI_GLIB2_TGUNICODETYPE+106
	.long	_RTTI_GLIB2_TGUNICODETYPE+126
	.long	_RTTI_GLIB2_TGUNICODETYPE+153
	.long	_RTTI_GLIB2_TGUNICODETYPE+179
	.long	_RTTI_GLIB2_TGUNICODETYPE+202
	.long	_RTTI_GLIB2_TGUNICODETYPE+229
	.long	_RTTI_GLIB2_TGUNICODETYPE+256
	.long	_RTTI_GLIB2_TGUNICODETYPE+281
	.long	_RTTI_GLIB2_TGUNICODETYPE+306
	.long	_RTTI_GLIB2_TGUNICODETYPE+333
	.long	_RTTI_GLIB2_TGUNICODETYPE+358
	.long	_RTTI_GLIB2_TGUNICODETYPE+382
	.long	_RTTI_GLIB2_TGUNICODETYPE+405
	.long	_RTTI_GLIB2_TGUNICODETYPE+435
	.long	_RTTI_GLIB2_TGUNICODETYPE+462
	.long	_RTTI_GLIB2_TGUNICODETYPE+490
	.long	_RTTI_GLIB2_TGUNICODETYPE+518
	.long	_RTTI_GLIB2_TGUNICODETYPE+548
	.long	_RTTI_GLIB2_TGUNICODETYPE+576
	.long	_RTTI_GLIB2_TGUNICODETYPE+603
	.long	_RTTI_GLIB2_TGUNICODETYPE+629
	.long	_RTTI_GLIB2_TGUNICODETYPE+655
	.long	_RTTI_GLIB2_TGUNICODETYPE+677
	.long	_RTTI_GLIB2_TGUNICODETYPE+700
	.long	_RTTI_GLIB2_TGUNICODETYPE+725
	.long	_RTTI_GLIB2_TGUNICODETYPE+755

.const_data
	.align 2
.globl	_INIT_GLIB2_PGUNICODEBREAKTYPE
_INIT_GLIB2_PGUNICODEBREAKTYPE:
	.byte	0
	.ascii	"\022PGUnicodeBreakType"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGUNICODEBREAKTYPE
_RTTI_GLIB2_PGUNICODEBREAKTYPE:
	.byte	0
	.ascii	"\022PGUnicodeBreakType"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGUNICODEBREAKTYPE
_INIT_GLIB2_TGUNICODEBREAKTYPE:
	.byte	3,18
	.ascii	"TGUnicodeBreakType"
	.byte	5
	.long	0,28,0
	.byte	25
	.ascii	"G_UNICODE_BREAK_MANDATORY"
	.byte	31
	.ascii	"G_UNICODE_BREAK_CARRIAGE_RETURN"
	.byte	25
	.ascii	"G_UNICODE_BREAK_LINE_FEED"
	.byte	30
	.ascii	"G_UNICODE_BREAK_COMBINING_MARK"
	.byte	25
	.ascii	"G_UNICODE_BREAK_SURROGATE"
	.byte	32
	.ascii	"G_UNICODE_BREAK_ZERO_WIDTH_SPACE"
	.byte	27
	.ascii	"G_UNICODE_BREAK_INSEPARABLE"
	.byte	33
	.ascii	"G_UNICODE_BREAK_NON_BREAKING_GLUE"
	.byte	26
	.ascii	"G_UNICODE_BREAK_CONTINGENT"
	.byte	21
	.ascii	"G_UNICODE_BREAK_SPACE"
	.byte	21
	.ascii	"G_UNICODE_BREAK_AFTER"
	.byte	22
	.ascii	"G_UNICODE_BREAK_BEFORE"
	.byte	32
	.ascii	"G_UNICODE_BREAK_BEFORE_AND_AFTER"
	.byte	22
	.ascii	"G_UNICODE_BREAK_HYPHEN"
	.byte	27
	.ascii	"G_UNICODE_BREAK_NON_STARTER"
	.byte	32
	.ascii	"G_UNICODE_BREAK_OPEN_PUNCTUATION"
	.byte	33
	.ascii	"G_UNICODE_BREAK_CLOSE_PUNCTUATION"
	.byte	25
	.ascii	"G_UNICODE_BREAK_QUOTATION"
	.byte	27
	.ascii	"G_UNICODE_BREAK_EXCLAMATION"
	.byte	27
	.ascii	"G_UNICODE_BREAK_IDEOGRAPHIC"
	.byte	23
	.ascii	"G_UNICODE_BREAK_NUMERIC"
	.byte	31
	.ascii	"G_UNICODE_BREAK_INFIX_SEPARATOR"
	.byte	22
	.ascii	"G_UNICODE_BREAK_SYMBOL"
	.byte	26
	.ascii	"G_UNICODE_BREAK_ALPHABETIC"
	.byte	22
	.ascii	"G_UNICODE_BREAK_PREFIX"
	.byte	23
	.ascii	"G_UNICODE_BREAK_POSTFIX"
	.byte	31
	.ascii	"G_UNICODE_BREAK_COMPLEX_CONTEXT"
	.byte	25
	.ascii	"G_UNICODE_BREAK_AMBIGUOUS"
	.byte	23
	.ascii	"G_UNICODE_BREAK_UNKNOWN"
	.byte	5
	.ascii	"glib2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGUNICODEBREAKTYPE
_RTTI_GLIB2_TGUNICODEBREAKTYPE:
	.byte	3,18
	.ascii	"TGUnicodeBreakType"
	.byte	5
	.long	0,28,0
	.byte	25
	.ascii	"G_UNICODE_BREAK_MANDATORY"
	.byte	31
	.ascii	"G_UNICODE_BREAK_CARRIAGE_RETURN"
	.byte	25
	.ascii	"G_UNICODE_BREAK_LINE_FEED"
	.byte	30
	.ascii	"G_UNICODE_BREAK_COMBINING_MARK"
	.byte	25
	.ascii	"G_UNICODE_BREAK_SURROGATE"
	.byte	32
	.ascii	"G_UNICODE_BREAK_ZERO_WIDTH_SPACE"
	.byte	27
	.ascii	"G_UNICODE_BREAK_INSEPARABLE"
	.byte	33
	.ascii	"G_UNICODE_BREAK_NON_BREAKING_GLUE"
	.byte	26
	.ascii	"G_UNICODE_BREAK_CONTINGENT"
	.byte	21
	.ascii	"G_UNICODE_BREAK_SPACE"
	.byte	21
	.ascii	"G_UNICODE_BREAK_AFTER"
	.byte	22
	.ascii	"G_UNICODE_BREAK_BEFORE"
	.byte	32
	.ascii	"G_UNICODE_BREAK_BEFORE_AND_AFTER"
	.byte	22
	.ascii	"G_UNICODE_BREAK_HYPHEN"
	.byte	27
	.ascii	"G_UNICODE_BREAK_NON_STARTER"
	.byte	32
	.ascii	"G_UNICODE_BREAK_OPEN_PUNCTUATION"
	.byte	33
	.ascii	"G_UNICODE_BREAK_CLOSE_PUNCTUATION"
	.byte	25
	.ascii	"G_UNICODE_BREAK_QUOTATION"
	.byte	27
	.ascii	"G_UNICODE_BREAK_EXCLAMATION"
	.byte	27
	.ascii	"G_UNICODE_BREAK_IDEOGRAPHIC"
	.byte	23
	.ascii	"G_UNICODE_BREAK_NUMERIC"
	.byte	31
	.ascii	"G_UNICODE_BREAK_INFIX_SEPARATOR"
	.byte	22
	.ascii	"G_UNICODE_BREAK_SYMBOL"
	.byte	26
	.ascii	"G_UNICODE_BREAK_ALPHABETIC"
	.byte	22
	.ascii	"G_UNICODE_BREAK_PREFIX"
	.byte	23
	.ascii	"G_UNICODE_BREAK_POSTFIX"
	.byte	31
	.ascii	"G_UNICODE_BREAK_COMPLEX_CONTEXT"
	.byte	25
	.ascii	"G_UNICODE_BREAK_AMBIGUOUS"
	.byte	23
	.ascii	"G_UNICODE_BREAK_UNKNOWN"
	.byte	5
	.ascii	"glib2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGUNICODEBREAKTYPE_s2o
_RTTI_GLIB2_TGUNICODEBREAKTYPE_s2o:
	.long	29,10
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+318
	.long	23
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+675
	.long	27
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+781
	.long	11
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+340
	.long	12
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+363
	.long	1
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+59
	.long	16
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+480
	.long	3
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+117
	.long	26
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+749
	.long	8
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+269
	.long	18
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+540
	.long	13
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+396
	.long	19
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+568
	.long	21
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+620
	.long	6
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+207
	.long	2
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+91
	.long	0
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+33
	.long	7
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+235
	.long	14
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+419
	.long	20
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+596
	.long	15
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+447
	.long	25
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+725
	.long	24
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+702
	.long	17
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+514
	.long	9
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+296
	.long	4
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+148
	.long	22
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+652
	.long	28
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+807
	.long	5
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+174

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGUNICODEBREAKTYPE_o2s
_RTTI_GLIB2_TGUNICODEBREAKTYPE_o2s:
	.long	0
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+33
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+59
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+91
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+117
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+148
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+174
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+207
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+235
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+269
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+296
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+318
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+340
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+363
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+396
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+419
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+447
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+480
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+514
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+540
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+568
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+596
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+620
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+652
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+675
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+702
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+725
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+749
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+781
	.long	_RTTI_GLIB2_TGUNICODEBREAKTYPE+807

.const_data
	.align 2
.globl	_INIT_GLIB2_PGNORMALIZEMODE
_INIT_GLIB2_PGNORMALIZEMODE:
	.byte	0
	.ascii	"\017PGNormalizeMode"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGNORMALIZEMODE
_RTTI_GLIB2_PGNORMALIZEMODE:
	.byte	0
	.ascii	"\017PGNormalizeMode"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGSTRING
_INIT_GLIB2_PGSTRING:
	.byte	0
	.ascii	"\010PGString"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGSTRING
_RTTI_GLIB2_PGSTRING:
	.byte	0
	.ascii	"\010PGString"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGSTRING
_INIT_GLIB2_TGSTRING:
	.byte	13,8
	.ascii	"TGString"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGSTRING
_RTTI_GLIB2_TGSTRING:
	.byte	13,8
	.ascii	"TGString"
	.long	12,3
	.long	_RTTI_GLIB2_PGCHAR
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4
	.long	_RTTI_SYSTEM_LONGWORD
	.long	8

.const_data
	.align 2
.globl	_INIT_GLIB2_PGIOERROR
_INIT_GLIB2_PGIOERROR:
	.byte	0
	.ascii	"\011PGIOError"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGIOERROR
_RTTI_GLIB2_PGIOERROR:
	.byte	0
	.ascii	"\011PGIOError"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGIOERROR
_INIT_GLIB2_TGIOERROR:
	.byte	3,9
	.ascii	"TGIOError"
	.byte	5
	.long	0,3,0
	.byte	15
	.ascii	"G_IO_ERROR_NONE"
	.byte	16
	.ascii	"G_IO_ERROR_AGAIN"
	.byte	16
	.ascii	"G_IO_ERROR_INVAL"
	.byte	18
	.ascii	"G_IO_ERROR_UNKNOWN"
	.byte	5
	.ascii	"glib2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGIOERROR
_RTTI_GLIB2_TGIOERROR:
	.byte	3,9
	.ascii	"TGIOError"
	.byte	5
	.long	0,3,0
	.byte	15
	.ascii	"G_IO_ERROR_NONE"
	.byte	16
	.ascii	"G_IO_ERROR_AGAIN"
	.byte	16
	.ascii	"G_IO_ERROR_INVAL"
	.byte	18
	.ascii	"G_IO_ERROR_UNKNOWN"
	.byte	5
	.ascii	"glib2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGIOERROR_s2o
_RTTI_GLIB2_TGIOERROR_s2o:
	.long	4,1
	.long	_RTTI_GLIB2_TGIOERROR+40
	.long	2
	.long	_RTTI_GLIB2_TGIOERROR+57
	.long	0
	.long	_RTTI_GLIB2_TGIOERROR+24
	.long	3
	.long	_RTTI_GLIB2_TGIOERROR+74

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGIOERROR_o2s
_RTTI_GLIB2_TGIOERROR_o2s:
	.long	0
	.long	_RTTI_GLIB2_TGIOERROR+24
	.long	_RTTI_GLIB2_TGIOERROR+40
	.long	_RTTI_GLIB2_TGIOERROR+57
	.long	_RTTI_GLIB2_TGIOERROR+74

.const_data
	.align 2
.globl	_INIT_GLIB2_PGIOCHANNELERROR
_INIT_GLIB2_PGIOCHANNELERROR:
	.byte	0
	.ascii	"\020PGIOChannelError"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGIOCHANNELERROR
_RTTI_GLIB2_PGIOCHANNELERROR:
	.byte	0
	.ascii	"\020PGIOChannelError"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGIOCHANNELERROR
_INIT_GLIB2_TGIOCHANNELERROR:
	.byte	3,16
	.ascii	"TGIOChannelError"
	.byte	5
	.long	0,8,0
	.byte	23
	.ascii	"G_IO_CHANNEL_ERROR_FBIG"
	.byte	24
	.ascii	"G_IO_CHANNEL_ERROR_INVAL"
	.byte	21
	.ascii	"G_IO_CHANNEL_ERROR_IO"
	.byte	24
	.ascii	"G_IO_CHANNEL_ERROR_ISDIR"
	.byte	24
	.ascii	"G_IO_CHANNEL_ERROR_NOSPC"
	.byte	23
	.ascii	"G_IO_CHANNEL_ERROR_NXIO"
	.byte	27
	.ascii	"G_IO_CHANNEL_ERROR_OVERFLOW"
	.byte	23
	.ascii	"G_IO_CHANNEL_ERROR_PIPE"
	.byte	25
	.ascii	"G_IO_CHANNEL_ERROR_FAILED"
	.byte	5
	.ascii	"glib2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGIOCHANNELERROR
_RTTI_GLIB2_TGIOCHANNELERROR:
	.byte	3,16
	.ascii	"TGIOChannelError"
	.byte	5
	.long	0,8,0
	.byte	23
	.ascii	"G_IO_CHANNEL_ERROR_FBIG"
	.byte	24
	.ascii	"G_IO_CHANNEL_ERROR_INVAL"
	.byte	21
	.ascii	"G_IO_CHANNEL_ERROR_IO"
	.byte	24
	.ascii	"G_IO_CHANNEL_ERROR_ISDIR"
	.byte	24
	.ascii	"G_IO_CHANNEL_ERROR_NOSPC"
	.byte	23
	.ascii	"G_IO_CHANNEL_ERROR_NXIO"
	.byte	27
	.ascii	"G_IO_CHANNEL_ERROR_OVERFLOW"
	.byte	23
	.ascii	"G_IO_CHANNEL_ERROR_PIPE"
	.byte	25
	.ascii	"G_IO_CHANNEL_ERROR_FAILED"
	.byte	5
	.ascii	"glib2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGIOCHANNELERROR_s2o
_RTTI_GLIB2_TGIOCHANNELERROR_s2o:
	.long	9,8
	.long	_RTTI_GLIB2_TGIOCHANNELERROR+228
	.long	0
	.long	_RTTI_GLIB2_TGIOCHANNELERROR+31
	.long	1
	.long	_RTTI_GLIB2_TGIOCHANNELERROR+55
	.long	2
	.long	_RTTI_GLIB2_TGIOCHANNELERROR+80
	.long	3
	.long	_RTTI_GLIB2_TGIOCHANNELERROR+102
	.long	4
	.long	_RTTI_GLIB2_TGIOCHANNELERROR+127
	.long	5
	.long	_RTTI_GLIB2_TGIOCHANNELERROR+152
	.long	6
	.long	_RTTI_GLIB2_TGIOCHANNELERROR+176
	.long	7
	.long	_RTTI_GLIB2_TGIOCHANNELERROR+204

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGIOCHANNELERROR_o2s
_RTTI_GLIB2_TGIOCHANNELERROR_o2s:
	.long	0
	.long	_RTTI_GLIB2_TGIOCHANNELERROR+31
	.long	_RTTI_GLIB2_TGIOCHANNELERROR+55
	.long	_RTTI_GLIB2_TGIOCHANNELERROR+80
	.long	_RTTI_GLIB2_TGIOCHANNELERROR+102
	.long	_RTTI_GLIB2_TGIOCHANNELERROR+127
	.long	_RTTI_GLIB2_TGIOCHANNELERROR+152
	.long	_RTTI_GLIB2_TGIOCHANNELERROR+176
	.long	_RTTI_GLIB2_TGIOCHANNELERROR+204
	.long	_RTTI_GLIB2_TGIOCHANNELERROR+228

.const_data
	.align 2
.globl	_INIT_GLIB2_PGIOSTATUS
_INIT_GLIB2_PGIOSTATUS:
	.byte	0
	.ascii	"\012PGIOStatus"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGIOSTATUS
_RTTI_GLIB2_PGIOSTATUS:
	.byte	0
	.ascii	"\012PGIOStatus"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGIOSTATUS
_INIT_GLIB2_TGIOSTATUS:
	.byte	3,10
	.ascii	"TGIOStatus"
	.byte	5
	.long	0,3,0
	.byte	17
	.ascii	"G_IO_STATUS_ERROR"
	.byte	18
	.ascii	"G_IO_STATUS_NORMAL"
	.byte	15
	.ascii	"G_IO_STATUS_EOF"
	.byte	17
	.ascii	"G_IO_STATUS_AGAIN"
	.byte	5
	.ascii	"glib2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGIOSTATUS
_RTTI_GLIB2_TGIOSTATUS:
	.byte	3,10
	.ascii	"TGIOStatus"
	.byte	5
	.long	0,3,0
	.byte	17
	.ascii	"G_IO_STATUS_ERROR"
	.byte	18
	.ascii	"G_IO_STATUS_NORMAL"
	.byte	15
	.ascii	"G_IO_STATUS_EOF"
	.byte	17
	.ascii	"G_IO_STATUS_AGAIN"
	.byte	5
	.ascii	"glib2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGIOSTATUS_s2o
_RTTI_GLIB2_TGIOSTATUS_s2o:
	.long	4,3
	.long	_RTTI_GLIB2_TGIOSTATUS+78
	.long	2
	.long	_RTTI_GLIB2_TGIOSTATUS+62
	.long	0
	.long	_RTTI_GLIB2_TGIOSTATUS+25
	.long	1
	.long	_RTTI_GLIB2_TGIOSTATUS+43

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGIOSTATUS_o2s
_RTTI_GLIB2_TGIOSTATUS_o2s:
	.long	0
	.long	_RTTI_GLIB2_TGIOSTATUS+25
	.long	_RTTI_GLIB2_TGIOSTATUS+43
	.long	_RTTI_GLIB2_TGIOSTATUS+62
	.long	_RTTI_GLIB2_TGIOSTATUS+78

.const_data
	.align 2
.globl	_INIT_GLIB2_PGSEEKTYPE
_INIT_GLIB2_PGSEEKTYPE:
	.byte	0
	.ascii	"\012PGSeekType"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGSEEKTYPE
_RTTI_GLIB2_PGSEEKTYPE:
	.byte	0
	.ascii	"\012PGSeekType"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGSEEKTYPE
_INIT_GLIB2_TGSEEKTYPE:
	.byte	3,10
	.ascii	"TGSeekType"
	.byte	5
	.long	0,2,0
	.byte	10
	.ascii	"G_SEEK_CUR"
	.byte	10
	.ascii	"G_SEEK_SET"
	.byte	10
	.ascii	"G_SEEK_END"
	.byte	5
	.ascii	"glib2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGSEEKTYPE
_RTTI_GLIB2_TGSEEKTYPE:
	.byte	3,10
	.ascii	"TGSeekType"
	.byte	5
	.long	0,2,0
	.byte	10
	.ascii	"G_SEEK_CUR"
	.byte	10
	.ascii	"G_SEEK_SET"
	.byte	10
	.ascii	"G_SEEK_END"
	.byte	5
	.ascii	"glib2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGSEEKTYPE_s2o
_RTTI_GLIB2_TGSEEKTYPE_s2o:
	.long	3,0
	.long	_RTTI_GLIB2_TGSEEKTYPE+25
	.long	2
	.long	_RTTI_GLIB2_TGSEEKTYPE+47
	.long	1
	.long	_RTTI_GLIB2_TGSEEKTYPE+36

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGSEEKTYPE_o2s
_RTTI_GLIB2_TGSEEKTYPE_o2s:
	.long	0
	.long	_RTTI_GLIB2_TGSEEKTYPE+25
	.long	_RTTI_GLIB2_TGSEEKTYPE+36
	.long	_RTTI_GLIB2_TGSEEKTYPE+47

.const_data
	.align 2
.globl	_INIT_GLIB2_PGIOCONDITION
_INIT_GLIB2_PGIOCONDITION:
	.byte	0
	.ascii	"\015PGIOCondition"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGIOCONDITION
_RTTI_GLIB2_PGIOCONDITION:
	.byte	0
	.ascii	"\015PGIOCondition"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGIOFLAGS
_INIT_GLIB2_PGIOFLAGS:
	.byte	0
	.ascii	"\011PGIOFlags"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGIOFLAGS
_RTTI_GLIB2_PGIOFLAGS:
	.byte	0
	.ascii	"\011PGIOFlags"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGIOCHANNEL
_INIT_GLIB2_PGIOCHANNEL:
	.byte	0
	.ascii	"\013PGIOChannel"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGIOCHANNEL
_RTTI_GLIB2_PGIOCHANNEL:
	.byte	0
	.ascii	"\013PGIOChannel"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGIOFUNC
_INIT_GLIB2_TGIOFUNC:
	.byte	23,8
	.ascii	"TGIOFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGIOFUNC
_RTTI_GLIB2_TGIOFUNC:
	.byte	23,8
	.ascii	"TGIOFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGIOFUNCS
_INIT_GLIB2_PGIOFUNCS:
	.byte	0
	.ascii	"\011PGIOFuncs"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGIOFUNCS
_RTTI_GLIB2_PGIOFUNCS:
	.byte	0
	.ascii	"\011PGIOFuncs"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGIOFUNCS
_INIT_GLIB2_TGIOFUNCS:
	.byte	13,9
	.ascii	"TGIOFuncs"
	.long	32,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF314
_RTTI_GLIB2_DEF314:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF315
_RTTI_GLIB2_DEF315:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF316
_RTTI_GLIB2_DEF316:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF317
_RTTI_GLIB2_DEF317:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF318
_RTTI_GLIB2_DEF318:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF319
_RTTI_GLIB2_DEF319:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF320
_RTTI_GLIB2_DEF320:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF321
_RTTI_GLIB2_DEF321:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGIOFUNCS
_RTTI_GLIB2_TGIOFUNCS:
	.byte	13,9
	.ascii	"TGIOFuncs"
	.long	32,8
	.long	_RTTI_GLIB2_DEF314
	.long	0
	.long	_RTTI_GLIB2_DEF315
	.long	4
	.long	_RTTI_GLIB2_DEF316
	.long	8
	.long	_RTTI_GLIB2_DEF317
	.long	12
	.long	_RTTI_GLIB2_DEF318
	.long	16
	.long	_RTTI_GLIB2_DEF319
	.long	20
	.long	_RTTI_GLIB2_DEF320
	.long	24
	.long	_RTTI_GLIB2_DEF321
	.long	28

.const_data
	.align 2
.globl	_INIT_GLIB2_TGIOCHANNEL
_INIT_GLIB2_TGIOCHANNEL:
	.byte	13,11
	.ascii	"TGIOChannel"
	.long	60,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF323
_RTTI_GLIB2_DEF323:
	.byte	12
	.ascii	"\000"
	.long	1,6
	.long	_RTTI_SYSTEM_CHAR
	.long	-1

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGIOCHANNEL
_RTTI_GLIB2_TGIOCHANNEL:
	.byte	13,11
	.ascii	"TGIOChannel"
	.long	60,15
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_GLIB2_PGIOFUNCS
	.long	4
	.long	_RTTI_GLIB2_PGCHAR
	.long	8
	.long	_RTTI_SYSTEM_POINTER
	.long	12
	.long	_RTTI_SYSTEM_POINTER
	.long	16
	.long	_RTTI_GLIB2_PGCHAR
	.long	20
	.long	_RTTI_SYSTEM_LONGWORD
	.long	24
	.long	_RTTI_SYSTEM_LONGWORD
	.long	28
	.long	_RTTI_GLIB2_PGSTRING
	.long	32
	.long	_RTTI_GLIB2_PGSTRING
	.long	36
	.long	_RTTI_GLIB2_PGSTRING
	.long	40
	.long	_RTTI_GLIB2_DEF323
	.long	44
	.long	_RTTI_SYSTEM_WORD
	.long	50
	.long	_RTTI_SYSTEM_POINTER
	.long	52
	.long	_RTTI_SYSTEM_POINTER
	.long	56

.const_data
	.align 2
.globl	_INIT_GLIB2_PGLOGLEVELFLAGS
_INIT_GLIB2_PGLOGLEVELFLAGS:
	.byte	0
	.ascii	"\017PGLogLevelFlags"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGLOGLEVELFLAGS
_RTTI_GLIB2_PGLOGLEVELFLAGS:
	.byte	0
	.ascii	"\017PGLogLevelFlags"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGLOGFUNC
_INIT_GLIB2_TGLOGFUNC:
	.byte	23,9
	.ascii	"TGLogFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGLOGFUNC
_RTTI_GLIB2_TGLOGFUNC:
	.byte	23,9
	.ascii	"TGLogFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGPRINTFUNC
_INIT_GLIB2_TGPRINTFUNC:
	.byte	23,11
	.ascii	"TGPrintFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGPRINTFUNC
_RTTI_GLIB2_TGPRINTFUNC:
	.byte	23,11
	.ascii	"TGPrintFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGMARKUPERROR
_INIT_GLIB2_PGMARKUPERROR:
	.byte	0
	.ascii	"\015PGMarkupError"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGMARKUPERROR
_RTTI_GLIB2_PGMARKUPERROR:
	.byte	0
	.ascii	"\015PGMarkupError"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGMARKUPERROR
_INIT_GLIB2_TGMARKUPERROR:
	.byte	3,13
	.ascii	"TGMarkupError"
	.byte	5
	.long	0,5,0
	.byte	23
	.ascii	"G_MARKUP_ERROR_BAD_UTF8"
	.byte	20
	.ascii	"G_MARKUP_ERROR_EMPTY"
	.byte	20
	.ascii	"G_MARKUP_ERROR_PARSE"
	.byte	30
	.ascii	"G_MARKUP_ERROR_UNKNOWN_ELEMENT"
	.byte	32
	.ascii	"G_MARKUP_ERROR_UNKNOWN_ATTRIBUTE"
	.byte	30
	.ascii	"G_MARKUP_ERROR_INVALID_CONTENT"
	.byte	5
	.ascii	"glib2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGMARKUPERROR
_RTTI_GLIB2_TGMARKUPERROR:
	.byte	3,13
	.ascii	"TGMarkupError"
	.byte	5
	.long	0,5,0
	.byte	23
	.ascii	"G_MARKUP_ERROR_BAD_UTF8"
	.byte	20
	.ascii	"G_MARKUP_ERROR_EMPTY"
	.byte	20
	.ascii	"G_MARKUP_ERROR_PARSE"
	.byte	30
	.ascii	"G_MARKUP_ERROR_UNKNOWN_ELEMENT"
	.byte	32
	.ascii	"G_MARKUP_ERROR_UNKNOWN_ATTRIBUTE"
	.byte	30
	.ascii	"G_MARKUP_ERROR_INVALID_CONTENT"
	.byte	5
	.ascii	"glib2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGMARKUPERROR_s2o
_RTTI_GLIB2_TGMARKUPERROR_s2o:
	.long	6,0
	.long	_RTTI_GLIB2_TGMARKUPERROR+28
	.long	1
	.long	_RTTI_GLIB2_TGMARKUPERROR+52
	.long	5
	.long	_RTTI_GLIB2_TGMARKUPERROR+158
	.long	2
	.long	_RTTI_GLIB2_TGMARKUPERROR+73
	.long	4
	.long	_RTTI_GLIB2_TGMARKUPERROR+125
	.long	3
	.long	_RTTI_GLIB2_TGMARKUPERROR+94

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGMARKUPERROR_o2s
_RTTI_GLIB2_TGMARKUPERROR_o2s:
	.long	0
	.long	_RTTI_GLIB2_TGMARKUPERROR+28
	.long	_RTTI_GLIB2_TGMARKUPERROR+52
	.long	_RTTI_GLIB2_TGMARKUPERROR+73
	.long	_RTTI_GLIB2_TGMARKUPERROR+94
	.long	_RTTI_GLIB2_TGMARKUPERROR+125
	.long	_RTTI_GLIB2_TGMARKUPERROR+158

.const_data
	.align 2
.globl	_INIT_GLIB2_PGMARKUPPARSEFLAGS
_INIT_GLIB2_PGMARKUPPARSEFLAGS:
	.byte	0
	.ascii	"\022PGMarkupParseFlags"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGMARKUPPARSEFLAGS
_RTTI_GLIB2_PGMARKUPPARSEFLAGS:
	.byte	0
	.ascii	"\022PGMarkupParseFlags"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGMARKUPPARSECONTEXT
_INIT_GLIB2_PGMARKUPPARSECONTEXT:
	.byte	0
	.ascii	"\024PGMarkupParseContext"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGMARKUPPARSECONTEXT
_RTTI_GLIB2_PGMARKUPPARSECONTEXT:
	.byte	0
	.ascii	"\024PGMarkupParseContext"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGMARKUPPARSER
_INIT_GLIB2_PGMARKUPPARSER:
	.byte	0
	.ascii	"\016PGMarkupParser"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGMARKUPPARSER
_RTTI_GLIB2_PGMARKUPPARSER:
	.byte	0
	.ascii	"\016PGMarkupParser"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGMARKUPPARSER
_INIT_GLIB2_TGMARKUPPARSER:
	.byte	13,14
	.ascii	"TGMarkupParser"
	.long	20,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF333
_RTTI_GLIB2_DEF333:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF334
_RTTI_GLIB2_DEF334:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF335
_RTTI_GLIB2_DEF335:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF336
_RTTI_GLIB2_DEF336:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_DEF337
_RTTI_GLIB2_DEF337:
	.byte	23
	.ascii	"\000"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGMARKUPPARSER
_RTTI_GLIB2_TGMARKUPPARSER:
	.byte	13,14
	.ascii	"TGMarkupParser"
	.long	20,5
	.long	_RTTI_GLIB2_DEF333
	.long	0
	.long	_RTTI_GLIB2_DEF334
	.long	4
	.long	_RTTI_GLIB2_DEF335
	.long	8
	.long	_RTTI_GLIB2_DEF336
	.long	12
	.long	_RTTI_GLIB2_DEF337
	.long	16

.const_data
	.align 2
.globl	_INIT_GLIB2_PGNODE
_INIT_GLIB2_PGNODE:
	.byte	0
	.ascii	"\006PGNode"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGNODE
_RTTI_GLIB2_PGNODE:
	.byte	0
	.ascii	"\006PGNode"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGNODE
_INIT_GLIB2_TGNODE:
	.byte	13,6
	.ascii	"TGNode"
	.long	20,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGNODE
_RTTI_GLIB2_TGNODE:
	.byte	13,6
	.ascii	"TGNode"
	.long	20,5
	.long	_RTTI_SYSTEM_POINTER
	.long	0
	.long	_RTTI_GLIB2_PGNODE
	.long	4
	.long	_RTTI_GLIB2_PGNODE
	.long	8
	.long	_RTTI_GLIB2_PGNODE
	.long	12
	.long	_RTTI_GLIB2_PGNODE
	.long	16

.const_data
	.align 2
.globl	_INIT_GLIB2_PGTRAVERSEFLAGS
_INIT_GLIB2_PGTRAVERSEFLAGS:
	.byte	0
	.ascii	"\017PGTraverseFlags"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGTRAVERSEFLAGS
_RTTI_GLIB2_PGTRAVERSEFLAGS:
	.byte	0
	.ascii	"\017PGTraverseFlags"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGTRAVERSETYPE
_INIT_GLIB2_PGTRAVERSETYPE:
	.byte	0
	.ascii	"\016PGTraverseType"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGTRAVERSETYPE
_RTTI_GLIB2_PGTRAVERSETYPE:
	.byte	0
	.ascii	"\016PGTraverseType"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGTRAVERSETYPE
_INIT_GLIB2_TGTRAVERSETYPE:
	.byte	3,14
	.ascii	"TGTraverseType"
	.byte	5
	.long	0,3,0
	.byte	10
	.ascii	"G_IN_ORDER"
	.byte	11
	.ascii	"G_PRE_ORDER"
	.byte	12
	.ascii	"G_POST_ORDER"
	.byte	13
	.ascii	"G_LEVEL_ORDER"
	.byte	5
	.ascii	"glib2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGTRAVERSETYPE
_RTTI_GLIB2_TGTRAVERSETYPE:
	.byte	3,14
	.ascii	"TGTraverseType"
	.byte	5
	.long	0,3,0
	.byte	10
	.ascii	"G_IN_ORDER"
	.byte	11
	.ascii	"G_PRE_ORDER"
	.byte	12
	.ascii	"G_POST_ORDER"
	.byte	13
	.ascii	"G_LEVEL_ORDER"
	.byte	5
	.ascii	"glib2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGTRAVERSETYPE_s2o
_RTTI_GLIB2_TGTRAVERSETYPE_s2o:
	.long	4,0
	.long	_RTTI_GLIB2_TGTRAVERSETYPE+29
	.long	3
	.long	_RTTI_GLIB2_TGTRAVERSETYPE+65
	.long	2
	.long	_RTTI_GLIB2_TGTRAVERSETYPE+52
	.long	1
	.long	_RTTI_GLIB2_TGTRAVERSETYPE+40

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGTRAVERSETYPE_o2s
_RTTI_GLIB2_TGTRAVERSETYPE_o2s:
	.long	0
	.long	_RTTI_GLIB2_TGTRAVERSETYPE+29
	.long	_RTTI_GLIB2_TGTRAVERSETYPE+40
	.long	_RTTI_GLIB2_TGTRAVERSETYPE+52
	.long	_RTTI_GLIB2_TGTRAVERSETYPE+65

.const_data
	.align 2
.globl	_INIT_GLIB2_TGNODETRAVERSEFUNC
_INIT_GLIB2_TGNODETRAVERSEFUNC:
	.byte	23,18
	.ascii	"TGNodeTraverseFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGNODETRAVERSEFUNC
_RTTI_GLIB2_TGNODETRAVERSEFUNC:
	.byte	23,18
	.ascii	"TGNodeTraverseFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGNODEFOREACHFUNC
_INIT_GLIB2_TGNODEFOREACHFUNC:
	.byte	23,17
	.ascii	"TGNodeForeachFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGNODEFOREACHFUNC
_RTTI_GLIB2_TGNODEFOREACHFUNC:
	.byte	23,17
	.ascii	"TGNodeForeachFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGTRAVERSEFUNC
_INIT_GLIB2_TGTRAVERSEFUNC:
	.byte	23,14
	.ascii	"TGTraverseFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGTRAVERSEFUNC
_RTTI_GLIB2_TGTRAVERSEFUNC:
	.byte	23,14
	.ascii	"TGTraverseFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGQUEUE
_INIT_GLIB2_PGQUEUE:
	.byte	0
	.ascii	"\007PGQueue"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGQUEUE
_RTTI_GLIB2_PGQUEUE:
	.byte	0
	.ascii	"\007PGQueue"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGQUEUE
_INIT_GLIB2_TGQUEUE:
	.byte	13,7
	.ascii	"TGQueue"
	.long	12,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGQUEUE
_RTTI_GLIB2_TGQUEUE:
	.byte	13,7
	.ascii	"TGQueue"
	.long	12,3
	.long	_RTTI_GLIB2_PGLIST
	.long	0
	.long	_RTTI_GLIB2_PGLIST
	.long	4
	.long	_RTTI_SYSTEM_LONGWORD
	.long	8

.const_data
	.align 2
.globl	_INIT_GLIB2_PGTUPLES
_INIT_GLIB2_PGTUPLES:
	.byte	0
	.ascii	"\010PGTuples"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGTUPLES
_RTTI_GLIB2_PGTUPLES:
	.byte	0
	.ascii	"\010PGTuples"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGTUPLES
_INIT_GLIB2_TGTUPLES:
	.byte	13,8
	.ascii	"TGTuples"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGTUPLES
_RTTI_GLIB2_TGTUPLES:
	.byte	13,8
	.ascii	"TGTuples"
	.long	4,1
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0

.const_data
	.align 2
.globl	_INIT_GLIB2_PGTOKENTYPE
_INIT_GLIB2_PGTOKENTYPE:
	.byte	0
	.ascii	"\013PGTokenType"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGTOKENTYPE
_RTTI_GLIB2_PGTOKENTYPE:
	.byte	0
	.ascii	"\013PGTokenType"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGSCANNER
_INIT_GLIB2_PGSCANNER:
	.byte	0
	.ascii	"\011PGScanner"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGSCANNER
_RTTI_GLIB2_PGSCANNER:
	.byte	0
	.ascii	"\011PGScanner"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGSCANNERCONFIG
_INIT_GLIB2_PGSCANNERCONFIG:
	.byte	0
	.ascii	"\017PGScannerConfig"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGSCANNERCONFIG
_RTTI_GLIB2_PGSCANNERCONFIG:
	.byte	0
	.ascii	"\017PGScannerConfig"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGTOKENVALUE
_INIT_GLIB2_PGTOKENVALUE:
	.byte	0
	.ascii	"\014PGTokenValue"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGTOKENVALUE
_RTTI_GLIB2_PGTOKENVALUE:
	.byte	0
	.ascii	"\014PGTokenValue"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGTOKENVALUE
_INIT_GLIB2_TGTOKENVALUE:
	.byte	13,12
	.ascii	"TGTokenValue"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGTOKENVALUE
_RTTI_GLIB2_TGTOKENVALUE:
	.byte	13,12
	.ascii	"TGTokenValue"
	.long	8,11
	.long	_RTTI_SYSTEM_POINTER
	.long	0
	.long	_RTTI_GLIB2_PGCHAR
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_SYSTEM_DOUBLE
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0
	.long	_RTTI_GLIB2_PGCHAR
	.long	0
	.long	_RTTI_GLIB2_PGCHAR
	.long	0
	.long	_RTTI_SYSTEM_BYTE
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	0

.const_data
	.align 2
.globl	_INIT_GLIB2_TGSCANNERMSGFUNC
_INIT_GLIB2_TGSCANNERMSGFUNC:
	.byte	23,16
	.ascii	"TGScannerMsgFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGSCANNERMSGFUNC
_RTTI_GLIB2_TGSCANNERMSGFUNC:
	.byte	23,16
	.ascii	"TGScannerMsgFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGSCANNER
_INIT_GLIB2_TGSCANNER:
	.byte	13,9
	.ascii	"TGScanner"
	.long	92,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGSCANNER
_RTTI_GLIB2_TGSCANNER:
	.byte	13,9
	.ascii	"TGScanner"
	.long	92,21
	.long	_RTTI_SYSTEM_POINTER
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4
	.long	_RTTI_SYSTEM_LONGWORD
	.long	8
	.long	_RTTI_GLIB2_PGCHAR
	.long	12
	.long	_RTTI_SYSTEM_POINTER
	.long	16
	.long	_RTTI_GLIB2_PGSCANNERCONFIG
	.long	20
	.long	_RTTI_SYSTEM_LONGINT
	.long	24
	.long	_RTTI_GLIB2_TGTOKENVALUE
	.long	28
	.long	_RTTI_SYSTEM_LONGWORD
	.long	36
	.long	_RTTI_SYSTEM_LONGWORD
	.long	40
	.long	_RTTI_SYSTEM_LONGINT
	.long	44
	.long	_RTTI_GLIB2_TGTOKENVALUE
	.long	48
	.long	_RTTI_SYSTEM_LONGWORD
	.long	56
	.long	_RTTI_SYSTEM_LONGWORD
	.long	60
	.long	_RTTI_SYSTEM_POINTER
	.long	64
	.long	_RTTI_SYSTEM_LONGINT
	.long	68
	.long	_RTTI_GLIB2_PGCHAR
	.long	72
	.long	_RTTI_GLIB2_PGCHAR
	.long	76
	.long	_RTTI_GLIB2_PGCHAR
	.long	80
	.long	_RTTI_SYSTEM_LONGWORD
	.long	84
	.long	_RTTI_GLIB2_TGSCANNERMSGFUNC
	.long	88

.const_data
	.align 2
.globl	_INIT_GLIB2_TGSCANNERCONFIG
_INIT_GLIB2_TGSCANNERCONFIG:
	.byte	13,15
	.ascii	"TGScannerConfig"
	.long	24,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGSCANNERCONFIG
_RTTI_GLIB2_TGSCANNERCONFIG:
	.byte	13,15
	.ascii	"TGScannerConfig"
	.long	24,6
	.long	_RTTI_GLIB2_PGCHAR
	.long	0
	.long	_RTTI_GLIB2_PGCHAR
	.long	4
	.long	_RTTI_GLIB2_PGCHAR
	.long	8
	.long	_RTTI_GLIB2_PGCHAR
	.long	12
	.long	_RTTI_SYSTEM_LONGINT
	.long	16
	.long	_RTTI_SYSTEM_LONGWORD
	.long	20

.const_data
	.align 2
.globl	_INIT_GLIB2_PGSHELLERROR
_INIT_GLIB2_PGSHELLERROR:
	.byte	0
	.ascii	"\014PGShellError"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGSHELLERROR
_RTTI_GLIB2_PGSHELLERROR:
	.byte	0
	.ascii	"\014PGShellError"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGSHELLERROR
_INIT_GLIB2_TGSHELLERROR:
	.byte	3,12
	.ascii	"TGShellError"
	.byte	5
	.long	0,2,0
	.byte	25
	.ascii	"G_SHELL_ERROR_BAD_QUOTING"
	.byte	26
	.ascii	"G_SHELL_ERROR_EMPTY_STRING"
	.byte	20
	.ascii	"G_SHELL_ERROR_FAILED"
	.byte	5
	.ascii	"glib2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGSHELLERROR
_RTTI_GLIB2_TGSHELLERROR:
	.byte	3,12
	.ascii	"TGShellError"
	.byte	5
	.long	0,2,0
	.byte	25
	.ascii	"G_SHELL_ERROR_BAD_QUOTING"
	.byte	26
	.ascii	"G_SHELL_ERROR_EMPTY_STRING"
	.byte	20
	.ascii	"G_SHELL_ERROR_FAILED"
	.byte	5
	.ascii	"glib2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGSHELLERROR_s2o
_RTTI_GLIB2_TGSHELLERROR_s2o:
	.long	3,0
	.long	_RTTI_GLIB2_TGSHELLERROR+27
	.long	1
	.long	_RTTI_GLIB2_TGSHELLERROR+53
	.long	2
	.long	_RTTI_GLIB2_TGSHELLERROR+80

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGSHELLERROR_o2s
_RTTI_GLIB2_TGSHELLERROR_o2s:
	.long	0
	.long	_RTTI_GLIB2_TGSHELLERROR+27
	.long	_RTTI_GLIB2_TGSHELLERROR+53
	.long	_RTTI_GLIB2_TGSHELLERROR+80

.const_data
	.align 2
.globl	_INIT_GLIB2_PGSPAWNERROR
_INIT_GLIB2_PGSPAWNERROR:
	.byte	0
	.ascii	"\014PGSpawnError"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGSPAWNERROR
_RTTI_GLIB2_PGSPAWNERROR:
	.byte	0
	.ascii	"\014PGSpawnError"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGSPAWNERROR
_INIT_GLIB2_TGSPAWNERROR:
	.byte	3,12
	.ascii	"TGSpawnError"
	.byte	5
	.long	0,19,0
	.byte	18
	.ascii	"G_SPAWN_ERROR_FORK"
	.byte	18
	.ascii	"G_SPAWN_ERROR_READ"
	.byte	19
	.ascii	"G_SPAWN_ERROR_CHDIR"
	.byte	19
	.ascii	"G_SPAWN_ERROR_ACCES"
	.byte	18
	.ascii	"G_SPAWN_ERROR_PERM"
	.byte	18
	.ascii	"G_SPAWN_ERROR_2BIG"
	.byte	20
	.ascii	"G_SPAWN_ERROR_NOEXEC"
	.byte	25
	.ascii	"G_SPAWN_ERROR_NAMETOOLONG"
	.byte	19
	.ascii	"G_SPAWN_ERROR_NOENT"
	.byte	19
	.ascii	"G_SPAWN_ERROR_NOMEM"
	.byte	20
	.ascii	"G_SPAWN_ERROR_NOTDIR"
	.byte	18
	.ascii	"G_SPAWN_ERROR_LOOP"
	.byte	21
	.ascii	"G_SPAWN_ERROR_TXTBUSY"
	.byte	16
	.ascii	"G_SPAWN_ERROR_IO"
	.byte	19
	.ascii	"G_SPAWN_ERROR_NFILE"
	.byte	19
	.ascii	"G_SPAWN_ERROR_MFILE"
	.byte	19
	.ascii	"G_SPAWN_ERROR_INVAL"
	.byte	19
	.ascii	"G_SPAWN_ERROR_ISDIR"
	.byte	20
	.ascii	"G_SPAWN_ERROR_LIBBAD"
	.byte	20
	.ascii	"G_SPAWN_ERROR_FAILED"
	.byte	5
	.ascii	"glib2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGSPAWNERROR
_RTTI_GLIB2_TGSPAWNERROR:
	.byte	3,12
	.ascii	"TGSpawnError"
	.byte	5
	.long	0,19,0
	.byte	18
	.ascii	"G_SPAWN_ERROR_FORK"
	.byte	18
	.ascii	"G_SPAWN_ERROR_READ"
	.byte	19
	.ascii	"G_SPAWN_ERROR_CHDIR"
	.byte	19
	.ascii	"G_SPAWN_ERROR_ACCES"
	.byte	18
	.ascii	"G_SPAWN_ERROR_PERM"
	.byte	18
	.ascii	"G_SPAWN_ERROR_2BIG"
	.byte	20
	.ascii	"G_SPAWN_ERROR_NOEXEC"
	.byte	25
	.ascii	"G_SPAWN_ERROR_NAMETOOLONG"
	.byte	19
	.ascii	"G_SPAWN_ERROR_NOENT"
	.byte	19
	.ascii	"G_SPAWN_ERROR_NOMEM"
	.byte	20
	.ascii	"G_SPAWN_ERROR_NOTDIR"
	.byte	18
	.ascii	"G_SPAWN_ERROR_LOOP"
	.byte	21
	.ascii	"G_SPAWN_ERROR_TXTBUSY"
	.byte	16
	.ascii	"G_SPAWN_ERROR_IO"
	.byte	19
	.ascii	"G_SPAWN_ERROR_NFILE"
	.byte	19
	.ascii	"G_SPAWN_ERROR_MFILE"
	.byte	19
	.ascii	"G_SPAWN_ERROR_INVAL"
	.byte	19
	.ascii	"G_SPAWN_ERROR_ISDIR"
	.byte	20
	.ascii	"G_SPAWN_ERROR_LIBBAD"
	.byte	20
	.ascii	"G_SPAWN_ERROR_FAILED"
	.byte	5
	.ascii	"glib2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGSPAWNERROR_s2o
_RTTI_GLIB2_TGSPAWNERROR_s2o:
	.long	20,5
	.long	_RTTI_GLIB2_TGSPAWNERROR+124
	.long	3
	.long	_RTTI_GLIB2_TGSPAWNERROR+85
	.long	2
	.long	_RTTI_GLIB2_TGSPAWNERROR+65
	.long	19
	.long	_RTTI_GLIB2_TGSPAWNERROR+410
	.long	0
	.long	_RTTI_GLIB2_TGSPAWNERROR+27
	.long	16
	.long	_RTTI_GLIB2_TGSPAWNERROR+349
	.long	13
	.long	_RTTI_GLIB2_TGSPAWNERROR+292
	.long	17
	.long	_RTTI_GLIB2_TGSPAWNERROR+369
	.long	18
	.long	_RTTI_GLIB2_TGSPAWNERROR+389
	.long	11
	.long	_RTTI_GLIB2_TGSPAWNERROR+251
	.long	15
	.long	_RTTI_GLIB2_TGSPAWNERROR+329
	.long	7
	.long	_RTTI_GLIB2_TGSPAWNERROR+164
	.long	14
	.long	_RTTI_GLIB2_TGSPAWNERROR+309
	.long	8
	.long	_RTTI_GLIB2_TGSPAWNERROR+190
	.long	6
	.long	_RTTI_GLIB2_TGSPAWNERROR+143
	.long	9
	.long	_RTTI_GLIB2_TGSPAWNERROR+210
	.long	10
	.long	_RTTI_GLIB2_TGSPAWNERROR+230
	.long	4
	.long	_RTTI_GLIB2_TGSPAWNERROR+105
	.long	1
	.long	_RTTI_GLIB2_TGSPAWNERROR+46
	.long	12
	.long	_RTTI_GLIB2_TGSPAWNERROR+270

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGSPAWNERROR_o2s
_RTTI_GLIB2_TGSPAWNERROR_o2s:
	.long	0
	.long	_RTTI_GLIB2_TGSPAWNERROR+27
	.long	_RTTI_GLIB2_TGSPAWNERROR+46
	.long	_RTTI_GLIB2_TGSPAWNERROR+65
	.long	_RTTI_GLIB2_TGSPAWNERROR+85
	.long	_RTTI_GLIB2_TGSPAWNERROR+105
	.long	_RTTI_GLIB2_TGSPAWNERROR+124
	.long	_RTTI_GLIB2_TGSPAWNERROR+143
	.long	_RTTI_GLIB2_TGSPAWNERROR+164
	.long	_RTTI_GLIB2_TGSPAWNERROR+190
	.long	_RTTI_GLIB2_TGSPAWNERROR+210
	.long	_RTTI_GLIB2_TGSPAWNERROR+230
	.long	_RTTI_GLIB2_TGSPAWNERROR+251
	.long	_RTTI_GLIB2_TGSPAWNERROR+270
	.long	_RTTI_GLIB2_TGSPAWNERROR+292
	.long	_RTTI_GLIB2_TGSPAWNERROR+309
	.long	_RTTI_GLIB2_TGSPAWNERROR+329
	.long	_RTTI_GLIB2_TGSPAWNERROR+349
	.long	_RTTI_GLIB2_TGSPAWNERROR+369
	.long	_RTTI_GLIB2_TGSPAWNERROR+389
	.long	_RTTI_GLIB2_TGSPAWNERROR+410

.const_data
	.align 2
.globl	_INIT_GLIB2_TGSPAWNCHILDSETUPFUNC
_INIT_GLIB2_TGSPAWNCHILDSETUPFUNC:
	.byte	23,21
	.ascii	"TGSpawnChildSetupFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGSPAWNCHILDSETUPFUNC
_RTTI_GLIB2_TGSPAWNCHILDSETUPFUNC:
	.byte	23,21
	.ascii	"TGSpawnChildSetupFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGSPAWNFLAGS
_INIT_GLIB2_PGSPAWNFLAGS:
	.byte	0
	.ascii	"\014PGSpawnFlags"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGSPAWNFLAGS
_RTTI_GLIB2_PGSPAWNFLAGS:
	.byte	0
	.ascii	"\014PGSpawnFlags"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGMODULECHECKINIT
_INIT_GLIB2_TGMODULECHECKINIT:
	.byte	23,17
	.ascii	"TGModuleCheckInit"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGMODULECHECKINIT
_RTTI_GLIB2_TGMODULECHECKINIT:
	.byte	23,17
	.ascii	"TGModuleCheckInit"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGMODULEUNLOAD
_INIT_GLIB2_TGMODULEUNLOAD:
	.byte	23,14
	.ascii	"TGModuleUnload"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGMODULEUNLOAD
_RTTI_GLIB2_TGMODULEUNLOAD:
	.byte	23,14
	.ascii	"TGModuleUnload"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGOPTIONCONTEXT
_INIT_GLIB2_PGOPTIONCONTEXT:
	.byte	0
	.ascii	"\017PGOptionContext"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGOPTIONCONTEXT
_RTTI_GLIB2_PGOPTIONCONTEXT:
	.byte	0
	.ascii	"\017PGOptionContext"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGOPTIONCONTEXT
_INIT_GLIB2_TGOPTIONCONTEXT:
	.byte	13,15
	.ascii	"TGOptionContext"
	.long	0,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGOPTIONCONTEXT
_RTTI_GLIB2_TGOPTIONCONTEXT:
	.byte	13,15
	.ascii	"TGOptionContext"
	.long	0,0

.const_data
	.align 2
.globl	_INIT_GLIB2_PGOPTIONGROUP
_INIT_GLIB2_PGOPTIONGROUP:
	.byte	0
	.ascii	"\015PGOptionGroup"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGOPTIONGROUP
_RTTI_GLIB2_PGOPTIONGROUP:
	.byte	0
	.ascii	"\015PGOptionGroup"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGOPTIONGROUP
_INIT_GLIB2_TGOPTIONGROUP:
	.byte	13,13
	.ascii	"TGOptionGroup"
	.long	0,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGOPTIONGROUP
_RTTI_GLIB2_TGOPTIONGROUP:
	.byte	13,13
	.ascii	"TGOptionGroup"
	.long	0,0

.const_data
	.align 2
.globl	_INIT_GLIB2_PGOPTIONFLAGS
_INIT_GLIB2_PGOPTIONFLAGS:
	.byte	0
	.ascii	"\015PGOptionFlags"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGOPTIONFLAGS
_RTTI_GLIB2_PGOPTIONFLAGS:
	.byte	0
	.ascii	"\015PGOptionFlags"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGOPTIONFLAGS
_INIT_GLIB2_TGOPTIONFLAGS:
	.byte	3,13
	.ascii	"TGOptionFlags"
	.byte	5
	.long	1,64,0
	.byte	20
	.ascii	"G_OPTION_FLAG_HIDDEN"
	.byte	21
	.ascii	"G_OPTION_FLAG_IN_MAIN"
	.byte	21
	.ascii	"G_OPTION_FLAG_REVERSE"
	.byte	20
	.ascii	"G_OPTION_FLAG_NO_ARG"
	.byte	22
	.ascii	"G_OPTION_FLAG_FILENAME"
	.byte	26
	.ascii	"G_OPTION_FLAG_OPTIONAL_ARG"
	.byte	21
	.ascii	"G_OPTION_FLAG_NOALIAS"
	.byte	5
	.ascii	"glib2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGOPTIONFLAGS
_RTTI_GLIB2_TGOPTIONFLAGS:
	.byte	3,13
	.ascii	"TGOptionFlags"
	.byte	5
	.long	1,64,0
	.byte	20
	.ascii	"G_OPTION_FLAG_HIDDEN"
	.byte	21
	.ascii	"G_OPTION_FLAG_IN_MAIN"
	.byte	21
	.ascii	"G_OPTION_FLAG_REVERSE"
	.byte	20
	.ascii	"G_OPTION_FLAG_NO_ARG"
	.byte	22
	.ascii	"G_OPTION_FLAG_FILENAME"
	.byte	26
	.ascii	"G_OPTION_FLAG_OPTIONAL_ARG"
	.byte	21
	.ascii	"G_OPTION_FLAG_NOALIAS"
	.byte	5
	.ascii	"glib2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGOPTIONFLAGS_s2o
_RTTI_GLIB2_TGOPTIONFLAGS_s2o:
	.long	7,16
	.long	_RTTI_GLIB2_TGOPTIONFLAGS+114
	.long	1
	.long	_RTTI_GLIB2_TGOPTIONFLAGS+28
	.long	2
	.long	_RTTI_GLIB2_TGOPTIONFLAGS+49
	.long	64
	.long	_RTTI_GLIB2_TGOPTIONFLAGS+164
	.long	8
	.long	_RTTI_GLIB2_TGOPTIONFLAGS+93
	.long	32
	.long	_RTTI_GLIB2_TGOPTIONFLAGS+137
	.long	4
	.long	_RTTI_GLIB2_TGOPTIONFLAGS+71

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGOPTIONFLAGS_o2s
_RTTI_GLIB2_TGOPTIONFLAGS_o2s:
	.long	1,7,1
	.long	_RTTI_GLIB2_TGOPTIONFLAGS+28
	.long	2
	.long	_RTTI_GLIB2_TGOPTIONFLAGS+49
	.long	4
	.long	_RTTI_GLIB2_TGOPTIONFLAGS+71
	.long	8
	.long	_RTTI_GLIB2_TGOPTIONFLAGS+93
	.long	16
	.long	_RTTI_GLIB2_TGOPTIONFLAGS+114
	.long	32
	.long	_RTTI_GLIB2_TGOPTIONFLAGS+137
	.long	64
	.long	_RTTI_GLIB2_TGOPTIONFLAGS+164

.const_data
	.align 2
.globl	_INIT_GLIB2_PGOPTIONARG
_INIT_GLIB2_PGOPTIONARG:
	.byte	0
	.ascii	"\013PGOptionArg"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGOPTIONARG
_RTTI_GLIB2_PGOPTIONARG:
	.byte	0
	.ascii	"\013PGOptionArg"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGOPTIONARG
_INIT_GLIB2_TGOPTIONARG:
	.byte	3,11
	.ascii	"TGOptionArg"
	.byte	5
	.long	0,8,0
	.byte	17
	.ascii	"G_OPTION_ARG_NONE"
	.byte	19
	.ascii	"G_OPTION_ARG_STRING"
	.byte	16
	.ascii	"G_OPTION_ARG_INT"
	.byte	21
	.ascii	"G_OPTION_ARG_CALLBACK"
	.byte	21
	.ascii	"G_OPTION_ARG_FILENAME"
	.byte	25
	.ascii	"G_OPTION_ARG_STRING_ARRAY"
	.byte	27
	.ascii	"G_OPTION_ARG_FILENAME_ARRAY"
	.byte	19
	.ascii	"G_OPTION_ARG_DOUBLE"
	.byte	18
	.ascii	"G_OPTION_ARG_INT64"
	.byte	5
	.ascii	"glib2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGOPTIONARG
_RTTI_GLIB2_TGOPTIONARG:
	.byte	3,11
	.ascii	"TGOptionArg"
	.byte	5
	.long	0,8,0
	.byte	17
	.ascii	"G_OPTION_ARG_NONE"
	.byte	19
	.ascii	"G_OPTION_ARG_STRING"
	.byte	16
	.ascii	"G_OPTION_ARG_INT"
	.byte	21
	.ascii	"G_OPTION_ARG_CALLBACK"
	.byte	21
	.ascii	"G_OPTION_ARG_FILENAME"
	.byte	25
	.ascii	"G_OPTION_ARG_STRING_ARRAY"
	.byte	27
	.ascii	"G_OPTION_ARG_FILENAME_ARRAY"
	.byte	19
	.ascii	"G_OPTION_ARG_DOUBLE"
	.byte	18
	.ascii	"G_OPTION_ARG_INT64"
	.byte	5
	.ascii	"glib2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGOPTIONARG_s2o
_RTTI_GLIB2_TGOPTIONARG_s2o:
	.long	9,3
	.long	_RTTI_GLIB2_TGOPTIONARG+81
	.long	7
	.long	_RTTI_GLIB2_TGOPTIONARG+179
	.long	4
	.long	_RTTI_GLIB2_TGOPTIONARG+103
	.long	6
	.long	_RTTI_GLIB2_TGOPTIONARG+151
	.long	2
	.long	_RTTI_GLIB2_TGOPTIONARG+64
	.long	8
	.long	_RTTI_GLIB2_TGOPTIONARG+199
	.long	0
	.long	_RTTI_GLIB2_TGOPTIONARG+26
	.long	1
	.long	_RTTI_GLIB2_TGOPTIONARG+44
	.long	5
	.long	_RTTI_GLIB2_TGOPTIONARG+125

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGOPTIONARG_o2s
_RTTI_GLIB2_TGOPTIONARG_o2s:
	.long	0
	.long	_RTTI_GLIB2_TGOPTIONARG+26
	.long	_RTTI_GLIB2_TGOPTIONARG+44
	.long	_RTTI_GLIB2_TGOPTIONARG+64
	.long	_RTTI_GLIB2_TGOPTIONARG+81
	.long	_RTTI_GLIB2_TGOPTIONARG+103
	.long	_RTTI_GLIB2_TGOPTIONARG+125
	.long	_RTTI_GLIB2_TGOPTIONARG+151
	.long	_RTTI_GLIB2_TGOPTIONARG+179
	.long	_RTTI_GLIB2_TGOPTIONARG+199

.const_data
	.align 2
.globl	_INIT_GLIB2_PGOPTIONERROR
_INIT_GLIB2_PGOPTIONERROR:
	.byte	0
	.ascii	"\015PGOptionError"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGOPTIONERROR
_RTTI_GLIB2_PGOPTIONERROR:
	.byte	0
	.ascii	"\015PGOptionError"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGOPTIONERROR
_INIT_GLIB2_TGOPTIONERROR:
	.byte	3,13
	.ascii	"TGOptionError"
	.byte	5
	.long	0,2,0
	.byte	29
	.ascii	"G_OPTION_ERROR_UNKNOWN_OPTION"
	.byte	24
	.ascii	"G_OPTION_ERROR_BAD_VALUE"
	.byte	21
	.ascii	"G_OPTION_ERROR_FAILED"
	.byte	5
	.ascii	"glib2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGOPTIONERROR
_RTTI_GLIB2_TGOPTIONERROR:
	.byte	3,13
	.ascii	"TGOptionError"
	.byte	5
	.long	0,2,0
	.byte	29
	.ascii	"G_OPTION_ERROR_UNKNOWN_OPTION"
	.byte	24
	.ascii	"G_OPTION_ERROR_BAD_VALUE"
	.byte	21
	.ascii	"G_OPTION_ERROR_FAILED"
	.byte	5
	.ascii	"glib2"
	.byte	0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGOPTIONERROR_s2o
_RTTI_GLIB2_TGOPTIONERROR_s2o:
	.long	3,1
	.long	_RTTI_GLIB2_TGOPTIONERROR+58
	.long	2
	.long	_RTTI_GLIB2_TGOPTIONERROR+83
	.long	0
	.long	_RTTI_GLIB2_TGOPTIONERROR+28

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGOPTIONERROR_o2s
_RTTI_GLIB2_TGOPTIONERROR_o2s:
	.long	0
	.long	_RTTI_GLIB2_TGOPTIONERROR+28
	.long	_RTTI_GLIB2_TGOPTIONERROR+58
	.long	_RTTI_GLIB2_TGOPTIONERROR+83

.const_data
	.align 2
.globl	_INIT_GLIB2_PGOPTIONENTRY
_INIT_GLIB2_PGOPTIONENTRY:
	.byte	0
	.ascii	"\015PGOptionEntry"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGOPTIONENTRY
_RTTI_GLIB2_PGOPTIONENTRY:
	.byte	0
	.ascii	"\015PGOptionEntry"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGOPTIONENTRY
_INIT_GLIB2_TGOPTIONENTRY:
	.byte	13,13
	.ascii	"TGOptionEntry"
	.long	28,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGOPTIONENTRY
_RTTI_GLIB2_TGOPTIONENTRY:
	.byte	13,13
	.ascii	"TGOptionEntry"
	.long	28,7
	.long	_RTTI_GLIB2_PGCHAR
	.long	0
	.long	_RTTI_SYSTEM_CHAR
	.long	4
	.long	_RTTI_SYSTEM_LONGINT
	.long	8
	.long	_RTTI_GLIB2_TGOPTIONARG
	.long	12
	.long	_RTTI_SYSTEM_POINTER
	.long	16
	.long	_RTTI_GLIB2_PGCHAR
	.long	20
	.long	_RTTI_GLIB2_PGCHAR
	.long	24

.const_data
	.align 2
.globl	_INIT_GLIB2_TGOPTIONARGFUNC
_INIT_GLIB2_TGOPTIONARGFUNC:
	.byte	23,15
	.ascii	"TGOptionArgFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGOPTIONARGFUNC
_RTTI_GLIB2_TGOPTIONARGFUNC:
	.byte	23,15
	.ascii	"TGOptionArgFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGOPTIONPARSEFUNC
_INIT_GLIB2_TGOPTIONPARSEFUNC:
	.byte	23,17
	.ascii	"TGOptionParseFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGOPTIONPARSEFUNC
_RTTI_GLIB2_TGOPTIONPARSEFUNC:
	.byte	23,17
	.ascii	"TGOptionParseFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGOPTIONERRORFUNC
_INIT_GLIB2_TGOPTIONERRORFUNC:
	.byte	23,17
	.ascii	"TGOptionErrorFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGOPTIONERRORFUNC
_RTTI_GLIB2_TGOPTIONERRORFUNC:
	.byte	23,17
	.ascii	"TGOptionErrorFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGVALUETRANSFORM
_INIT_GLIB2_TGVALUETRANSFORM:
	.byte	23,16
	.ascii	"TGValueTransform"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGVALUETRANSFORM
_RTTI_GLIB2_TGVALUETRANSFORM:
	.byte	23,16
	.ascii	"TGValueTransform"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGCONNECTFLAGS
_INIT_GLIB2_PGCONNECTFLAGS:
	.byte	0
	.ascii	"\016PGConnectFlags"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGCONNECTFLAGS
_RTTI_GLIB2_PGCONNECTFLAGS:
	.byte	0
	.ascii	"\016PGConnectFlags"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGSIGNALMATCHTYPE
_INIT_GLIB2_PGSIGNALMATCHTYPE:
	.byte	0
	.ascii	"\021PGSignalMatchType"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGSIGNALMATCHTYPE
_RTTI_GLIB2_PGSIGNALMATCHTYPE:
	.byte	0
	.ascii	"\021PGSignalMatchType"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGDEBUGKEY
_INIT_GLIB2_PGDEBUGKEY:
	.byte	0
	.ascii	"\012PGDebugKey"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGDEBUGKEY
_RTTI_GLIB2_PGDEBUGKEY:
	.byte	0
	.ascii	"\012PGDebugKey"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGDEBUGKEY
_INIT_GLIB2_TGDEBUGKEY:
	.byte	13,10
	.ascii	"TGDebugKey"
	.long	8,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGDEBUGKEY
_RTTI_GLIB2_TGDEBUGKEY:
	.byte	13,10
	.ascii	"TGDebugKey"
	.long	8,2
	.long	_RTTI_GLIB2_PGCHAR
	.long	0
	.long	_RTTI_SYSTEM_LONGWORD
	.long	4

.const_data
	.align 2
.globl	_INIT_GLIB2_TGVOIDFUNC
_INIT_GLIB2_TGVOIDFUNC:
	.byte	23,10
	.ascii	"TGVoidFunc"

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGVOIDFUNC
_RTTI_GLIB2_TGVOIDFUNC:
	.byte	23,10
	.ascii	"TGVoidFunc"

.const_data
	.align 2
.globl	_INIT_GLIB2_PPGTRASHSTACK
_INIT_GLIB2_PPGTRASHSTACK:
	.byte	0
	.ascii	"\015PPGTrashStack"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PPGTRASHSTACK
_RTTI_GLIB2_PPGTRASHSTACK:
	.byte	0
	.ascii	"\015PPGTrashStack"

.const_data
	.align 2
.globl	_INIT_GLIB2_PGTRASHSTACK
_INIT_GLIB2_PGTRASHSTACK:
	.byte	0
	.ascii	"\014PGTrashStack"

.const_data
	.align 2
.globl	_RTTI_GLIB2_PGTRASHSTACK
_RTTI_GLIB2_PGTRASHSTACK:
	.byte	0
	.ascii	"\014PGTrashStack"

.const_data
	.align 2
.globl	_INIT_GLIB2_TGTRASHSTACK
_INIT_GLIB2_TGTRASHSTACK:
	.byte	13,12
	.ascii	"TGTrashStack"
	.long	4,0

.const_data
	.align 2
.globl	_RTTI_GLIB2_TGTRASHSTACK
_RTTI_GLIB2_TGTRASHSTACK:
	.byte	13,12
	.ascii	"TGTrashStack"
	.long	4,1
	.long	_RTTI_GLIB2_PGTRASHSTACK
	.long	0
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
L_glib_mem_profiler_table$non_lazy_ptr:
.indirect_symbol _glib_mem_profiler_table
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_glib_interface_age$non_lazy_ptr:
.indirect_symbol _glib_interface_age
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_glib_binary_age$non_lazy_ptr:
.indirect_symbol _glib_binary_age
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_g_thread_use_default_impl$non_lazy_ptr:
.indirect_symbol _g_thread_use_default_impl
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_g_threads_got_initialized$non_lazy_ptr:
.indirect_symbol _g_threads_got_initialized
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_g_thread_functions_for_glib_use$non_lazy_ptr:
.indirect_symbol _g_thread_functions_for_glib_use
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_g_utf8_skip$non_lazy_ptr:
.indirect_symbol _g_utf8_skip
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_glib_major_version$non_lazy_ptr:
.indirect_symbol _glib_major_version
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_glib_minor_version$non_lazy_ptr:
.indirect_symbol _glib_minor_version
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_glib_micro_version$non_lazy_ptr:
.indirect_symbol _glib_micro_version
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
LFPC_EMPTYCHAR$non_lazy_ptr:
.indirect_symbol FPC_EMPTYCHAR
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_g_ascii_table$non_lazy_ptr:
.indirect_symbol _g_ascii_table
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$GLIB2$_Ld1$non_lazy_ptr:
.indirect_symbol _$GLIB2$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$GLIB2$_Ld2$non_lazy_ptr:
.indirect_symbol _$GLIB2$_Ld2
	.long	0
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

