clean: ## Clean deps
	@echo "Clean deps and artefacts"
	@npm cache verify

install: ## Install dependencies
	@echo "Installing Node dependencies"
	@npm ci

start: ## Run in local
	@echo "Run"
	@npm start

lint: ## Linting
	@npm run lint

test:
	@npm test

help: ## Help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: help
.DEFAULT_GOAL := help