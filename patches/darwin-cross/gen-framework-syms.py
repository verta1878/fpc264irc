#!/usr/bin/env python3
"""fpc264irc: list, per Apple framework, every symbol that FPC's Mac interface units can reference - byte, 2026-10-08
usage: gen-framework-syms.py <repo> <stubs dir>
Reads src/packages/univint (MacOSAll and its 450 headers), cocoaint (Foundation / AppKit / CoreData / QuartzCore / WebKit
classes, functions and variables), objcrtl + univint ObjCRuntime (libobjc), openal, opencl. Writes
<stubs dir>/frameworks/<Framework>.syms, <stubs dir>/libobjc.A.syms, <stubs dir>/libSystem.extra.syms and
<stubs dir>/frameworks.txt (name | install name | re-exported frameworks) for gen-stubs.sh.
Which framework a univint header belongs to comes from its own "File: <Subframework>/x.h" line, else from its name.
Subframeworks are folded into the public framework that exports them on macOS 10.4 - 10.14 (Carbon re-exports
CoreServices and ApplicationServices, Cocoa re-exports Foundation, AppKit and CoreData)."""
import os, re, sys, glob, collections

R, OUT = sys.argv[1], sys.argv[2]
U = R + '/src/packages/univint/src'; C = R + '/src/packages/cocoaint/src'

# subframework (univint "File:" tag) -> public framework
TAG = {
    'HIToolbox': 'Carbon', 'CommonPanels': 'Carbon', 'NavigationServices': 'Carbon', 'Print': 'Carbon', 'Help': 'Carbon',
    'SpeechRecognition': 'Carbon', 'OpenScripting': 'Carbon', 'SecurityHI': 'Carbon', 'HTMLRendering': 'Carbon',
    'CarbonSound': 'Carbon',
    'CarbonCore': 'CoreServices', 'OSServices': 'CoreServices', 'LaunchServices': 'CoreServices',
    'CFNetwork': 'CoreServices', 'AE': 'CoreServices', 'NSLCore': 'CoreServices', 'OT': 'CoreServices',
    'CoreGraphics': 'ApplicationServices', 'QD': 'ApplicationServices', 'ATS': 'ApplicationServices',
    'HIServices': 'ApplicationServices', 'PrintCore': 'ApplicationServices', 'SpeechSynthesis': 'ApplicationServices',
    'LangAnalysis': 'ApplicationServices',
    'QuickTime': 'QuickTime', 'CoreAudio': 'CoreAudio', 'AudioUnit': 'AudioUnit', 'CoreMIDI': 'CoreMIDI',
    'vecLib': 'vecLib', 'SecurityCore': 'Security',
    'DrawSprocket': None,   # PowerPC-only framework, not on Intel Macs: left out
}
# headers without a "File:" tag: by name
PREFIX = [
    (r'^CF', 'CoreFoundation'), (r'^(CG(Image|L))', None), (r'^CG', 'ApplicationServices'),
    (r'^CT|^CoreText$', 'ApplicationServices'), (r'^AX', 'ApplicationServices'), (r'^ColorSync', 'ApplicationServices'),
    (r'^AB', 'AddressBook'), (r'^(AU|AudioOutputUnit|AudioUnitCarbonViews|MusicDevice)', 'AudioUnit'),
    (r'^(Auth|Sec|cssm)', 'Security'), (r'^CV', 'QuartzCore'), (r'^DA', 'DiskArbitration'),
    (r'^(SC|SystemConfiguration$|DHCPClientPreferences$)', 'SystemConfiguration'), (r'^IOSurface', 'IOSurface'),
    (r'^MD', 'CoreServices'), (r'^QL', 'QuickLook'), (r'^ICA', 'Carbon'), (r'^(HIToolboxDebugging|KeyEvents)$', 'Carbon'),
    (r'^(fenv|fp|xattr)$', 'libSystem'), (r'^ObjCRuntime$', 'libobjc'), (r'^cblas$', 'vecLib'),
    (r'^(macgl|macglext|macglu|gluContext|MacOpenGL)$', 'OpenGL'),
]
SPECIAL = {'CGImageDestination': 'ApplicationServices', 'CGImageProperties': 'ApplicationServices',
           'CGImageSource': 'ApplicationServices', 'CGLCurrent': 'OpenGL', 'CGLDevice': 'OpenGL'}
