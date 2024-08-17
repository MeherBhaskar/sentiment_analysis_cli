# Install required packages
install:
	pip install -r requirements.txt
	echo "Packages installed."

format: install
	@echo "Formatting code"
	black .  # Adjust the path to where your code resides
	@echo "Code formatting completed."

test:
	pytest tests/

all:
	install format test