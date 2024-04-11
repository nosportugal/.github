#!/bin/bash

# Get all repos
repos=$(gh api --paginate orgs/nosportugal/repos | jq -r '.[].name')

# For each repo, get the languages used
# Use xargs to run multiple processes at the same time
# -P specifies the maximum number of processes that can be run at the same time
# -I {} replaces {} with the repo name in the command
echo $repos | xargs -n 1 -P10 bash -c 'gh api repos/nosportugal/"$@"/languages | jq -r 'keys[]' >> repo_languages.txt'