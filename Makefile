
# Date:		31 Aug 2024
# Author:	Krishna Modepalli

# Variables
NAME := "gitautopull"
FP := "fetch_or_pull"
BIN_DIR := "/usr/local/bin"


install:
	@if [ "$$(id -u)" -ne 0 ]; then \
		echo "Need sudo privilage to install.\n"; \
		exit 1; \
	fi

	@echo -n "Installing $(NAME)... "
	@sudo cp fetch_or_pull /usr/local/bin
	@echo "✔️ "


uninstall:
	@if [ "$$(id -u)" -ne 0 ]; then \
		echo "Need sudo privilage to uninstall.\n"; \
		exit 1; \
	fi

	@echo -n "Uninstalling $(NAME)... "
	@sudo rm /usr/local/bin/fetch_or_pull
	@echo "✔️ "
	@echo
	@echo "You may have to clear the scripts from your shell config files '.bashrc or .zshrc or config.fish'."



.PHONY: install uninstall

