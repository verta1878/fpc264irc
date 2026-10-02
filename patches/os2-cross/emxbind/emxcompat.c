/* fpc264irc: Linux stand-ins for emx libc helpers used by emxbind (byte, 2026-10-02) */
#include <string.h>
#include <strings.h>
#include <unistd.h>
static char *lastsep(const char *p){ const char *a=strrchr(p,'/'), *b=strrchr(p,'\\'), *c=strrchr(p,':'); const char *m=a; if(b>m)m=b; if(c>m)m=c; return (char*)m; }
char *_getname(const char *path){ char *s=lastsep(path); return s? s+1 : (char*)path; }
char *_getext(const char *path){ char *n=_getname(path); char *d=strrchr(n,'.'); return (d && d!=n)? d : NULL; }
char *_getext2(const char *path){ char *e=_getext(path); return e? e : (char*)(path+strlen(path)); }
void _remext(char *path){ char *e=_getext(path); if(e) *e=0; }
void _defext(char *path, const char *ext){ if(!_getext(path)){ strcat(path,"."); strcat(path,ext); } }
char *_strncpy(char *d, const char *s, size_t n){ if(n){ strncpy(d,s,n-1); d[n-1]=0; } return d; }
int stricmp(const char *a, const char *b){ return strcasecmp(a,b); }
int _execname(char *buf, size_t n){ ssize_t r=readlink("/proc/self/exe",buf,n-1); if(r<0) return -1; buf[r]=0; return 0; }
