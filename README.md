[![Run Tests](https://github.com/MeherBhaskar/sentiment_analysis_cli/actions/workflows/main.yml/badge.svg)](https://github.com/MeherBhaskar/sentiment_analysis_cli/actions/workflows/main.yml)
# Sentiment Analysis CLI

This project provides a command-line interface (CLI) for performing sentiment analysis on text using a Hugging Face transformer model.

## Prerequisites

Ensure you have the following tools installed:

- Python 3.10 or later
- Make

## Setup

Follow these steps to set up the project:

1. **Clone the Repository**

   Clone the repository to your local machine:

   ```bash
   git clone https://github.com/MeherBhaskar/sentiment_analysis_cli.git
   cd sentiment_analysis_cli
   ```

2. **Create New Environment**
    Create new environment using

    ```bash
    make create_env
    ```

3. **Install Required Packages**
    Install required packages using 
    
    ```bash
    make install
    ```

4. **Format and Lint Code**
    Format the code and install the necessary packages by running:

    ```bash 
    make format
    ```

5. **Run Tests** 
    ```bash
    make test
    ```

## Usage

1. **Make the Script Executable**

Change the permissions to make the detect_sentiment.py script executable:

``` bash
chmod +x detect_sentiment.py
```

2. **Activate the Conda Environment**

Activate the conda environment

```bash
conda activate sentiment_analysis_cli
```

3. **Run the CLI Command**

Execute the detect_sentiment.py script with your text as input:

```bash
./detect_sentiment.py "<text>"
```

For example: 
```bash
./detect_sentiment.py "I love this product!"
```


