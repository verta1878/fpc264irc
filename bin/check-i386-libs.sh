#!/bin/sh
# check-i386-libs.sh — Verify i386 multilib is installed
# Run before cross-compiling i386 targets on x86_64 Linux

MISSING=0

echo "Checking i386 multilib libraries..."
echo ""

for lib in libc.so libpthread.so libdl.so; do
  found=0
  for dir in /usr/lib32 /usr/lib/i386-linux-gnu /lib32 /usr/lib/i686-linux-gnu; do
    if [ -f "$dir/$lib" ] || [ -L "$dir/$lib" ]; then
      echo "  [OK] $lib ($dir)"
      found=1
      break
    fi
  done
  if [ $found -eq 0 ]; then
    echo "  [MISSING] $lib"
    MISSING=$((MISSING+1))
  fi
done

echo ""
if [ $MISSING -gt 0 ]; then
  echo "ERROR: $MISSING i386 libraries missing."
  echo ""
  echo "The i386 cross-compiler (ppc386) needs 32-bit system libraries"
  echo "to link executables on a 64-bit Linux host."
  echo ""
  echo "Install them with:"
  echo ""
  echo "  Ubuntu/Debian:  sudo apt install gcc-multilib libc6-dev-i386"
  echo "  Fedora/RHEL:    sudo dnf install glibc-devel.i686 libgcc.i686"
  echo "  Arch:           sudo pacman -S lib32-glibc lib32-gcc-libs"
  echo ""
  echo "Or use -s flag to compile without linking: ppc386 -s program.pas"
  exit 1
else
  echo "All i386 libraries found. Cross-compilation ready."
  exit 0
fi