F = 'System/Library/Frameworks'
INSTALL = {n: f'/{F}/{n}.framework/Versions/A/{n}' for n in (
    'Carbon', 'CoreServices', 'ApplicationServices', 'CoreFoundation', 'QuickTime', 'CoreAudio', 'AudioUnit', 'CoreMIDI',
    'vecLib', 'Security', 'AddressBook', 'QuartzCore', 'DiskArbitration', 'SystemConfiguration', 'IOSurface', 'QuickLook',
    'OpenGL', 'Foundation', 'AppKit', 'CoreData', 'WebKit', 'Cocoa', 'OpenAL', 'OpenCL')}
INSTALL['Carbon'] = f'/{F}/Carbon.framework/Versions/A/Carbon'
INSTALL['Cocoa'] = f'/{F}/Cocoa.framework/Versions/A/Cocoa'
# Foundation and AppKit are version C on every macOS since 10.0 (checked against Apple's 10.6 / 10.7 SDK, 2026-10-10)
INSTALL['Foundation'] = f'/{F}/Foundation.framework/Versions/C/Foundation'
INSTALL['AppKit'] = f'/{F}/AppKit.framework/Versions/C/AppKit'
# re-exports only steer the linker to a symbol's own framework: ld64 links a re-exported framework that has a public
# install name directly ("implicit linking") and binds the symbol there, so a program records e.g. _CFRelease as coming
# from CoreFoundation itself even when its source only says {$linkframework Carbon} (as MacOSAll does).
REEXPORT = {'Carbon': ['CoreServices', 'ApplicationServices'], 'Cocoa': ['Foundation', 'AppKit', 'CoreData'],
            'CoreServices': ['CoreFoundation'], 'ApplicationServices': ['CoreServices'], 'Foundation': ['CoreFoundation', 'libobjc'],
            'AppKit': ['Foundation', 'ApplicationServices']}

syms = collections.defaultdict(set); unmapped = []

def framework_of(stem, text):
    m = re.search(r'File:\s+([A-Za-z]+)/', text[:3000]) or re.search(r'^\{\s*([A-Za-z]+) - \w+\.h', text[:400], re.M)
    if m:
        return TAG.get(m.group(1), '?' + m.group(1))
    if stem in SPECIAL:
        return SPECIAL[stem]
    for pat, fw in PREFIX:
        if re.search(pat, stem):
            return fw
    return '?'

for path in sorted(glob.glob(U + '/*.pas')):
    stem = os.path.basename(path)[:-4]; t = open(path, encoding='latin1').read()
    names = set(re.findall(r"external name '(_[A-Za-z0-9_]+)'", t))
    if not names:
        continue
    fw = framework_of(stem, t)
    if fw is None:
        continue
    if fw.startswith('?'):
        unmapped.append(f'{stem} ({fw[1:] or "no tag"}, {len(names)})'); continue
    syms[fw] |= names

