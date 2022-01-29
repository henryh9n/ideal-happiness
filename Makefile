install:
	@echo "Setting up virtual environment"
	@python3.10 -m venv venv
	@echo "Installing dependencies..."
	@venv/bin/python3 -m pip install --upgrade pip
	@venv/bin/python3 -m pip install -r requirements/dev.txt

run:
	@venv/bin/python3 src/api_entry.py

build:
	@docker build -f Dockerfile -t ideal-happiness:v0.0.1 .
