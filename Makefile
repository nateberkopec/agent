PREFIX ?= $(HOME)/.local
BINDIR ?= $(PREFIX)/bin
AGENT_SRC := bin/agent
AGENT_DST := $(BINDIR)/agent

.PHONY: install
install:
	@mkdir -p "$(BINDIR)"
	@cp "$(AGENT_SRC)" "$(AGENT_DST)"
	@chmod +x "$(AGENT_DST)"
	@printf "Installed agent to %s\n" "$(AGENT_DST)"
