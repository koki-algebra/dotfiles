.PHONY: help
.DEFAULT_GOAL := help

init: ## initialize
	@echo "\033[0;34mRun init.sh\033[0m"
	@.bin/init.sh
	@echo "\033[0;34mDone.\033[0m"

defaults: ## Set macOS system preferences.
	@echo "\033[0;34mRun defaults.sh\033[0m"
	@.bin/defaults.sh
	@echo "\033[0;32mDone.\033[0m"

link: ## Create symbolic links
	@echo "\033[0;34mRun link.sh\033[0m"
	@.bin/link.sh
	@echo "\033[0;34mDone.\033[0m"

brew: ## Install macOS applications
	@echo "\033[0;34mRun brew.sh\033[0m"
	@.bin/brew.sh
	@echo "\033[0;32mDone.\033[0m"

code: ## Create symbolic links for setttings.json & install extensions
	@echo "\033[0;34mRun brew.sh\033[0m"
	@vscode/sync.sh
	@echo "\033[0;32mDone.\033[0m"

goinstall: ## Run go install
	@echo "\033[0;34mRun goinstall.sh\033[0m"
	@.bin/goinstall.sh
	@echo "\033[0;32mDone.\033[0m"

help: ## Show help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'
