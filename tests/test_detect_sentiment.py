import pytest
from click.testing import CliRunner
from detect_sentiment import (
    get_sentiment,
)  # Replace with the actual name of your script file


def test_get_sentiment_positive():
    runner = CliRunner()
    result = runner.invoke(get_sentiment, ["I love this product!"])
    assert result.exit_code == 0
    assert "The entered text is positive" in result.output
    assert "with a score" in result.output


def test_get_sentiment_negative():
    runner = CliRunner()
    result = runner.invoke(get_sentiment, ["I hate this product!"])
    assert result.exit_code == 0
    assert "The entered text is negative" in result.output
    assert "with a score" in result.output
