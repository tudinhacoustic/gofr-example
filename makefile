#PWD
PROJECT_PWD 	   := $(shell pwd)

.PHONY: get-air
get-air: 
	@echo "Download go get-air"
	@curl -sSfL https://raw.githubusercontent.com/cosmtrek/air/master/install.sh | sh -s

# Run dev
.PHONY: hot-reload-dev
hot-reload-dev: 
	@echo "Go run hot-reload-dev"
	@./bin/air

# Run prod
.PHONY: run-prod
run-prod: 
	@echo "Go run prod"
	@APP_ENV=prod go run main.go