#!/bin/bash

LAST_PR_JSON=$(gh pr list --limit 1 --json number)
LAST_PR=$(echo $LAST_PR_JSON | grep -o '"number":[0-9]*' | awk -F ':' '{print $2}')

LAST_ISSUE_JSON=$(gh issue list --limit 1 --json number)
LAST_ISSUE=$(echo $LAST_ISSUE_JSON | grep -o '"number":[0-9]*' | awk -F ':' '{print $2}')

NEXT_PR_NUMBER=0
if [[ $LAST_ISSUE -gt $LAST_PR ]]; then
  NEXT_PR_NUMBER=$((LAST_ISSUE + 1))
else
  NEXT_PR_NUMBER=$((LAST_PR + 1))
fi

echo "Next PR number is #$NEXT_PR_NUMBER"
echo "(#$NEXT_PR_NUMBER)" | pbcopy

