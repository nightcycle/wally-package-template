#!/usr/bin/env bash
repo_owner=nightcycle
repo_name=wally-package-template

description_prefix="\"description\":"
curl -L "https://api.github.com/repos/${repo_owner}/${repo_name}" > "desc.text"
empty_str=""
desc=$(<desc.text)
desc=$(echo "$desc" | grep -F "$description_prefix")
desc="${desc/${description_prefix}/${empty_str}}"
content=$(echo "$desc" | grep -o '"[^"]*"')
echo "$content"
