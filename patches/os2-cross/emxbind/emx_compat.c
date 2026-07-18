/* emx_compat.c -- EMX libc compatibility functions for Linux port.
   Implements the EMX-specific utility and moddef functions that emxbind
   expects. The moddef parser returns EOI (no .def processing needed for
   plain a.out -> LX conversion). */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include "defs.h"
#include "sys/moddef.h"

/* ---- String/filename utilities ---- */

/* Case-insensitive string compare (EMX stricmp). */
int stricmp(const char *a, const char *b) {
  while (*a && *b) {
    int ca = tolower((unsigned char)*a);
    int cb = tolower((unsigned char)*b);
    if (ca != cb) return ca - cb;
    a++; b++;
  }
  return (unsigned char)*a - (unsigned char)*b;
}

/* EMX _strncpy: like strncpy but always null-terminates. */
char *_strncpy(char *dst, const char *src, size_t n) {
  strncpy(dst, src, n);
  if (n > 0) dst[n-1] = 0;
  return dst;
}

/* Remove the extension from a filename in place. */
void _remext(char *fname) {
  char *dot = strrchr(fname, '.');
  char *slash = strrchr(fname, '/');
  if (dot && (!slash || dot > slash))
    *dot = 0;
}

/* Return pointer to the extension (including dot), or end of string. */
char *_getext(const char *fname) {
  char *dot = strrchr((char*)fname, '.');
  char *slash = strrchr((char*)fname, '/');
  if (dot && (!slash || dot > slash))
    return dot;
  return (char*)fname + strlen(fname);
}

/* Set a default extension if none present. */
void _defext(char *fname, const char *ext) {
  char *e = _getext(fname);
  if (*e == 0) {
    strcat(fname, ".");
    strcat(fname, ext);
  }
}

/* Filename comparison (case-insensitive on the whole path). */
int _fncmp(const unsigned char *a, const unsigned char *b) {
  return stricmp((const char*)a, (const char*)b);
}

/* Search PATH for a file. Returns 0 if found (dst filled), nonzero if not.
   This matches EMX's _path() used to locate the emxl loader. For the
   Linux cross-build the loader isn't used, so this normally returns
   nonzero and the caller falls back to a literal name. */
int _path(char *dst, const char *fname) {
  const char *path = getenv("PATH");
  if (path == NULL || fname == NULL) {
    if (dst && fname) strcpy(dst, fname);
    return 1;
  }
  const char *p = path;
  while (*p) {
    const char *colon = strchr(p, ':');
    size_t len = colon ? (size_t)(colon - p) : strlen(p);
    if (len > 0 && len < 480) {
      char cand[512];
      memcpy(cand, p, len);
      cand[len] = 0;
      if (cand[len-1] != '/') strcat(cand, "/");
      strcat(cand, fname);
      FILE *f = fopen(cand, "rb");
      if (f) { fclose(f); strcpy(dst, cand); return 0; }
    }
    if (!colon) break;
    p = colon + 1;
  }
  strcpy(dst, fname);
  return 1;
}

/* ---- Module definition (.def) parser stubs ---- */
/* For plain a.out -> LX conversion, no .def file is processed.
   These return end-of-input so the caller does nothing. */

struct _md { int dummy; };
static struct _md md_singleton;

struct _md *_md_open(const char *fname) {
  (void)fname;
  return NULL;   /* No .def file: signal "not opened". */
}

void _md_close(struct _md *md) { (void)md; }

_md_token _md_next(struct _md *md, _md_stmt *stmt) {
  (void)md;
  if (stmt) stmt->type = _MD_EOI;
  return _MD_EOI;
}

_md_token _md_next_token(struct _md *md) { (void)md; return _MD_EOI; }

int _md_parse(struct _md *md, _md_callback_fn cb, void *arg) {
  (void)md; (void)cb; (void)arg;
  return 0;   /* Nothing to parse. */
}

int _md_get_linenumber(struct _md *md) { (void)md; return 0; }

const char *_md_errmsg(int code) { (void)code; return "no error"; }
