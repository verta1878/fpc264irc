LCL 1.2.6 for i386-linux (gtk2 widgetset) — interface units (.ppu)

These .ppu files let you compile against the LCL. To LINK a gtk2
executable you also need the .o object files and 32-bit GTK/X11 libraries.
Regenerate the .o files with:

    ./build-lcl.sh gtk2

from the fpc264irc root (requires 32-bit GTK2 dev libraries installed).
The win32 target (bin/lazarus/units/i386-win32/) ships complete with .o
files and links out of the box against the bundled MinGW tools.