# cocoaint: classes (ObjC 1 runtime on i386: .objc_class_name_X), "cdecl; external;" functions, "cvar; external;" variables
COCOA = {'foundation': 'Foundation', 'appkit': 'AppKit', 'coredata': 'CoreData', 'quartzcore': 'QuartzCore', 'webkit': 'WebKit'}
for d, fw in COCOA.items():
    for path in glob.glob(f'{C}/{d}/*.inc'):
        t = open(path, encoding='latin1').read()
        for cls in re.findall(r'^\s*([A-Za-z0-9_]+)\s*=\s*objcclass\s+external\b', t, re.M | re.I):
            syms[fw].add('.objc_class_name_' + cls)
        for line in t.splitlines():
            m = re.match(r'\s*(?:function|procedure)\s+([A-Za-z0-9_]+)', line, re.I)
            if m and re.search(r'\bcdecl\b', line, re.I) and re.search(r'\bexternal\b', line, re.I):
                n = re.search(r"external\s+name\s+'([A-Za-z0-9_]+)'", line)
                syms[fw].add('_' + (n.group(1) if n else m.group(1)))
        for name in re.findall(r'^\s*([A-Za-z0-9_]+)\s*:\s*[^;]+;\s*cvar;\s*external;', t, re.M | re.I):
            syms[fw].add('_' + name)

# libobjc: univint ObjCRuntime + the compiler's own objc support (rtl/inc/objc*.inc) + objcrtl
for path in glob.glob(R + '/src/rtl/inc/objc*.inc') + glob.glob(R + '/src/packages/objcrtl/src/*.pas'):
    t = open(path, encoding='latin1').read()
    syms['libobjc'] |= set(re.findall(r"external\s+(?:\w+\s+)?name\s+'(_[A-Za-z0-9_]+)'", t))
syms['libobjc'] |= {'_objc_msgSend', '_objc_msgSendSuper', '_objc_msgSend_stret', '_objc_msgSendSuper_stret',
                    '_objc_msgSend_fpret', '_objc_getClass', '_objc_getMetaClass', '_sel_registerName'}
syms['Foundation'] |= {'.objc_class_name_NSBundle', '.objc_class_name_NSObject', '.objc_class_name_NSString'}

# openal / opencl: "cdecl; external ...;" routines
for path, fw in ((R + '/src/packages/openal/src', 'OpenAL'),):
    for inc in glob.glob(path + '/*.inc') + glob.glob(path + '/*.pas'):
        t = open(inc, encoding='latin1').read()
        syms[fw] |= {'_' + n for n in re.findall(r'^\s*(?:function|procedure)\s+(al[A-Za-z0-9_]*)[^;]*;\s*cdecl;\s*external', t, re.M)}
t = open(R + '/src/packages/opencl/src/cl.pp', encoding='latin1').read()
syms['OpenCL'] |= {'_' + n for n in re.findall(r"name '(cl[A-Za-z0-9_]+)'", t)}
INSTALL['OpenCL'] = f'/{F}/OpenCL.framework/Versions/A/OpenCL'

os.makedirs(OUT + '/frameworks', exist_ok=True)
lines = []
for fw in sorted(syms):
    s = sorted(syms[fw])
    if fw == 'libobjc':
        open(OUT + '/libobjc.A.syms', 'w').write('\n'.join(s) + '\n'); continue
    if fw == 'libSystem':
        open(OUT + '/libSystem.extra.syms', 'w').write('\n'.join(s) + '\n'); continue
    open(f'{OUT}/frameworks/{fw}.syms', 'w').write('\n'.join(s) + '\n')
order = []   # dependencies first: a framework is built after the ones it re-exports
def visit(fw):
    if fw in order: return
    for r in REEXPORT.get(fw, []):
        if r != 'libobjc': visit(r)
    order.append(fw)
for fw in sorted(set(INSTALL) & (set(syms) | set(REEXPORT))): visit(fw)
for fw in order:
    lines.append(f'{fw}|{INSTALL[fw]}|{",".join(REEXPORT.get(fw, []))}')
    if fw not in syms:
        open(f'{OUT}/frameworks/{fw}.syms', 'w').write('')
open(OUT + '/frameworks.txt', 'w').write('\n'.join(lines) + '\n')
for fw in sorted(syms):
    print(f'{fw:20s} {len(syms[fw]):6d}')
print('not mapped (left out):', ', '.join(unmapped) or 'none')
