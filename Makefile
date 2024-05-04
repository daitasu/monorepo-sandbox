.PHONY: all services stop

all: services

services:
	@echo "Starting all services..."
	@cd services/backend-go && go run main.go &> ../../logs/backend-go.log &
	@cd apps/frontend && pnpm dev &> ../../logs/frontend.log &
	@cd apps/bff && pnpm run start:dev &> ../../logs/bff.log &
	@echo "All services started."

stop:
	@echo "Stopping all services..."
	@-pkill -P $$!
	@echo "All services stopped."

logs:
	@echo "Tailing logs..."
	@tail -f logs/backend-go.log &
	@tail -f logs/frontend.log &
	@tail -f logs/bff.log &
