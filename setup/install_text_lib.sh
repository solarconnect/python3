#!/bin/bash
pip install -U textblob nltk
python -m nltk.downloader -d /usr/local/share/nltk_data all
pip install -v python-mecab-ko