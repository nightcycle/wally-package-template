#!/usr/bin/env bash
repo_owner=nightcycle
repo_name=nightcycle/wally-package-template
forward_repo_pattern="${repo_owner}/"
empty_str=""
repo_name="${repo_name/${forward_repo_pattern}/${empty_str}}"
echo "$repo_name"