#!/bin/bash

LINE_LENGTH=$1
TEXT_TO_FORMAT="$2"

# Check if the text was provided.
if [[ -z "$TEXT_TO_FORMAT" ]]; then
  echo "Please pass in some text"
  exit 1
fi

# Use fmt to format the text to a max line width of 72 characters.
echo "$TEXT_TO_FORMAT" | fmt -w $LINE_LENGTH | pbcopy
