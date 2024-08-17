#!/usr/bin/env python3
from transformers import pipeline
import click
import warnings

warnings.filterwarnings("ignore")


@click.command()
@click.argument("text")
def get_sentiment(text):
    # Load the sentiment-analysis pipeline
    sentiment_analyzer = pipeline("sentiment-analysis")

    result = sentiment_analyzer(text)
    click.echo(
        f"The entered text is {result[0]['label'].lower()} with a score {round(result[0]['score'],3)}"
    )

def hello():
    print('hello')

if __name__ == "__main__":
    get_sentiment()
