#!/bin/bash

# This is the Context7 MCP Server.
# It takes a specific technology query and finds its official documentation page.

QUERY="$1 official documentation"

if [ -z "$1" ]; then
  echo "Usage: ./context7_mcp.sh '<technology name>'"
  exit 1
fi

# Perform a focused search for the official documentation URL
# The '-j' flag makes googler return the first URL directly
URL=$(googler -j --np "$QUERY" | head -n 1)

echo "Documentation for '$1' found at: $URL"

# In a real implementation, you might add a web scraper here 
# to fetch the content of the URL, but for now, we will return the link.