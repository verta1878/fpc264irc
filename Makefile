# FPC 2.6.4irc r3.1 — Top-level Makefile
#
# ⚠️  WARNING: bin/units/i386-win32/system.o is from the r3 archive.
# ⚠️  DO NOT rebuild the Win32 RTL — it will break the heap fix.
# ⚠️  See docs/bugsfixed.md BUG-001 for details.

.PHONY: clean help

help:
	@echo "Usage:"
	@echo "  make clean    — remove all build artifacts (preserves shipped PPUs)"
	@echo ""
	@echo "Build instructions: see README.md"

clean:
	@echo "Cleaning build artifacts..."
	rm -rf src/rtl/units/
	find src/packages -type d -name "units" -exec rm -rf {} + 2>/dev/null || true
	rm -rf src/lazarus/units/
	rm -rf src/lazarus/lib/
	rm -f src/lazarus/lazarus src/lazarus/lazarus.exe
	rm -f src/lazarus/lazbuild src/lazarus/lazbuild.exe
	rm -f src/lazarus/startlazarus src/lazarus/startlazarus.exe
	find . -name "ppas.sh" -delete 2>/dev/null || true
	find . -name "ppas.bat" -delete 2>/dev/null || true
	find . -name "script.res" -not -path "*/bin/*" -delete 2>/dev/null || true
	find . -name "*.log" -not -path "*/docs/*" -delete 2>/dev/null || true
	@echo "Done. Shipped PPUs in bin/ untouched."
