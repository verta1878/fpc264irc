# Begin asmlist al_begin
# End asmlist al_begin
# Begin asmlist al_stabs
# End asmlist al_stabs
# Begin asmlist al_procedures

.text
	.align 4
.globl	_CTHREADS_CINITTHREADVAR$LONGWORD$LONGWORD
_CTHREADS_CINITTHREADVAR$LONGWORD$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-20(%ebp)
	call	Lj4
Lj4:
	popl	%ecx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	L_TC_CTHREADS_THREADVARBLOCKSIZE$non_lazy_ptr-Lj4(%ecx),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	addl	$8,%eax
	decl	%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	xorl	%edx,%edx
	movl	$8,%ebx
	divl	%ebx
	movl	-16(%ebp),%eax
	subl	%edx,%eax
	movl	%eax,%edx
	movl	L_TC_CTHREADS_THREADVARBLOCKSIZE$non_lazy_ptr-Lj4(%ecx),%eax
	movl	%edx,(%eax)
	movl	-4(%ebp),%edx
	movl	L_TC_CTHREADS_THREADVARBLOCKSIZE$non_lazy_ptr-Lj4(%ecx),%eax
	movl	(%eax),%eax
	movl	%eax,(%edx)
	movl	-8(%ebp),%edx
	movl	L_TC_CTHREADS_THREADVARBLOCKSIZE$non_lazy_ptr-Lj4(%ecx),%eax
	addl	%edx,(%eax)
	movl	-20(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CTHREADS_CALLOCATETHREADVARS
_CTHREADS_CALLOCATETHREADVARS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-8(%ebp)
	call	Lj15
Lj15:
	popl	%ebx
	movl	$0,4(%esp)
	movl	$0,(%esp)
	movl	$-1,8(%esp)
	movl	$4098,12(%esp)
	movl	L_TC_CTHREADS_THREADVARBLOCKSIZE$non_lazy_ptr-Lj15(%ebx),%eax
	movl	(%eax),%edx
	movl	$3,%ecx
	movl	$0,%eax
	call	LFPC_SYSC_MMAP$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	L_TC_CTHREADS_THREADVARBLOCKSIZE$non_lazy_ptr-Lj15(%ebx),%edx
	movl	(%edx),%edx
	movb	$0,%cl
	call	L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub
	movl	-4(%ebp),%eax
	movl	%eax,4(%esp)
	movl	L_U_CTHREADS_TLSKEY$non_lazy_ptr-Lj15(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	call	L_pthread_setspecific$stub
	movl	-8(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CTHREADS_CTHREADCLEANUP$POINTER
_CTHREADS_CTHREADCLEANUP$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-4(%ebp)
	call	Lj41
Lj41:
	popl	%ebx
	call	L_SYSTEM_DONETHREAD$stub
	movl	$0,4(%esp)
	movl	L_U_CTHREADS_CLEANUPKEY$non_lazy_ptr-Lj41(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	call	L_pthread_setspecific$stub
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CTHREADS_HOOKTHREAD
_CTHREADS_HOOKTHREAD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-4(%ebp)
	call	Lj47
Lj47:
	popl	%ebx
	call	L_CTHREADS_CALLOCATETHREADVARS$stub
	movl	$1000000000,%eax
	call	L_SYSTEM_INITTHREAD$LONGWORD$stub
	movl	$1,4(%esp)
	movl	L_U_CTHREADS_CLEANUPKEY$non_lazy_ptr-Lj47(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	call	L_pthread_setspecific$stub
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CTHREADS_CRELOCATETHREADVAR$LONGWORD$$POINTER
_CTHREADS_CRELOCATETHREADVAR$LONGWORD$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-16(%ebp)
	call	Lj55
Lj55:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	L_U_CTHREADS_TLSKEY$non_lazy_ptr-Lj55(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	call	L_pthread_getspecific$stub
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj60
	jmp	Lj61
Lj60:
	call	L_CTHREADS_HOOKTHREAD$stub
	movl	L_U_CTHREADS_TLSKEY$non_lazy_ptr-Lj55(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	call	L_pthread_getspecific$stub
	movl	%eax,-12(%ebp)
Lj61:
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%edx
	addl	%edx,%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-16(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CTHREADS_CRELEASETHREADVARS
_CTHREADS_CRELEASETHREADVARS:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj69
Lj69:
	popl	%ebx
	movl	L_U_CTHREADS_TLSKEY$non_lazy_ptr-Lj69(%ebx),%eax
	movl	(%eax),%eax
	movl	%eax,(%esp)
	call	L_pthread_getspecific$stub
	movl	L_TC_CTHREADS_THREADVARBLOCKSIZE$non_lazy_ptr-Lj69(%ebx),%edx
	movl	(%edx),%edx
	call	LFPC_SYSC_MUNMAP$stub
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CTHREADS_THREADMAIN$POINTER$$POINTER
_CTHREADS_THREADMAIN$POINTER$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	leal	-20(%ebp),%eax
	call	L_BASEUNIX_FPSIGEMPTYSET$SIGSET_T$$LONGINT$stub
	leal	-20(%ebp),%eax
	movl	$11,%edx
	call	L_BASEUNIX_FPSIGADDSET$SIGSET_T$LONGINT$$LONGINT$stub
	leal	-20(%ebp),%eax
	movl	$10,%edx
	call	L_BASEUNIX_FPSIGADDSET$SIGSET_T$LONGINT$$LONGINT$stub
	leal	-20(%ebp),%eax
	movl	$8,%edx
	call	L_BASEUNIX_FPSIGADDSET$SIGSET_T$LONGINT$$LONGINT$stub
	leal	-20(%ebp),%eax
	movl	$4,%edx
	call	L_BASEUNIX_FPSIGADDSET$SIGSET_T$LONGINT$$LONGINT$stub
	movl	$0,8(%esp)
	movl	$2,(%esp)
	leal	-20(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_pthread_sigmask$stub
	call	L_CTHREADS_CALLOCATETHREADVARS$stub
	movl	8(%ebp),%edx
	movl	(%edx),%eax
	movl	%eax,-16(%ebp)
	movl	4(%edx),%eax
	movl	%eax,-12(%ebp)
	movl	8(%edx),%eax
	movl	%eax,-8(%ebp)
	movl	8(%ebp),%eax
	call	Lfpc_freemem$stub
	movl	-8(%ebp),%eax
	call	L_SYSTEM_INITTHREAD$LONGWORD$stub
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%edx
	call	*%edx
	movl	%eax,-4(%ebp)
	call	L_SYSTEM_DONETHREAD$stub
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_pthread_exit$stub
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CTHREADS_CBEGINTHREAD$crc02DF303E
_CTHREADS_CBEGINTHREAD$crc02DF303E:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$88,%esp
	movl	%ebx,-64(%ebp)
	call	Lj115
Lj115:
	popl	%ebx
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	%ecx,-12(%ebp)
	movl	L_TC_SYSTEM_ISMULTITHREAD$non_lazy_ptr-Lj115(%ebx),%eax
	movl	(%eax),%eax
	testl	%eax,%eax
	je	Lj116
	jmp	Lj117
Lj116:
	movl	L_TC_SYSTEM_ISMULTITHREAD$non_lazy_ptr-Lj115(%ebx),%eax
	movl	$1,%edx
	call	L_SYSTEM_INTERLOCKEDEXCHANGE$LONGINT$LONGINT$$LONGINT$stub
	testl	%eax,%eax
	je	Lj118
	jmp	Lj119
Lj118:
	movl	$0,4(%esp)
	movl	L_U_CTHREADS_TLSKEY$non_lazy_ptr-Lj115(%ebx),%eax
	movl	%eax,(%esp)
	call	L_pthread_key_create$stub
	movl	L_CTHREADS_CRELOCATETHREADVAR$LONGWORD$$POINTER$non_lazy_ptr-Lj115(%ebx),%eax
	call	L_SYSTEM_INITTHREADVARS$POINTER$stub
	movl	L_CTHREADS_CTHREADCLEANUP$POINTER$non_lazy_ptr-Lj115(%ebx),%eax
	movl	%eax,4(%esp)
	movl	L_U_CTHREADS_CLEANUPKEY$non_lazy_ptr-Lj115(%ebx),%eax
	movl	%eax,(%esp)
	call	L_pthread_key_create$stub
Lj119:
Lj117:
	movl	$12,%eax
	call	Lfpc_getmem$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	movl	-12(%ebp),%edx
	movl	%edx,(%eax)
	movl	-20(%ebp),%edx
	movl	16(%ebp),%eax
	movl	%eax,4(%edx)
	movl	-20(%ebp),%edx
	movl	-8(%ebp),%eax
	movl	%eax,8(%edx)
	leal	-60(%ebp),%eax
	movl	%eax,(%esp)
	call	L_pthread_attr_init$stub
	movl	$0,4(%esp)
	leal	-60(%ebp),%eax
	movl	%eax,(%esp)
	call	L_pthread_attr_setinheritsched$stub
	movl	$0,4(%esp)
	leal	-60(%ebp),%eax
	movl	%eax,(%esp)
	call	L_pthread_attr_setscope$stub
	movl	-8(%ebp),%eax
	movl	%eax,4(%esp)
	leal	-60(%ebp),%eax
	movl	%eax,(%esp)
	call	L_pthread_attr_setstacksize$stub
	testl	%eax,%eax
	jne	Lj158
	jmp	Lj160
Lj160:
	movl	-20(%ebp),%eax
	movl	%eax,12(%esp)
	movl	L_CTHREADS_THREADMAIN$POINTER$$POINTER$non_lazy_ptr-Lj115(%ebx),%eax
	movl	%eax,8(%esp)
	leal	-60(%ebp),%eax
	movl	%eax,4(%esp)
	movl	8(%ebp),%eax
	movl	%eax,(%esp)
	call	L_pthread_create$stub
	testl	%eax,%eax
	jne	Lj158
	jmp	Lj159
Lj158:
	movl	-20(%ebp),%eax
	call	Lfpc_freemem$stub
	movl	8(%ebp),%eax
	movl	$0,(%eax)
Lj159:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movl	-64(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CTHREADS_CENDTHREAD$LONGWORD
_CTHREADS_CENDTHREAD$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	call	L_SYSTEM_DONETHREAD$stub
	call	L_pthread_self$stub
	movl	%eax,(%esp)
	call	L_pthread_detach$stub
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_pthread_exit$stub
	leave
	ret

.text
	.align 4
.globl	_CTHREADS_CSUSPENDTHREAD$TTHREADID$$LONGWORD
_CTHREADS_CSUSPENDTHREAD$TTHREADID$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$-1,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CTHREADS_CRESUMETHREAD$TTHREADID$$LONGWORD
_CTHREADS_CRESUMETHREAD$TTHREADID$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$-1,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CTHREADS_CTHREADSWITCH
_CTHREADS_CTHREADSWITCH:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_sched_yield$stub
	leave
	ret

.text
	.align 4
.globl	_CTHREADS_CKILLTHREAD$TTHREADID$$LONGWORD
_CTHREADS_CKILLTHREAD$TTHREADID$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_pthread_detach$stub
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_pthread_cancel$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CTHREADS_CCLOSETHREAD$TTHREADID$$LONGWORD
_CTHREADS_CCLOSETHREAD$TTHREADID$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CTHREADS_CWAITFORTHREADTERMINATE$TTHREADID$LONGINT$$LONGWORD
_CTHREADS_CWAITFORTHREADTERMINATE$TTHREADID$LONGINT$$LONGWORD:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	leal	-16(%ebp),%eax
	movl	%eax,4(%esp)
	call	L_pthread_join$stub
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp)
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CTHREADS_CTHREADSETPRIORITY$TTHREADID$LONGINT$$BOOLEAN
_CTHREADS_CTHREADSETPRIORITY$TTHREADID$LONGINT$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movb	$0,-9(%ebp)
	movb	-9(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_CTHREADS_CTHREADGETPRIORITY$TTHREADID$$LONGINT
_CTHREADS_CTHREADGETPRIORITY$TTHREADID$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	$0,-8(%ebp)
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CTHREADS_CGETCURRENTTHREADID$$TTHREADID
_CTHREADS_CGETCURRENTTHREADID$$TTHREADID:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	call	L_pthread_self$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CTHREADS_CINITCRITICALSECTION$formal
_CTHREADS_CINITCRITICALSECTION$formal:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	leal	-16(%ebp),%eax
	movl	%eax,(%esp)
	call	L_pthread_mutexattr_init$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj233
	jmp	Lj234
Lj233:
	movl	$2,4(%esp)
	leal	-16(%ebp),%eax
	movl	%eax,(%esp)
	call	L_pthread_mutexattr_settype$stub
	movl	%eax,-20(%ebp)
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	je	Lj241
	jmp	Lj242
Lj241:
	leal	-16(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_pthread_mutex_init$stub
	movl	%eax,-20(%ebp)
	jmp	Lj249
Lj242:
	movl	$0,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_pthread_mutex_init$stub
	movl	%eax,-20(%ebp)
Lj249:
	jmp	Lj256
Lj234:
	movl	$0,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_pthread_mutex_init$stub
	movl	%eax,-20(%ebp)
Lj256:
	leal	-16(%ebp),%eax
	movl	%eax,(%esp)
	call	L_pthread_mutexattr_destroy$stub
	movl	-20(%ebp),%eax
	testl	%eax,%eax
	jne	Lj265
	jmp	Lj266
Lj265:
	call	LFPC_THREADERROR$stub
Lj266:
	leave
	ret

.text
	.align 4
.globl	_CTHREADS_CENTERCRITICALSECTION$formal
_CTHREADS_CENTERCRITICALSECTION$formal:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_pthread_mutex_lock$stub
	testl	%eax,%eax
	jne	Lj269
	jmp	Lj270
Lj269:
	call	LFPC_THREADERROR$stub
Lj270:
	leave
	ret

.text
	.align 4
.globl	_CTHREADS_CTRYENTERCRITICALSECTION$formal$$LONGINT
_CTHREADS_CTRYENTERCRITICALSECTION$formal$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_pthread_mutex_trylock$stub
	testl	%eax,%eax
	je	Lj275
	jmp	Lj276
Lj275:
	movl	$1,-8(%ebp)
	jmp	Lj281
Lj276:
	movl	$0,-8(%ebp)
Lj281:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CTHREADS_CLEAVECRITICALSECTION$formal
_CTHREADS_CLEAVECRITICALSECTION$formal:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_pthread_mutex_unlock$stub
	testl	%eax,%eax
	jne	Lj286
	jmp	Lj287
Lj286:
	call	LFPC_THREADERROR$stub
Lj287:
	leave
	ret

.text
	.align 4
.globl	_CTHREADS_CDONECRITICALSECTION$formal
_CTHREADS_CDONECRITICALSECTION$formal:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	jmp	Lj293
	.align 2
Lj292:
Lj293:
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_pthread_mutex_unlock$stub
	testl	%eax,%eax
	je	Lj292
	jmp	Lj294
Lj294:
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_pthread_mutex_destroy$stub
	testl	%eax,%eax
	jne	Lj297
	jmp	Lj298
Lj297:
	call	LFPC_THREADERROR$stub
Lj298:
	leave
	ret

.text
	.align 4
.globl	_CTHREADS_CSEMAPHOREWAIT$POINTER
_CTHREADS_CSEMAPHOREWAIT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	.align 2
Lj303:
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_sem_wait$stub
	movl	%eax,-8(%ebp)
	call	L_INITC_FPGETCERRNO$$LONGINT$stub
	movl	%eax,-12(%ebp)
	movl	-8(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj305
	jmp	Lj312
Lj312:
	movl	-12(%ebp),%eax
	cmpl	$4,%eax
	jne	Lj305
	jmp	Lj303
Lj305:
	leave
	ret

.text
	.align 4
.globl	_CTHREADS_CSEMAPHOREPOST$POINTER
_CTHREADS_CSEMAPHOREPOST$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_sem_post$stub
	leave
	ret

.text
	.align 4
.globl	_CTHREADS_CSEMAPHORETRYWAIT$POINTER$$TTRYWAITRESULT
_CTHREADS_CSEMAPHORETRYWAIT$POINTER$$TTRYWAITRESULT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	.align 2
Lj319:
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_sem_trywait$stub
	movl	%eax,-12(%ebp)
	call	L_INITC_FPGETCERRNO$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj321
	jmp	Lj328
Lj328:
	movl	-16(%ebp),%eax
	cmpl	$4,%eax
	jne	Lj321
	jmp	Lj319
Lj321:
	movl	-12(%ebp),%eax
	testl	%eax,%eax
	je	Lj329
	jmp	Lj330
Lj329:
	movl	$1,-8(%ebp)
	jmp	Lj333
Lj330:
	movl	-16(%ebp),%eax
	cmpl	$35,%eax
	je	Lj334
	jmp	Lj335
Lj334:
	movl	$2,-8(%ebp)
	jmp	Lj338
Lj335:
	movl	$0,-8(%ebp)
Lj338:
Lj333:
	movl	-8(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CTHREADS_CINTSEMAPHOREOPEN$PCHAR$BOOLEAN$$POINTER
_CTHREADS_CINTSEMAPHOREOPEN$PCHAR$BOOLEAN$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	.align 2
Lj343:
	movl	$0,8(%esp)
	movl	$512,4(%esp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	movzbl	-8(%ebp),%eax
	movl	%eax,12(%esp)
	call	L_sem_open$stub
	movl	%eax,-12(%ebp)
	call	L_INITC_FPGETCERRNO$$LONGINT$stub
	movl	%eax,-16(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj345
	jmp	Lj360
Lj360:
	movl	-16(%ebp),%eax
	cmpl	$4,%eax
	jne	Lj345
	jmp	Lj343
Lj345:
	movl	-12(%ebp),%eax
	cmpl	$-1,%eax
	jne	Lj361
	jmp	Lj362
Lj361:
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_sem_unlink$stub
	jmp	Lj365
Lj362:
	movl	$0,-12(%ebp)
Lj365:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CTHREADS_CINTSEMAPHOREINIT$BOOLEAN$$POINTER
_CTHREADS_CINTSEMAPHOREINIT$BOOLEAN$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$904,%esp
	movl	%ebx,-896(%ebp)
	call	Lj369
Lj369:
	popl	%ebx
	movb	%al,-4(%ebp)
	movl	$63,(%esp)
	call	LFPC_SYSC_GETPID$stub
	leal	-104(%ebp),%ecx
	movl	$-1,%edx
	call	Lfpc_shortstr_sint$stub
	movl	$31,(%esp)
	call	L_pthread_self$stub
	leal	-40(%ebp),%ecx
	movl	$-1,%edx
	call	Lfpc_shortstr_uint$stub
	movl	$4,(%esp)
	movl	L_$CTHREADS$_Ld1$non_lazy_ptr-Lj369(%ebx),%eax
	movl	%eax,-380(%ebp)
	leal	-104(%ebp),%ecx
	leal	-636(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	leal	-636(%ebp),%eax
	movl	%eax,-376(%ebp)
	movl	L_$CTHREADS$_Ld2$non_lazy_ptr-Lj369(%ebx),%eax
	movl	%eax,-372(%ebp)
	leal	-40(%ebp),%ecx
	leal	-892(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	leal	-892(%ebp),%eax
	movl	%eax,-368(%ebp)
	movl	L_$CTHREADS$_Ld3$non_lazy_ptr-Lj369(%ebx),%eax
	movl	%eax,-364(%ebp)
	leal	-380(%ebp),%ecx
	leal	-360(%ebp),%eax
	movl	$255,%edx
	call	Lfpc_shortstr_concat_multi$stub
	leal	-360(%ebp),%ecx
	leal	-104(%ebp),%eax
	movl	$63,%edx
	call	Lfpc_shortstr_to_shortstr$stub
	leal	-103(%ebp),%eax
	movb	-4(%ebp),%dl
	call	L_CTHREADS_CINTSEMAPHOREOPEN$PCHAR$BOOLEAN$$POINTER$stub
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	-896(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_CTHREADS_CSEMAPHOREINIT$$POINTER
_CTHREADS_CSEMAPHOREINIT$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movb	$0,%al
	call	L_CTHREADS_CINTSEMAPHOREINIT$BOOLEAN$$POINTER$stub
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CTHREADS_CSEMAPHOREDESTROY$POINTER
_CTHREADS_CSEMAPHOREDESTROY$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_sem_close$stub
	leave
	ret

.text
	.align 4
.globl	_CTHREADS_INTBASICEVENTCREATE$POINTER$BOOLEAN$BOOLEAN$ANSISTRING$$POINTER
_CTHREADS_INTBASICEVENTCREATE$POINTER$BOOLEAN$BOOLEAN$ANSISTRING$$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$40,%esp
	movl	%eax,-4(%ebp)
	movb	%dl,-8(%ebp)
	movb	%cl,-12(%ebp)
	movl	$80,%eax
	call	Lfpc_getmem$stub
	movl	%eax,-16(%ebp)
	movl	-16(%ebp),%eax
	movb	-8(%ebp),%dl
	movb	%dl,77(%eax)
	movl	-16(%ebp),%eax
	movl	$0,72(%eax)
	movl	-16(%ebp),%eax
	movb	$0,78(%eax)
	movl	-16(%ebp),%eax
	movb	-12(%ebp),%dl
	movb	%dl,76(%eax)
	movl	$0,4(%esp)
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	call	L_pthread_cond_init$stub
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	jne	Lj450
	jmp	Lj451
Lj450:
	movl	-16(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	call	LFPC_THREADERROR$stub
Lj451:
	leal	-28(%ebp),%eax
	movl	%eax,(%esp)
	call	L_pthread_mutexattr_init$stub
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	je	Lj458
	jmp	Lj459
Lj458:
	movl	$2,4(%esp)
	leal	-28(%ebp),%eax
	movl	%eax,(%esp)
	call	L_pthread_mutexattr_settype$stub
	movl	%eax,-32(%ebp)
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	je	Lj466
	jmp	Lj467
Lj466:
	leal	-28(%ebp),%eax
	movl	%eax,4(%esp)
	movl	-16(%ebp),%eax
	leal	28(%eax),%eax
	movl	%eax,(%esp)
	call	L_pthread_mutex_init$stub
	movl	%eax,-32(%ebp)
	jmp	Lj474
Lj467:
	movl	$0,4(%esp)
	movl	-16(%ebp),%eax
	leal	28(%eax),%eax
	movl	%eax,(%esp)
	call	L_pthread_mutex_init$stub
	movl	%eax,-32(%ebp)
Lj474:
	jmp	Lj481
Lj459:
	movl	$0,4(%esp)
	movl	-16(%ebp),%eax
	leal	28(%eax),%eax
	movl	%eax,(%esp)
	call	L_pthread_mutex_init$stub
	movl	%eax,-32(%ebp)
Lj481:
	leal	-28(%ebp),%eax
	movl	%eax,(%esp)
	call	L_pthread_mutexattr_destroy$stub
	movl	-32(%ebp),%eax
	testl	%eax,%eax
	jne	Lj490
	jmp	Lj491
Lj490:
	movl	-16(%ebp),%eax
	movl	%eax,(%esp)
	call	L_pthread_cond_destroy$stub
	movl	-16(%ebp),%eax
	call	L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub
	call	LFPC_THREADERROR$stub
Lj491:
	movl	-16(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CTHREADS_INTBASICEVENTDESTROY$POINTER
_CTHREADS_INTBASICEVENTDESTROY$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	28(%eax),%eax
	movl	%eax,(%esp)
	call	L_pthread_mutex_lock$stub
	movl	-4(%ebp),%eax
	movb	$1,78(%eax)
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_pthread_cond_broadcast$stub
	movl	-4(%ebp),%eax
	leal	28(%eax),%eax
	movl	%eax,(%esp)
	call	L_pthread_mutex_unlock$stub
	jmp	Lj507
	.align 2
Lj506:
	call	L_CTHREADS_CTHREADSWITCH$stub
Lj507:
	movl	-4(%ebp),%eax
	movl	72(%eax),%eax
	testl	%eax,%eax
	jne	Lj506
	jmp	Lj508
Lj508:
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_pthread_cond_destroy$stub
	movl	-4(%ebp),%eax
	leal	28(%eax),%eax
	movl	%eax,(%esp)
	call	L_pthread_mutex_destroy$stub
	movl	-4(%ebp),%eax
	call	Lfpc_freemem$stub
	leave
	ret

.text
	.align 4
.globl	_CTHREADS_INTBASICEVENTRESETEVENT$POINTER
_CTHREADS_INTBASICEVENTRESETEVENT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	28(%eax),%eax
	movl	%eax,(%esp)
	call	L_pthread_mutex_lock$stub
	movl	-4(%ebp),%eax
	movb	$0,76(%eax)
	movl	-4(%ebp),%eax
	leal	28(%eax),%eax
	movl	%eax,(%esp)
	call	L_pthread_mutex_unlock$stub
	leave
	ret

.text
	.align 4
.globl	_CTHREADS_INTBASICEVENTSETEVENT$POINTER
_CTHREADS_INTBASICEVENTSETEVENT$POINTER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leal	28(%eax),%eax
	movl	%eax,(%esp)
	call	L_pthread_mutex_lock$stub
	leal	-16(%ebp),%ecx
	leal	-40(%ebp),%edx
	movl	$1,%eax
	call	LFPC_PUSHEXCEPTADDR$stub
	call	LFPC_SETJMP$stub
	movl	%eax,-44(%ebp)
	testl	%eax,%eax
	jne	Lj527
	movl	-4(%ebp),%eax
	movb	$1,76(%eax)
	movl	-4(%ebp),%eax
	movb	77(%eax),%al
	testb	%al,%al
	je	Lj533
	jmp	Lj534
Lj533:
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_pthread_cond_signal$stub
	jmp	Lj537
Lj534:
	movl	-4(%ebp),%eax
	movl	%eax,(%esp)
	call	L_pthread_cond_broadcast$stub
Lj537:
Lj527:
	call	LFPC_POPADDRSTACK$stub
	movl	-4(%ebp),%eax
	leal	28(%eax),%eax
	movl	%eax,(%esp)
	call	L_pthread_mutex_unlock$stub
	movl	-44(%ebp),%eax
	testl	%eax,%eax
	je	Lj528
	decl	%eax
	testl	%eax,%eax
	je	Lj529
Lj529:
	call	LFPC_RERAISE$stub
Lj528:
	leave
	ret

.text
	.align 4
.globl	_CTHREADS_INTBASICEVENTWAITFOR$LONGWORD$POINTER$$LONGINT
_CTHREADS_INTBASICEVENTWAITFOR$LONGWORD$POINTER$$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-8(%ebp),%eax
	leal	28(%eax),%eax
	movl	%eax,(%esp)
	call	L_pthread_mutex_lock$stub
	movl	-8(%ebp),%eax
	cmpb	$0,78(%eax)
	jne	Lj546
	jmp	Lj547
Lj546:
	movl	-8(%ebp),%eax
	leal	28(%eax),%eax
	movl	%eax,(%esp)
	call	L_pthread_mutex_unlock$stub
	movl	$2,-12(%ebp)
	jmp	Lj542
Lj547:
	movl	-8(%ebp),%eax
	leal	72(%eax),%eax
	call	L_SYSTEM_INTERLOCKEDINCREMENT$LONGINT$$LONGINT$stub
	movl	-4(%ebp),%eax
	cmpl	$-1,%eax
	je	Lj554
	jmp	Lj555
Lj554:
	jmp	Lj557
	.align 2
Lj556:
	movl	-8(%ebp),%eax
	leal	28(%eax),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	L_pthread_cond_wait$stub
Lj557:
	movl	-8(%ebp),%eax
	movb	76(%eax),%al
	testb	%al,%al
	je	Lj563
	jmp	Lj558
Lj563:
	movl	-8(%ebp),%eax
	movb	78(%eax),%al
	testb	%al,%al
	je	Lj556
	jmp	Lj558
Lj558:
	jmp	Lj564
Lj555:
	leal	-36(%ebp),%eax
	movl	$0,%edx
	call	LFPC_SYSC_GETTIMEOFDAY$stub
	movl	-4(%ebp),%ecx
	movl	$274877907,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$6,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	-36(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-20(%ebp)
	movl	-4(%ebp),%eax
	cltd
	movl	$1000,%ecx
	idivl	%ecx
	imull	$1000000,%edx
	movl	-32(%ebp),%eax
	imull	$1000,%eax
	addl	%eax,%edx
	movl	%edx,-16(%ebp)
	movl	-16(%ebp),%eax
	cmpl	$1000000000,%eax
	jge	Lj573
	jmp	Lj574
Lj573:
	incl	-20(%ebp)
	subl	$1000000000,-16(%ebp)
Lj574:
	movl	$0,-24(%ebp)
	jmp	Lj578
	.align 2
Lj577:
	leal	-20(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-8(%ebp),%eax
	leal	28(%eax),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	L_pthread_cond_timedwait$stub
	movl	%eax,-24(%ebp)
Lj578:
	movl	-8(%ebp),%eax
	movb	78(%eax),%al
	testb	%al,%al
	je	Lj589
	jmp	Lj579
Lj589:
	movl	-8(%ebp),%eax
	movb	76(%eax),%al
	testb	%al,%al
	je	Lj588
	jmp	Lj579
Lj588:
	movl	-24(%ebp),%eax
	cmpl	$60,%eax
	jne	Lj577
	jmp	Lj579
Lj579:
Lj564:
	movl	-8(%ebp),%eax
	movb	76(%eax),%al
	movb	%al,-25(%ebp)
	movl	-8(%ebp),%eax
	movb	77(%eax),%al
	testb	%al,%al
	je	Lj592
	jmp	Lj593
Lj592:
	movl	-8(%ebp),%eax
	movb	$0,76(%eax)
Lj593:
	movl	-8(%ebp),%eax
	cmpb	$0,78(%eax)
	jne	Lj596
	jmp	Lj597
Lj596:
	movl	$2,-12(%ebp)
	jmp	Lj600
Lj597:
	cmpb	$0,-25(%ebp)
	jne	Lj601
	jmp	Lj602
Lj601:
	movl	$0,-12(%ebp)
	jmp	Lj605
Lj602:
	movl	-24(%ebp),%eax
	cmpl	$60,%eax
	je	Lj606
	jmp	Lj607
Lj606:
	movl	$1,-12(%ebp)
	jmp	Lj610
Lj607:
	movl	$3,-12(%ebp)
Lj610:
Lj605:
Lj600:
	movl	-8(%ebp),%eax
	leal	28(%eax),%eax
	movl	%eax,(%esp)
	call	L_pthread_mutex_unlock$stub
	movl	-8(%ebp),%eax
	leal	72(%eax),%eax
	call	L_SYSTEM_INTERLOCKEDDECREMENT$LONGINT$$LONGINT$stub
Lj542:
	movl	-12(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CTHREADS_INTRTLEVENTCREATE$$PRTLEVENT
_CTHREADS_INTRTLEVENTCREATE$$PRTLEVENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	$76,%eax
	call	Lfpc_getmem$stub
	movl	%eax,-8(%ebp)
	movl	$0,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	L_pthread_cond_init$stub
	movl	$0,4(%esp)
	movl	-8(%ebp),%eax
	leal	28(%eax),%eax
	movl	%eax,(%esp)
	call	L_pthread_mutex_init$stub
	movl	-8(%ebp),%eax
	movb	$0,72(%eax)
	movl	-8(%ebp),%eax
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	leave
	ret

.text
	.align 4
.globl	_CTHREADS_INTRTLEVENTDESTROY$PRTLEVENT
_CTHREADS_INTRTLEVENTDESTROY$PRTLEVENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	L_pthread_cond_destroy$stub
	movl	-8(%ebp),%eax
	leal	28(%eax),%eax
	movl	%eax,(%esp)
	call	L_pthread_mutex_destroy$stub
	movl	-8(%ebp),%eax
	call	Lfpc_freemem$stub
	leave
	ret

.text
	.align 4
.globl	_CTHREADS_INTRTLEVENTSETEVENT$PRTLEVENT
_CTHREADS_INTRTLEVENTSETEVENT$PRTLEVENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leal	28(%eax),%eax
	movl	%eax,(%esp)
	call	L_pthread_mutex_lock$stub
	movl	-8(%ebp),%eax
	movb	$1,72(%eax)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	L_pthread_cond_signal$stub
	movl	-8(%ebp),%eax
	leal	28(%eax),%eax
	movl	%eax,(%esp)
	call	L_pthread_mutex_unlock$stub
	leave
	ret

.text
	.align 4
.globl	_CTHREADS_INTRTLEVENTRESETEVENT$PRTLEVENT
_CTHREADS_INTRTLEVENTRESETEVENT$PRTLEVENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leal	28(%eax),%eax
	movl	%eax,(%esp)
	call	L_pthread_mutex_lock$stub
	movl	-8(%ebp),%eax
	movb	$0,72(%eax)
	movl	-8(%ebp),%eax
	leal	28(%eax),%eax
	movl	%eax,(%esp)
	call	L_pthread_mutex_unlock$stub
	leave
	ret

.text
	.align 4
.globl	_CTHREADS_INTRTLEVENTWAITFOR$PRTLEVENT
_CTHREADS_INTRTLEVENTWAITFOR$PRTLEVENT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%eax,-4(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-8(%ebp)
	movl	-8(%ebp),%eax
	leal	28(%eax),%eax
	movl	%eax,(%esp)
	call	L_pthread_mutex_lock$stub
	jmp	Lj676
	.align 2
Lj675:
	movl	-8(%ebp),%eax
	leal	28(%eax),%eax
	movl	%eax,4(%esp)
	movl	-8(%ebp),%eax
	movl	%eax,(%esp)
	call	L_pthread_cond_wait$stub
Lj676:
	movl	-8(%ebp),%eax
	cmpb	$0,72(%eax)
	jne	Lj677
	jmp	Lj675
Lj677:
	movl	-8(%ebp),%eax
	movb	$0,72(%eax)
	movl	-8(%ebp),%eax
	leal	28(%eax),%eax
	movl	%eax,(%esp)
	call	L_pthread_mutex_unlock$stub
	leave
	ret

.text
	.align 4
.globl	_CTHREADS_INTRTLEVENTWAITFORTIMEOUT$PRTLEVENT$LONGINT
_CTHREADS_INTRTLEVENTWAITFORTIMEOUT$PRTLEVENT$LONGINT:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$56,%esp
	movl	%eax,-4(%ebp)
	movl	%edx,-8(%ebp)
	movl	-4(%ebp),%eax
	movl	%eax,-12(%ebp)
	leal	-32(%ebp),%eax
	movl	$0,%edx
	call	LFPC_SYSC_GETTIMEOFDAY$stub
	movl	-8(%ebp),%ecx
	movl	$274877907,%eax
	imull	%ecx
	movl	%ecx,%eax
	sarl	$6,%edx
	shrl	$31,%eax
	addl	%eax,%edx
	movl	-32(%ebp),%eax
	addl	%eax,%edx
	movl	%edx,-24(%ebp)
	movl	-8(%ebp),%eax
	cltd
	movl	$1000,%ecx
	idivl	%ecx
	imull	$1000000,%edx
	movl	-28(%ebp),%eax
	imull	$1000,%eax
	addl	%eax,%edx
	movl	%edx,-20(%ebp)
	movl	-20(%ebp),%eax
	cmpl	$1000000000,%eax
	jge	Lj698
	jmp	Lj699
Lj698:
	incl	-24(%ebp)
	subl	$1000000000,-20(%ebp)
Lj699:
	movl	$0,-16(%ebp)
	movl	-12(%ebp),%eax
	leal	28(%eax),%eax
	movl	%eax,(%esp)
	call	L_pthread_mutex_lock$stub
	jmp	Lj705
	.align 2
Lj704:
	leal	-24(%ebp),%eax
	movl	%eax,8(%esp)
	movl	-12(%ebp),%eax
	leal	28(%eax),%eax
	movl	%eax,4(%esp)
	movl	-12(%ebp),%eax
	movl	%eax,(%esp)
	call	L_pthread_cond_timedwait$stub
	movl	%eax,-16(%ebp)
Lj705:
	movl	-12(%ebp),%eax
	movb	72(%eax),%al
	testb	%al,%al
	je	Lj715
	jmp	Lj706
Lj715:
	movl	-16(%ebp),%eax
	cmpl	$60,%eax
	jne	Lj704
	jmp	Lj706
Lj706:
	movl	-12(%ebp),%eax
	movb	$0,72(%eax)
	movl	-12(%ebp),%eax
	leal	28(%eax),%eax
	movl	%eax,(%esp)
	call	L_pthread_mutex_unlock$stub
	leave
	ret

.text
	.align 4
.globl	_CTHREADS_CINITTHREADS$$BOOLEAN
_CTHREADS_CINITTHREADS$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$24,%esp
	movl	%ebx,-12(%ebp)
	movl	%esi,-8(%ebp)
	call	Lj721
Lj721:
	popl	%esi
	movb	$1,-1(%ebp)
	call	L_pthread_self$stub
	movl	%eax,%ebx
	movl	LFPC_THREADVAR_RELOCATE$non_lazy_ptr-Lj721(%esi),%eax
	movl	(%eax),%edx
	testl	%edx,%edx
	je	Lj726
	movl	L_U_SYSTEM_THREADID$non_lazy_ptr-Lj721(%esi),%ecx
	movl	(%ecx),%eax
	call	*%edx
	jmp	Lj727
Lj726:
	movl	L_U_SYSTEM_THREADID$non_lazy_ptr-Lj721(%esi),%edx
	leal	4(%edx),%eax
Lj727:
	movl	%ebx,(%eax)
	movb	-1(%ebp),%al
	movl	-12(%ebp),%ebx
	movl	-8(%ebp),%esi
	leave
	ret

.text
	.align 4
.globl	_CTHREADS_CDONETHREADS$$BOOLEAN
_CTHREADS_CDONETHREADS$$BOOLEAN:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movb	$1,-1(%ebp)
	movb	-1(%ebp),%al
	leave
	ret

.text
	.align 4
.globl	_CTHREADS_SETCTHREADMANAGER
_CTHREADS_SETCTHREADMANAGER:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-4(%ebp)
	call	Lj733
Lj733:
	popl	%ebx
	movl	L_CTHREADS_CINITTHREADS$$BOOLEAN$non_lazy_ptr-Lj733(%ebx),%eax
	movl	L_U_CTHREADS_CTHREADMANAGER$non_lazy_ptr-Lj733(%ebx),%edx
	movl	%eax,(%edx)
	movl	L_CTHREADS_CDONETHREADS$$BOOLEAN$non_lazy_ptr-Lj733(%ebx),%eax
	movl	L_U_CTHREADS_CTHREADMANAGER$non_lazy_ptr-Lj733(%ebx),%edx
	movl	%eax,4(%edx)
	movl	L_CTHREADS_CBEGINTHREAD$crc02DF303E$non_lazy_ptr-Lj733(%ebx),%eax
	movl	L_U_CTHREADS_CTHREADMANAGER$non_lazy_ptr-Lj733(%ebx),%edx
	movl	%eax,8(%edx)
	movl	L_CTHREADS_CENDTHREAD$LONGWORD$non_lazy_ptr-Lj733(%ebx),%eax
	movl	L_U_CTHREADS_CTHREADMANAGER$non_lazy_ptr-Lj733(%ebx),%edx
	movl	%eax,12(%edx)
	movl	L_CTHREADS_CSUSPENDTHREAD$TTHREADID$$LONGWORD$non_lazy_ptr-Lj733(%ebx),%eax
	movl	L_U_CTHREADS_CTHREADMANAGER$non_lazy_ptr-Lj733(%ebx),%edx
	movl	%eax,16(%edx)
	movl	L_CTHREADS_CRESUMETHREAD$TTHREADID$$LONGWORD$non_lazy_ptr-Lj733(%ebx),%eax
	movl	L_U_CTHREADS_CTHREADMANAGER$non_lazy_ptr-Lj733(%ebx),%edx
	movl	%eax,20(%edx)
	movl	L_CTHREADS_CKILLTHREAD$TTHREADID$$LONGWORD$non_lazy_ptr-Lj733(%ebx),%eax
	movl	L_U_CTHREADS_CTHREADMANAGER$non_lazy_ptr-Lj733(%ebx),%edx
	movl	%eax,24(%edx)
	movl	L_CTHREADS_CTHREADSWITCH$non_lazy_ptr-Lj733(%ebx),%eax
	movl	L_U_CTHREADS_CTHREADMANAGER$non_lazy_ptr-Lj733(%ebx),%edx
	movl	%eax,32(%edx)
	movl	L_CTHREADS_CCLOSETHREAD$TTHREADID$$LONGWORD$non_lazy_ptr-Lj733(%ebx),%eax
	movl	L_U_CTHREADS_CTHREADMANAGER$non_lazy_ptr-Lj733(%ebx),%edx
	movl	%eax,28(%edx)
	movl	L_CTHREADS_CWAITFORTHREADTERMINATE$TTHREADID$LONGINT$$LONGWORD$non_lazy_ptr-Lj733(%ebx),%eax
	movl	L_U_CTHREADS_CTHREADMANAGER$non_lazy_ptr-Lj733(%ebx),%edx
	movl	%eax,36(%edx)
	movl	L_CTHREADS_CTHREADSETPRIORITY$TTHREADID$LONGINT$$BOOLEAN$non_lazy_ptr-Lj733(%ebx),%eax
	movl	L_U_CTHREADS_CTHREADMANAGER$non_lazy_ptr-Lj733(%ebx),%edx
	movl	%eax,40(%edx)
	movl	L_CTHREADS_CTHREADGETPRIORITY$TTHREADID$$LONGINT$non_lazy_ptr-Lj733(%ebx),%eax
	movl	L_U_CTHREADS_CTHREADMANAGER$non_lazy_ptr-Lj733(%ebx),%edx
	movl	%eax,44(%edx)
	movl	L_CTHREADS_CGETCURRENTTHREADID$$TTHREADID$non_lazy_ptr-Lj733(%ebx),%eax
	movl	L_U_CTHREADS_CTHREADMANAGER$non_lazy_ptr-Lj733(%ebx),%edx
	movl	%eax,48(%edx)
	movl	L_CTHREADS_CINITCRITICALSECTION$formal$non_lazy_ptr-Lj733(%ebx),%eax
	movl	L_U_CTHREADS_CTHREADMANAGER$non_lazy_ptr-Lj733(%ebx),%edx
	movl	%eax,52(%edx)
	movl	L_CTHREADS_CDONECRITICALSECTION$formal$non_lazy_ptr-Lj733(%ebx),%eax
	movl	L_U_CTHREADS_CTHREADMANAGER$non_lazy_ptr-Lj733(%ebx),%edx
	movl	%eax,56(%edx)
	movl	L_CTHREADS_CENTERCRITICALSECTION$formal$non_lazy_ptr-Lj733(%ebx),%eax
	movl	L_U_CTHREADS_CTHREADMANAGER$non_lazy_ptr-Lj733(%ebx),%edx
	movl	%eax,60(%edx)
	movl	L_CTHREADS_CTRYENTERCRITICALSECTION$formal$$LONGINT$non_lazy_ptr-Lj733(%ebx),%eax
	movl	L_U_CTHREADS_CTHREADMANAGER$non_lazy_ptr-Lj733(%ebx),%edx
	movl	%eax,64(%edx)
	movl	L_CTHREADS_CLEAVECRITICALSECTION$formal$non_lazy_ptr-Lj733(%ebx),%eax
	movl	L_U_CTHREADS_CTHREADMANAGER$non_lazy_ptr-Lj733(%ebx),%edx
	movl	%eax,68(%edx)
	movl	L_CTHREADS_CINITTHREADVAR$LONGWORD$LONGWORD$non_lazy_ptr-Lj733(%ebx),%eax
	movl	L_U_CTHREADS_CTHREADMANAGER$non_lazy_ptr-Lj733(%ebx),%edx
	movl	%eax,72(%edx)
	movl	L_CTHREADS_CRELOCATETHREADVAR$LONGWORD$$POINTER$non_lazy_ptr-Lj733(%ebx),%eax
	movl	L_U_CTHREADS_CTHREADMANAGER$non_lazy_ptr-Lj733(%ebx),%edx
	movl	%eax,76(%edx)
	movl	L_CTHREADS_CALLOCATETHREADVARS$non_lazy_ptr-Lj733(%ebx),%eax
	movl	L_U_CTHREADS_CTHREADMANAGER$non_lazy_ptr-Lj733(%ebx),%edx
	movl	%eax,80(%edx)
	movl	L_CTHREADS_CRELEASETHREADVARS$non_lazy_ptr-Lj733(%ebx),%eax
	movl	L_U_CTHREADS_CTHREADMANAGER$non_lazy_ptr-Lj733(%ebx),%edx
	movl	%eax,84(%edx)
	movl	L_CTHREADS_INTBASICEVENTCREATE$POINTER$BOOLEAN$BOOLEAN$ANSISTRING$$POINTER$non_lazy_ptr-Lj733(%ebx),%eax
	movl	L_U_CTHREADS_CTHREADMANAGER$non_lazy_ptr-Lj733(%ebx),%edx
	movl	%eax,88(%edx)
	movl	L_CTHREADS_INTBASICEVENTDESTROY$POINTER$non_lazy_ptr-Lj733(%ebx),%eax
	movl	L_U_CTHREADS_CTHREADMANAGER$non_lazy_ptr-Lj733(%ebx),%edx
	movl	%eax,92(%edx)
	movl	L_CTHREADS_INTBASICEVENTRESETEVENT$POINTER$non_lazy_ptr-Lj733(%ebx),%eax
	movl	L_U_CTHREADS_CTHREADMANAGER$non_lazy_ptr-Lj733(%ebx),%edx
	movl	%eax,96(%edx)
	movl	L_CTHREADS_INTBASICEVENTSETEVENT$POINTER$non_lazy_ptr-Lj733(%ebx),%eax
	movl	L_U_CTHREADS_CTHREADMANAGER$non_lazy_ptr-Lj733(%ebx),%edx
	movl	%eax,100(%edx)
	movl	L_CTHREADS_INTBASICEVENTWAITFOR$LONGWORD$POINTER$$LONGINT$non_lazy_ptr-Lj733(%ebx),%eax
	movl	L_U_CTHREADS_CTHREADMANAGER$non_lazy_ptr-Lj733(%ebx),%edx
	movl	%eax,104(%edx)
	movl	L_CTHREADS_INTRTLEVENTCREATE$$PRTLEVENT$non_lazy_ptr-Lj733(%ebx),%eax
	movl	L_U_CTHREADS_CTHREADMANAGER$non_lazy_ptr-Lj733(%ebx),%edx
	movl	%eax,108(%edx)
	movl	L_CTHREADS_INTRTLEVENTDESTROY$PRTLEVENT$non_lazy_ptr-Lj733(%ebx),%eax
	movl	L_U_CTHREADS_CTHREADMANAGER$non_lazy_ptr-Lj733(%ebx),%edx
	movl	%eax,112(%edx)
	movl	L_CTHREADS_INTRTLEVENTSETEVENT$PRTLEVENT$non_lazy_ptr-Lj733(%ebx),%eax
	movl	L_U_CTHREADS_CTHREADMANAGER$non_lazy_ptr-Lj733(%ebx),%edx
	movl	%eax,116(%edx)
	movl	L_CTHREADS_INTRTLEVENTRESETEVENT$PRTLEVENT$non_lazy_ptr-Lj733(%ebx),%eax
	movl	L_U_CTHREADS_CTHREADMANAGER$non_lazy_ptr-Lj733(%ebx),%edx
	movl	%eax,120(%edx)
	movl	L_CTHREADS_INTRTLEVENTWAITFORTIMEOUT$PRTLEVENT$LONGINT$non_lazy_ptr-Lj733(%ebx),%eax
	movl	L_U_CTHREADS_CTHREADMANAGER$non_lazy_ptr-Lj733(%ebx),%edx
	movl	%eax,132(%edx)
	movl	L_CTHREADS_INTRTLEVENTWAITFOR$PRTLEVENT$non_lazy_ptr-Lj733(%ebx),%eax
	movl	L_U_CTHREADS_CTHREADMANAGER$non_lazy_ptr-Lj733(%ebx),%edx
	movl	%eax,124(%edx)
	movl	L_CTHREADS_CSEMAPHOREINIT$$POINTER$non_lazy_ptr-Lj733(%ebx),%eax
	movl	L_U_CTHREADS_CTHREADMANAGER$non_lazy_ptr-Lj733(%ebx),%edx
	movl	%eax,136(%edx)
	movl	L_CTHREADS_CSEMAPHOREDESTROY$POINTER$non_lazy_ptr-Lj733(%ebx),%eax
	movl	L_U_CTHREADS_CTHREADMANAGER$non_lazy_ptr-Lj733(%ebx),%edx
	movl	%eax,140(%edx)
	movl	L_CTHREADS_CSEMAPHOREWAIT$POINTER$non_lazy_ptr-Lj733(%ebx),%eax
	movl	L_U_CTHREADS_CTHREADMANAGER$non_lazy_ptr-Lj733(%ebx),%edx
	movl	%eax,148(%edx)
	movl	L_CTHREADS_CSEMAPHOREPOST$POINTER$non_lazy_ptr-Lj733(%ebx),%eax
	movl	L_U_CTHREADS_CTHREADMANAGER$non_lazy_ptr-Lj733(%ebx),%edx
	movl	%eax,144(%edx)
	movl	L_U_CTHREADS_CTHREADMANAGER$non_lazy_ptr-Lj733(%ebx),%eax
	call	L_SYSTEM_SETTHREADMANAGER$TTHREADMANAGER$$BOOLEAN$stub
	movl	-4(%ebp),%ebx
	leave
	ret

.text
	.align 4
.globl	_INIT$_CTHREADS
_INIT$_CTHREADS:
.reference __CTHREADS_init
.globl	__CTHREADS_init
__CTHREADS_init:
.reference _INIT$_CTHREADS
	pushl	%ebp
	movl	%esp,%ebp
	subl	$8,%esp
	movl	%ebx,-8(%ebp)
	movl	%esi,-4(%ebp)
	call	Lj2
Lj2:
	popl	%esi
	movl	L_TC_SYSTEM_THREADINGALREADYUSED$non_lazy_ptr-Lj2(%esi),%eax
	cmpb	$0,(%eax)
	jne	Lj812
	jmp	Lj813
Lj812:
	call	Lfpc_get_output$stub
	movl	%eax,%ebx
	movl	%ebx,%edx
	movl	L_$CTHREADS$_Ld4$non_lazy_ptr-Lj2(%esi),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	%ebx,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
	call	Lfpc_get_output$stub
	movl	%eax,%ebx
	movl	%ebx,%edx
	movl	L_$CTHREADS$_Ld5$non_lazy_ptr-Lj2(%esi),%ecx
	movl	$0,%eax
	call	Lfpc_write_text_shortstr$stub
	call	LFPC_IOCHECK$stub
	movl	%ebx,%eax
	call	Lfpc_writeln_end$stub
	call	LFPC_IOCHECK$stub
	movw	$211,%ax
	call	L_SYSTEM_RUNERROR$WORD$stub
Lj813:
	call	L_CTHREADS_SETCTHREADMANAGER$stub
	movl	-8(%ebp),%ebx
	movl	-4(%ebp),%esi
	leave
	ret
# End asmlist al_procedures
# Begin asmlist al_globals


	.align 2
.globl _U_CTHREADS_TLSKEY
.data
.zerofill __DATA, __common, _U_CTHREADS_TLSKEY, 4,2




	.align 2
.globl _U_CTHREADS_CLEANUPKEY
.data
.zerofill __DATA, __common, _U_CTHREADS_CLEANUPKEY, 4,2




	.align 2
.globl _U_CTHREADS_CTHREADMANAGER
.data
.zerofill __DATA, __common, _U_CTHREADS_CTHREADMANAGER, 152,2



.data
	.align 2
.globl	_THREADVARLIST_CTHREADS
_THREADVARLIST_CTHREADS:
	.long	0
# End asmlist al_globals
# Begin asmlist al_const
# End asmlist al_const
# Begin asmlist al_typedconsts

.data
	.align 2
.globl	_TC_CTHREADS_THREADVARBLOCKSIZE
_TC_CTHREADS_THREADVARBLOCKSIZE:
	.long	0

.const
	.align 2
.globl	_$CTHREADS$_Ld1
_$CTHREADS$_Ld1:
	.ascii	"\004/FPC\000"

.const
	.align 2
.globl	_$CTHREADS$_Ld2
_$CTHREADS$_Ld2:
	.ascii	"\001T\000"

.const
	.align 2
.globl	_$CTHREADS$_Ld3
_$CTHREADS$_Ld3:
	.ascii	"\001\000\000"

.const
	.align 2
.globl	_$CTHREADS$_Ld4
_$CTHREADS$_Ld4:
	.ascii	"8Threading has been used before cthreads was initia"
	.ascii	"lized.\000"

.const
	.align 2
.globl	_$CTHREADS$_Ld5
_$CTHREADS$_Ld5:
	.ascii	"9Make cthreads one of the first units in your uses "
	.ascii	"clause.\000"
# End asmlist al_typedconsts
# Begin asmlist al_rotypedconsts
# End asmlist al_rotypedconsts
# Begin asmlist al_threadvars
# End asmlist al_threadvars
# Begin asmlist al_imports

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_MMAP$stub:
.indirect_symbol FPC_SYSC_MMAP
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_FILLCHAR$formal$LONGINT$BYTE$stub:
.indirect_symbol _SYSTEM_FILLCHAR$formal$LONGINT$BYTE
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_pthread_setspecific$stub:
.indirect_symbol _pthread_setspecific
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_DONETHREAD$stub:
.indirect_symbol _SYSTEM_DONETHREAD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CTHREADS_CALLOCATETHREADVARS$stub:
.indirect_symbol _CTHREADS_CALLOCATETHREADVARS
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_INITTHREAD$LONGWORD$stub:
.indirect_symbol _SYSTEM_INITTHREAD$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_pthread_getspecific$stub:
.indirect_symbol _pthread_getspecific
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CTHREADS_HOOKTHREAD$stub:
.indirect_symbol _CTHREADS_HOOKTHREAD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_MUNMAP$stub:
.indirect_symbol FPC_SYSC_MUNMAP
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPSIGEMPTYSET$SIGSET_T$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPSIGEMPTYSET$SIGSET_T$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_BASEUNIX_FPSIGADDSET$SIGSET_T$LONGINT$$LONGINT$stub:
.indirect_symbol _BASEUNIX_FPSIGADDSET$SIGSET_T$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_pthread_sigmask$stub:
.indirect_symbol _pthread_sigmask
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_freemem$stub:
.indirect_symbol fpc_freemem
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_pthread_exit$stub:
.indirect_symbol _pthread_exit
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_INTERLOCKEDEXCHANGE$LONGINT$LONGINT$$LONGINT$stub:
.indirect_symbol _SYSTEM_INTERLOCKEDEXCHANGE$LONGINT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_pthread_key_create$stub:
.indirect_symbol _pthread_key_create
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_INITTHREADVARS$POINTER$stub:
.indirect_symbol _SYSTEM_INITTHREADVARS$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_getmem$stub:
.indirect_symbol fpc_getmem
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_pthread_attr_init$stub:
.indirect_symbol _pthread_attr_init
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_pthread_attr_setinheritsched$stub:
.indirect_symbol _pthread_attr_setinheritsched
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_pthread_attr_setscope$stub:
.indirect_symbol _pthread_attr_setscope
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_pthread_attr_setstacksize$stub:
.indirect_symbol _pthread_attr_setstacksize
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_pthread_create$stub:
.indirect_symbol _pthread_create
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_pthread_self$stub:
.indirect_symbol _pthread_self
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_pthread_detach$stub:
.indirect_symbol _pthread_detach
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_sched_yield$stub:
.indirect_symbol _sched_yield
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_pthread_cancel$stub:
.indirect_symbol _pthread_cancel
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_pthread_join$stub:
.indirect_symbol _pthread_join
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_pthread_mutexattr_init$stub:
.indirect_symbol _pthread_mutexattr_init
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_pthread_mutexattr_settype$stub:
.indirect_symbol _pthread_mutexattr_settype
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_pthread_mutex_init$stub:
.indirect_symbol _pthread_mutex_init
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_pthread_mutexattr_destroy$stub:
.indirect_symbol _pthread_mutexattr_destroy
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_THREADERROR$stub:
.indirect_symbol FPC_THREADERROR
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_pthread_mutex_lock$stub:
.indirect_symbol _pthread_mutex_lock
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_pthread_mutex_trylock$stub:
.indirect_symbol _pthread_mutex_trylock
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_pthread_mutex_unlock$stub:
.indirect_symbol _pthread_mutex_unlock
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_pthread_mutex_destroy$stub:
.indirect_symbol _pthread_mutex_destroy
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_sem_wait$stub:
.indirect_symbol _sem_wait
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_INITC_FPGETCERRNO$$LONGINT$stub:
.indirect_symbol _INITC_FPGETCERRNO$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_sem_post$stub:
.indirect_symbol _sem_post
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_sem_trywait$stub:
.indirect_symbol _sem_trywait
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_sem_open$stub:
.indirect_symbol _sem_open
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_sem_unlink$stub:
.indirect_symbol _sem_unlink
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_GETPID$stub:
.indirect_symbol FPC_SYSC_GETPID
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_sint$stub:
.indirect_symbol fpc_shortstr_sint
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_uint$stub:
.indirect_symbol fpc_shortstr_uint
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_to_shortstr$stub:
.indirect_symbol fpc_shortstr_to_shortstr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_shortstr_concat_multi$stub:
.indirect_symbol fpc_shortstr_concat_multi
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CTHREADS_CINTSEMAPHOREOPEN$PCHAR$BOOLEAN$$POINTER$stub:
.indirect_symbol _CTHREADS_CINTSEMAPHOREOPEN$PCHAR$BOOLEAN$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CTHREADS_CINTSEMAPHOREINIT$BOOLEAN$$POINTER$stub:
.indirect_symbol _CTHREADS_CINTSEMAPHOREINIT$BOOLEAN$$POINTER
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_sem_close$stub:
.indirect_symbol _sem_close
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_pthread_cond_init$stub:
.indirect_symbol _pthread_cond_init
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_FREEMEM$POINTER$$LONGWORD$stub:
.indirect_symbol _SYSTEM_FREEMEM$POINTER$$LONGWORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_pthread_cond_destroy$stub:
.indirect_symbol _pthread_cond_destroy
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_pthread_cond_broadcast$stub:
.indirect_symbol _pthread_cond_broadcast
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CTHREADS_CTHREADSWITCH$stub:
.indirect_symbol _CTHREADS_CTHREADSWITCH
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

L_pthread_cond_signal$stub:
.indirect_symbol _pthread_cond_signal
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

L_SYSTEM_INTERLOCKEDINCREMENT$LONGINT$$LONGINT$stub:
.indirect_symbol _SYSTEM_INTERLOCKEDINCREMENT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_pthread_cond_wait$stub:
.indirect_symbol _pthread_cond_wait
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_SYSC_GETTIMEOFDAY$stub:
.indirect_symbol FPC_SYSC_GETTIMEOFDAY
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_pthread_cond_timedwait$stub:
.indirect_symbol _pthread_cond_timedwait
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_INTERLOCKEDDECREMENT$LONGINT$$LONGINT$stub:
.indirect_symbol _SYSTEM_INTERLOCKEDDECREMENT$LONGINT$$LONGINT
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_SETTHREADMANAGER$TTHREADMANAGER$$BOOLEAN$stub:
.indirect_symbol _SYSTEM_SETTHREADMANAGER$TTHREADMANAGER$$BOOLEAN
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_get_output$stub:
.indirect_symbol fpc_get_output
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_write_text_shortstr$stub:
.indirect_symbol fpc_write_text_shortstr
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

LFPC_IOCHECK$stub:
.indirect_symbol FPC_IOCHECK
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

Lfpc_writeln_end$stub:
.indirect_symbol fpc_writeln_end
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_SYSTEM_RUNERROR$WORD$stub:
.indirect_symbol _SYSTEM_RUNERROR$WORD
	hlt
	hlt
	hlt
	hlt
	hlt

.section __IMPORT,__jump_table,symbol_stubs,self_modifying_code+pure_instructions,5

L_CTHREADS_SETCTHREADMANAGER$stub:
.indirect_symbol _CTHREADS_SETCTHREADMANAGER
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
L_TC_CTHREADS_THREADVARBLOCKSIZE$non_lazy_ptr:
.indirect_symbol _TC_CTHREADS_THREADVARBLOCKSIZE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_CTHREADS_TLSKEY$non_lazy_ptr:
.indirect_symbol _U_CTHREADS_TLSKEY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_CTHREADS_CLEANUPKEY$non_lazy_ptr:
.indirect_symbol _U_CTHREADS_CLEANUPKEY
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_SYSTEM_ISMULTITHREAD$non_lazy_ptr:
.indirect_symbol _TC_SYSTEM_ISMULTITHREAD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CTHREADS_CRELOCATETHREADVAR$LONGWORD$$POINTER$non_lazy_ptr:
.indirect_symbol _CTHREADS_CRELOCATETHREADVAR$LONGWORD$$POINTER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CTHREADS_CTHREADCLEANUP$POINTER$non_lazy_ptr:
.indirect_symbol _CTHREADS_CTHREADCLEANUP$POINTER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CTHREADS_THREADMAIN$POINTER$$POINTER$non_lazy_ptr:
.indirect_symbol _CTHREADS_THREADMAIN$POINTER$$POINTER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$CTHREADS$_Ld1$non_lazy_ptr:
.indirect_symbol _$CTHREADS$_Ld1
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$CTHREADS$_Ld2$non_lazy_ptr:
.indirect_symbol _$CTHREADS$_Ld2
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$CTHREADS$_Ld3$non_lazy_ptr:
.indirect_symbol _$CTHREADS$_Ld3
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
LFPC_THREADVAR_RELOCATE$non_lazy_ptr:
.indirect_symbol FPC_THREADVAR_RELOCATE
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_SYSTEM_THREADID$non_lazy_ptr:
.indirect_symbol _U_SYSTEM_THREADID
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CTHREADS_CINITTHREADS$$BOOLEAN$non_lazy_ptr:
.indirect_symbol _CTHREADS_CINITTHREADS$$BOOLEAN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_U_CTHREADS_CTHREADMANAGER$non_lazy_ptr:
.indirect_symbol _U_CTHREADS_CTHREADMANAGER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CTHREADS_CDONETHREADS$$BOOLEAN$non_lazy_ptr:
.indirect_symbol _CTHREADS_CDONETHREADS$$BOOLEAN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CTHREADS_CBEGINTHREAD$crc02DF303E$non_lazy_ptr:
.indirect_symbol _CTHREADS_CBEGINTHREAD$crc02DF303E
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CTHREADS_CENDTHREAD$LONGWORD$non_lazy_ptr:
.indirect_symbol _CTHREADS_CENDTHREAD$LONGWORD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CTHREADS_CSUSPENDTHREAD$TTHREADID$$LONGWORD$non_lazy_ptr:
.indirect_symbol _CTHREADS_CSUSPENDTHREAD$TTHREADID$$LONGWORD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CTHREADS_CRESUMETHREAD$TTHREADID$$LONGWORD$non_lazy_ptr:
.indirect_symbol _CTHREADS_CRESUMETHREAD$TTHREADID$$LONGWORD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CTHREADS_CKILLTHREAD$TTHREADID$$LONGWORD$non_lazy_ptr:
.indirect_symbol _CTHREADS_CKILLTHREAD$TTHREADID$$LONGWORD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CTHREADS_CTHREADSWITCH$non_lazy_ptr:
.indirect_symbol _CTHREADS_CTHREADSWITCH
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CTHREADS_CCLOSETHREAD$TTHREADID$$LONGWORD$non_lazy_ptr:
.indirect_symbol _CTHREADS_CCLOSETHREAD$TTHREADID$$LONGWORD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CTHREADS_CWAITFORTHREADTERMINATE$TTHREADID$LONGINT$$LONGWORD$non_lazy_ptr:
.indirect_symbol _CTHREADS_CWAITFORTHREADTERMINATE$TTHREADID$LONGINT$$LONGWORD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CTHREADS_CTHREADSETPRIORITY$TTHREADID$LONGINT$$BOOLEAN$non_lazy_ptr:
.indirect_symbol _CTHREADS_CTHREADSETPRIORITY$TTHREADID$LONGINT$$BOOLEAN
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CTHREADS_CTHREADGETPRIORITY$TTHREADID$$LONGINT$non_lazy_ptr:
.indirect_symbol _CTHREADS_CTHREADGETPRIORITY$TTHREADID$$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CTHREADS_CGETCURRENTTHREADID$$TTHREADID$non_lazy_ptr:
.indirect_symbol _CTHREADS_CGETCURRENTTHREADID$$TTHREADID
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CTHREADS_CINITCRITICALSECTION$formal$non_lazy_ptr:
.indirect_symbol _CTHREADS_CINITCRITICALSECTION$formal
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CTHREADS_CDONECRITICALSECTION$formal$non_lazy_ptr:
.indirect_symbol _CTHREADS_CDONECRITICALSECTION$formal
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CTHREADS_CENTERCRITICALSECTION$formal$non_lazy_ptr:
.indirect_symbol _CTHREADS_CENTERCRITICALSECTION$formal
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CTHREADS_CTRYENTERCRITICALSECTION$formal$$LONGINT$non_lazy_ptr:
.indirect_symbol _CTHREADS_CTRYENTERCRITICALSECTION$formal$$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CTHREADS_CLEAVECRITICALSECTION$formal$non_lazy_ptr:
.indirect_symbol _CTHREADS_CLEAVECRITICALSECTION$formal
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CTHREADS_CINITTHREADVAR$LONGWORD$LONGWORD$non_lazy_ptr:
.indirect_symbol _CTHREADS_CINITTHREADVAR$LONGWORD$LONGWORD
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CTHREADS_CALLOCATETHREADVARS$non_lazy_ptr:
.indirect_symbol _CTHREADS_CALLOCATETHREADVARS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CTHREADS_CRELEASETHREADVARS$non_lazy_ptr:
.indirect_symbol _CTHREADS_CRELEASETHREADVARS
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CTHREADS_INTBASICEVENTCREATE$POINTER$BOOLEAN$BOOLEAN$ANSISTRING$$POINTER$non_lazy_ptr:
.indirect_symbol _CTHREADS_INTBASICEVENTCREATE$POINTER$BOOLEAN$BOOLEAN$ANSISTRING$$POINTER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CTHREADS_INTBASICEVENTDESTROY$POINTER$non_lazy_ptr:
.indirect_symbol _CTHREADS_INTBASICEVENTDESTROY$POINTER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CTHREADS_INTBASICEVENTRESETEVENT$POINTER$non_lazy_ptr:
.indirect_symbol _CTHREADS_INTBASICEVENTRESETEVENT$POINTER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CTHREADS_INTBASICEVENTSETEVENT$POINTER$non_lazy_ptr:
.indirect_symbol _CTHREADS_INTBASICEVENTSETEVENT$POINTER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CTHREADS_INTBASICEVENTWAITFOR$LONGWORD$POINTER$$LONGINT$non_lazy_ptr:
.indirect_symbol _CTHREADS_INTBASICEVENTWAITFOR$LONGWORD$POINTER$$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CTHREADS_INTRTLEVENTCREATE$$PRTLEVENT$non_lazy_ptr:
.indirect_symbol _CTHREADS_INTRTLEVENTCREATE$$PRTLEVENT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CTHREADS_INTRTLEVENTDESTROY$PRTLEVENT$non_lazy_ptr:
.indirect_symbol _CTHREADS_INTRTLEVENTDESTROY$PRTLEVENT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CTHREADS_INTRTLEVENTSETEVENT$PRTLEVENT$non_lazy_ptr:
.indirect_symbol _CTHREADS_INTRTLEVENTSETEVENT$PRTLEVENT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CTHREADS_INTRTLEVENTRESETEVENT$PRTLEVENT$non_lazy_ptr:
.indirect_symbol _CTHREADS_INTRTLEVENTRESETEVENT$PRTLEVENT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CTHREADS_INTRTLEVENTWAITFORTIMEOUT$PRTLEVENT$LONGINT$non_lazy_ptr:
.indirect_symbol _CTHREADS_INTRTLEVENTWAITFORTIMEOUT$PRTLEVENT$LONGINT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CTHREADS_INTRTLEVENTWAITFOR$PRTLEVENT$non_lazy_ptr:
.indirect_symbol _CTHREADS_INTRTLEVENTWAITFOR$PRTLEVENT
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CTHREADS_CSEMAPHOREINIT$$POINTER$non_lazy_ptr:
.indirect_symbol _CTHREADS_CSEMAPHOREINIT$$POINTER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CTHREADS_CSEMAPHOREDESTROY$POINTER$non_lazy_ptr:
.indirect_symbol _CTHREADS_CSEMAPHOREDESTROY$POINTER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CTHREADS_CSEMAPHOREWAIT$POINTER$non_lazy_ptr:
.indirect_symbol _CTHREADS_CSEMAPHOREWAIT$POINTER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_CTHREADS_CSEMAPHOREPOST$POINTER$non_lazy_ptr:
.indirect_symbol _CTHREADS_CSEMAPHOREPOST$POINTER
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_TC_SYSTEM_THREADINGALREADYUSED$non_lazy_ptr:
.indirect_symbol _TC_SYSTEM_THREADINGALREADYUSED
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$CTHREADS$_Ld4$non_lazy_ptr:
.indirect_symbol _$CTHREADS$_Ld4
	.long	0

.section __DATA, __nl_symbol_ptr,non_lazy_symbol_pointers
	.align 2
L_$CTHREADS$_Ld5$non_lazy_ptr:
.indirect_symbol _$CTHREADS$_Ld5
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

