.PHONY: help
.DEFAULT_GOAL := help

init: ## Bootstrap: install Homebrew, Xcode CLI tools
	@echo "\033[0;34mRun init.sh\033[0m"
	@.bin/init.sh
	@echo "\033[0;34mDone.\033[0m"

apply: ## Apply dotfiles with chezmoi
	@echo "\033[0;34mRun chezmoi apply\033[0m"
	@chezmoi apply
	@echo "\033[0;32mDone.\033[0m"

diff: ## Preview what chezmoi would change
	@chezmoi diff

help: ## Show help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | \
		awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'
