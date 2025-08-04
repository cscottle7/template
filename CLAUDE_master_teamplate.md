# Project Constitution: [Insert Project Name Here]

---
## Part A: Strategic & Product Definition
---

### 1. The Press Release
*FOR IMMEDIATE RELEASE*

**[Headline for the project launch]**

[City, State] – [Provide the inspiring, aspirational vision for this project, written from the customer's perspective. Announce what is launching and the core problem it solves for them.]

### 2. Customer FAQ
* **[Question 1 a customer might ask]:** [Answer]
* **[Question 2 a customer might ask]:** [Answer]
* **[Question 3 a customer might ask]:** [Answer]

### 3. Internal FAQ
* **[Question 1 an internal stakeholder might ask about feasibility, resourcing, or strategy]:** [Answer]
* **[Question 2 an internal stakeholder might ask]:** [Answer]
* **[Question 3 an internal stakeholder might ask]:** [Answer]

### 4. Project Goal & High-Level Requirements
**Jobs-to-be-Done (JTBD) Statement:** [When I..., I want to..., so I can...]

### 5. Success Metrics & Measurement Plan
* **[Metric 1]:** [How it will be measured and the target for success.]
* **[Metric 2]:** [How it will be measured and the target for success.]
* **[Metric 3]:** [How it will be measured and the target for success.]

### 6. Core Features & Scope
#### In Scope (for this version/MVP)
* [User Story or Feature 1]
* [User Story or Feature 2]

#### Out of Scope
* [Feature explicitly deferred for a future version]
* [Feature explicitly not being built]

---
## Part B: Technical & Operational Framework
---

### 7. Tech Stack & Key Libraries
* **Backend Language:** [e.g., Python 3.11]
* **Backend Framework:** [e.g., FastAPI]
* **Frontend Language:** [e.g., TypeScript 5.2]
* **Frontend Framework:** [e.g., React 18]
* **Database:** [e.g., PostgreSQL 15]
* **Key Libraries:**
    * [Library 1]: [Purpose of Library 1]
    * [Library 2]: [Purpose of Library 2]

### 8. Project File Structure
`[Provide a high-level overview of the intended directory structure, similar to the example in the research document.]`

### 9. Key Commands
* **Install Dependencies:** `[e.g., pip install -r requirements.txt && npm install]`
* **Run Development Server:** `[e.g., npm run dev]`
* **Run Tests:** `[e.g., pytest]`

### 10. Code Style & Conventions
* **General:** [e.g., All new code must be accompanied by unit tests.]
* **Backend (Python):** [e.g., Follow PEP 8 guidelines. Use snake_case for functions.]
* **Frontend (TypeScript/React):** [e.g., Use PascalCase for component names. Prefer functional components.]

### 11. Agentic Workflow Rules
This project operates under a strict agentic workflow known as the **Plan-Then-Execute Doctrine**. All complex development tasks must follow this multi-step process:
1.  **Planning:** Invoke the `plan_creator` agent to generate a detailed proposal.
2.  **Human Approval:** A human developer MUST review and approve the plan.
3.  **Execution:** The `dev_implement` agent writes the code strictly adhering to the approved plan.
4.  **Review:** All new code MUST be reviewed by the `review_code` agent before being committed.


### 12. Prohibitions (Forbidden Actions)
* **DO NOT** [e.g., commit code directly to the main branch.]
* **DO NOT** [e.g., use the `requests` library; you must use `httpx`.]
* **DO NOT** [e.g., add new dependencies without updating this constitution.]

### 13. Core Definitions & Glossary
* **[Term 1]:** [Definition]
* **[Term 2]:** [Definition]

### 14. Development Plan (`task_deps.md`)
*[Placeholder: This section will be populated with a link to the `task_deps.md` file once the high-level action plan has been decomposed into granular tasks.]*


