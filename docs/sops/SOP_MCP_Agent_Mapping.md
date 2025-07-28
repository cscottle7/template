# SOP: MCP Agent Mapping & Tooling Strategy

## 1.0 Purpose
This document defines the official mapping of specialist AI sub-agents to their required Model Context Protocol (MCP) servers. The guiding principle is the **Principle of Least Privilege**: each agent is granted access only to the tools essential for its designated function. This enhances security and ensures a clear separation of concerns.

## 2.0 Agent-to-MCP Mappings
The following table specifies the approved MCP servers for each specialist agent in our workflow. The Orchestrator AI (MCP Host) is responsible for enforcing these permissions.

| Agent (Sub-Agent) | Role in Workflow | Required MCP Servers |
| :--- | :--- | :--- |
| **`dev_implement`** | Core Developer | `Filesystem MCP`, `Official Git MCP` |
| **`test_generate`** | QA Engineer | `Filesystem MCP`, `Docker MCP` |
| **`security_audit`** | Security Auditor | `Filesystem MCP`, `GitHub MCP` |
| **`asset_find`** | Research Assistant | `GitMCP`, `Web Search MCP`, Context7 MCP |
| **`document_create`** | Technical Writer | `Filesystem MCP` |
| **Planning Agents** | Director's Tools | `GitHub MCP`, `Jira MCP` |

## 3.0 Advanced Strategy: Composite MCPs
To increase robustness and efficiency, our development roadmap will prioritise the creation of **Composite MCPs**. These are high-level tools that encapsulate complex, multi-step workflows.

A Composite MCP acts as both a server (to the Orchestrator) and a client (to other granular MCPs), abstracting a sequence of actions into a single, reliable command.

- **Example Candidate:** `create_pr_from_staging_area`
- **Internal Workflow:**
    1.  Call the `Official Git MCP` to `git_add`.
    2.  Call the `Official Git MCP` to `git_commit`.
    3.  Call the `Official Git MCP` to `git_push`.
    4.  Call the `Official GitHub MCP` to `create_pull_request`.

Adopting this pattern will make our Orchestrator's job simpler and the overall system more reliable.