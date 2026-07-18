/* sys/moddef.h -- OS/2 module definition parser interface (EMX).
   Minimal Linux port: provides the enum constants and struct layout
   emxbind expects. The parser itself returns EOI (no .def processing),
   which is correct for plain a.out -> LX conversion. */
#ifndef SYS_MODDEF_H
#define SYS_MODDEF_H

/* Module definition statement/token types */
typedef enum {
  _MD_parseerror = -1,
  _MD_EOI = 0,
  _MD_NAME, _MD_LIBRARY, _MD_DESCRIPTION, _MD_STACKSIZE, _MD_HEAPSIZE,
  _MD_CODE, _MD_DATA, _MD_SEGMENTS, _MD_EXPORTS, _MD_IMPORTS,
  _MD_STUB, _MD_EXETYPE, _MD_PROTMODE, _MD_REALMODE, _MD_OLD,
  _MD_BASE, _MD_VIRTUAL, _MD_PHYSICAL
} _md_token;

/* Application type flags (for NAME/LIBRARY statements) */
#define _MDT_DEFAULT          0
#define _MDT_WINDOWCOMPAT     1
#define _MDT_NOTWINDOWCOMPAT  2
#define _MDT_WINDOWAPI        3

/* Import type */
#define _MDIT_DEFAULT   0
#define _MDIT_GLOBAL    1
#define _MDIT_INSTANCE  2

/* Export flags */
#define _MDEP_RESIDENTNAME  1

typedef struct _md _md;

typedef struct {
  _md_token type;
  union {
    struct { char *string; } descr;
    struct { int code; } error;
    struct { char *name; int pmtype; } name;
    struct { int init; int term; } library;
    struct { char *entryname; char *internalname; long ordinal; int flags; } export;
    struct { unsigned long size; } stacksize;
    struct { unsigned long size; } heapsize;
    struct { char *name; int none; } stub;
    struct { unsigned long addr; } base;
    long number;
    char *string;
  };
} _md_stmt;

/* Parser functions. The Linux port returns EOI immediately since
   plain executables don't need .def processing. */
struct _md *_md_open(const char *fname);
void _md_close(struct _md *md);
_md_token _md_next(struct _md *md, _md_stmt *stmt);
const char *_md_errmsg(int code);
int _md_get_linenumber(struct _md *md);
_md_token _md_next_token(struct _md *md);
typedef int (*_md_callback_fn)(struct _md *, const _md_stmt *, _md_token, void *);
int _md_parse(struct _md *md, _md_callback_fn cb, void *arg);

#endif /* SYS_MODDEF_H */
