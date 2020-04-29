name: Publish

on:
  push:
    branches: [ master ]

jobs:
  build:

    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v2
    - name: Set up Python 3.8
      uses: actions/setup-python@v1
      with:
        python-version: 3.8
    - name: Install dependencies
      run: |
        python -m pip install --upgrade pip
        pip install flake8 mkdocs mkdocs-material
#        if [ -f requirements.txt ]; then pip install -r requirements.txt; fi
    - name: Build and publish
      run: |
        mkdocs gh-deploy