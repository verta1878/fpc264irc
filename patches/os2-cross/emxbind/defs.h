/* defs.h -- Minimal EMX type definitions for Linux port of emxbind.
   Provides the basic types emxbind expects from EMX's defs.h. */
#ifndef DEFS_H
#define DEFS_H

/* Block glibc's <sys/user.h> so our EMX struct user takes precedence. */
#define _SYS_USER_H 1

#include <stdint.h>
#include <errno.h>

typedef unsigned char  byte;
typedef unsigned short word;
typedef unsigned int   dword;

#ifndef TRUE
#define TRUE  1
#define FALSE 0
#endif

/* EMX uses these for portability */
#ifndef NULL
#define NULL ((void*)0)
#endif

/* EMX option switch character (command-line). '-' on unix. */
#ifndef EMXBIND_MAIN
extern const char *optswchar;
#endif

#endif /* DEFS_H */


/* Filename utilities from EMX (implemented in the Linux port stubs). */
void _remext(char *fname);
int _path(char *dst, const char *fname);
char *_getext(const char *fname);

/* Pull in the executable format structures */
#include "sys/exe.h"
