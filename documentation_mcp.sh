#!/bin/bash

# This is the Documentation MCP Server.
# It takes a search query and searches developer-specific sites for official docs.

QUERY=$1

if [ -z "$QUERY" ]; then
  echo "Usage: ./documentation_mcp.sh '<query>'"
  exit 1
fi

# Perform a focused search on high-quality developer sites
googler --np -n 5 --sites "stackoverflow.com,developer.mozilla.org,react.dev,github.com" "$QUERY"