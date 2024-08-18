# Create a new Conda environment and install pip
create_env:
	conda create -n sentiment_analysis_cli -y
	@echo "Conda environment 'sentiment_analysis_cli' created."

# Install required packages within the Conda environment
install: create_env
	@echo "Installing pip and required packages in 'sentiment_analysis_cli'"
	conda run -n sentiment_analysis_cli conda install pip -y
	conda run -n sentiment_analysis_cli pip install -r requirements.txt
	@echo "Packages installed."

format: install
	@echo "Formatting code"
	conda run -n sentiment_analysis_cli black .  # Adjust the path to where your code resides
	@echo "Code formatting completed."

test:
	conda run -n sentiment_analysis_cli pytest tests/

all:
	$(MAKE) install format test
