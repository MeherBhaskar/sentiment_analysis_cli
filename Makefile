create_env:
	echo "Creating Virtual Environment"
	python3 -m venv cli_env
	source cli_env/bin/activate

	echo "Installing required packages"
	pip install -r requirement.txt

clean_env:
	echo "Removing Virtual Environment"
	rm -rf cli_env
	echo "Removed Virtual Environment"