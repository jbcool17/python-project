.PHONY: help uv-init

help:
	@echo "Available targets:"
	@echo "  uv-init    Initialize uv environment with Python 3.14"

uv-init:
	@echo "Initializing uv environment with Python 3.14..."
	@uv init --python 3.14

uv-venv:
	@echo "Creating uv virtual environment..."
	@uv venv create --name .venv

uv-run:
	@echo "Running command in uv environment..."
	@uv run python-project

docker-build:
	@echo "Building Docker image..."
	@docker build -t python-project:latest .
