#!/bin/bash

# This script acts as our conceptual "agent_runner" MCP Server.
# It takes an agent name and a multi-line brief and executes the command.

AGENT_COMMAND=$1
AGENT_BRIEF=$2

if [ -z "$AGENT_COMMAND" ] || [ -z "$AGENT_BRIEF" ]; then
  echo "Usage: ./run_agent.sh <agent_command> '<brief>'"
  exit 1
fi

# Execute the claude command non-interactively
# The 'printf' command is used to pass the multi-line brief to the agent.
printf "%s" "$AGENT_BRIEF" | claude "/$AGENT_COMMAND"