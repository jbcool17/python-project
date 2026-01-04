# python-project

A Python project with containerization and package management support.

## Overview

This is a Python 3.14+ project that demonstrates a modern Python development setup with:
- **uv** for fast Python package management and virtual environments
- **Docker** support for containerized deployment
- **Makefile** for convenient development commands
- **PyYAML** dependency for YAML file handling

## Requirements

- Python 3.14 or higher
- uv (for development)
- Docker (optional, for containerized deployment)

## Installation

### Using uv (Recommended)

```bash
uv sync
```

## Usage

Run the project using uv:

```bash
uv run python-project
```

Install package with pip

```bash
pip install git+https://github.com/jbcool17/python-project.git
```

## Docker

Build and run the project in a Docker container:

```bash
make docker-build
docker run python-project:latest
```
