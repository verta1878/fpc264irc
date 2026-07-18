import struct, sys

class OMFObj:
    def __init__(self, filename):
        self.filename = filename
        self.data = open(filename, 'rb').read()
        self.lnames = ['']
        self.segments = []
        self.pubdefs = {}
        self.extdefs = []
        self._parse()
    def _parse(self):
        pos = 0
        while pos < len(self.data):
            rt = self.data[pos]
            rl = self.data[pos+1] | (self.data[pos+2] << 8)
            rec = self.data[pos+3:pos+3+rl-1]
            try:
                if rt == 0x96:
                    i = 0
                    while i < len(rec):
                        l = rec[i]; i += 1
                        self.lnames.append(rec[i:i+l].decode('ascii','replace')); i += l
                elif rt == 0x98:
                    seg_len = rec[1] | (rec[2] << 8)
                    name_idx = rec[3]; class_idx = rec[4]
                    self.segments.append((name_idx, class_idx, seg_len))
                elif rt == 0x90:
                    grp = rec[0]; seg = rec[1]; i = 2
                    if seg == 0: i += 2
                    while i < len(rec):
                        nl = rec[i]; i += 1
                        name = rec[i:i+nl].decode('ascii','replace'); i += nl
                        off = rec[i] | (rec[i+1] << 8); i += 2
                        typ = rec[i]; i += 1
                        self.pubdefs[name] = (seg, off)
                elif rt == 0x8C:
                    i = 0
                    while i < len(rec):
                        nl = rec[i]; i += 1
                        name = rec[i:i+nl].decode('ascii','replace'); i += nl
                        typ = rec[i]; i += 1
                        self.extdefs.append(name)
            except: pass
            if rt in (0x8A, 0x8B): break
            pos += 3 + rl

for fn in sys.argv[1:]:
    obj = OMFObj(fn)
    print(f"\n{fn}:")
    for i, (ni, ci, sl) in enumerate(obj.segments, 1):
        sn = obj.lnames[ni] if ni < len(obj.lnames) else f'?{ni}'
        cn = obj.lnames[ci] if ci < len(obj.lnames) else f'?{ci}'
        print(f"  seg #{i}: {sn} class={cn} len={sl}")
    print(f"  {len(obj.pubdefs)} publics, {len(obj.extdefs)} externals")
    if obj.extdefs:
        print(f"  ext: {', '.join(obj.extdefs[:5])}{'...' if len(obj.extdefs)>5 else ''}")
