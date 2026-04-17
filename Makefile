PREFIX ?= $(HOME)/.local
BINDIR = $(PREFIX)/bin
LIBDIR = $(PREFIX)/lib/manis

.PHONY: all install uninstall

all:
	@echo "Run 'make install' to install scripts to $(BINDIR)"

install:
	@mkdir -p $(BINDIR)
	@mkdir -p $(LIBDIR)
	install -m 755 bin/heavy $(BINDIR)/heavy
	install -m 755 bin/sysinfo $(BINDIR)/sysinfo
	cp lib/aliases.sh $(LIBDIR)/aliases.sh
	@printf "\n\n"
	@echo "Done. Scripts installed to $(BINDIR)"
	@echo "To use aliases, add the following to your .zshrc or .bashrc:"
	@echo ""
	@echo "  source $(LIBDIR)/aliases.sh"
	@printf "\n"
uninstall:
	rm -f $(BINDIR)/heavy $(BINDIR)/sysinfo
	rm -rf $(LIBDIR)
	@printf "\n\n\n"
	@echo "Uninstalled."
	@printf "\n"
