# PDS4 Viewer Wrapper

## Overview

This script will install the PDS4 viewer as a command line script for Mac/Linux. It will automatically create and manage a venv with a supported version of python for you.

## Requirements

Python 3.10 or Python 3.11. Newer versions of python will not work due to changes in tkinter, and older versions are EOL.

On a Mac, you can install python3.11 with homebrew:

`brew install python@3.11 python-tk@3.11`

## Usage

Initial set up:

`./bootstrap.sh`

Running the viewer:

`./pds4viewer.sh`
