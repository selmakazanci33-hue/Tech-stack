You are acting as a Principal Test Automation Architect, Playwright/TypeScript Architect, API Automation Architect, CI/CD Engineer, and AI-Assisted Software Engineering Architect.

## OBJECTIVE

I want to design a completely NEW enterprise-grade automation framework using Playwright + TypeScript.

DO NOT modify, migrate, refactor, or reuse the implementation/code of this existing project.

This existing project is being provided ONLY as a knowledge source.

The project contains accumulated:
- Markdown rules
- Automation standards
- Framework conventions
- Reporting expectations
- Failure-handling rules
- Test coverage practices
- Jira/reporting concepts
- Workflow knowledge
- UI automation lessons learned
- API automation lessons learned
- CI/CD concepts
- AI-assisted development rules
- Reusable architectural ideas

Your job is to inspect those materials and extract the useful ENGINEERING KNOWLEDGE from them.

Then combine that knowledge with current Playwright/TypeScript automation best practices and produce a MASTER IMPLEMENTATION PROMPT that can later be given to Cursor in a NEW EMPTY PROJECT to build the new framework.

You are NOT building the framework during this task.

Your deliverable is the architecture, requirements, rules, and final implementation prompt for the future project.

---

# PHASE 1 — EXISTING PROJECT KNOWLEDGE EXTRACTION

Inspect the existing project carefully.

Prioritize:

- *.md
- rules files
- structure documentation
- automation standards
- reporting requirements
- execution rules
- retry/failure handling
- Jira/test coverage rules
- screenshots/evidence rules
- API practices
- configuration approaches
- CI/CD concepts
- reusable utilities
- AI/Cursor instructions

Do NOT assume every existing rule is correct.

Classify discoveries as:

KEEP
IMPROVE
REPLACE
PROJECT-SPECIFIC — DO NOT MIGRATE
OBSOLETE

Pay special attention to existing accumulated rules such as failure handling, reporting, screenshots, coverage, workflow execution, and human intervention.

Do NOT copy scripts or application-specific implementation.

Extract patterns and lessons only.

---

# PHASE 2 — TARGET ARCHITECTURE

Design a new framework based primarily on:

- TypeScript
- Playwright
- Playwright Test
- Playwright APIRequestContext
- Cucumber/Gherkin integration where beneficial
- reusable configuration
- environment-driven execution
- CI/CD readiness
- strong reporting
- API + UI hybrid automation
- future React/TypeScript control UI compatibility
- future AI-assisted automation compatibility

The architecture must NOT tightly couple tests to a single application.

It should support multiple projects/applications through configuration.

Example conceptual structure:

automation-framework/
  config/
  features/
  step-definitions/
  tests/
  pages/
  components/
  workflows/
  api/
  fixtures/
  data/
  assertions/
  utils/
  reporters/
  evidence/
  schemas/
  hooks/
  scripts/
  types/
  environments/
  artifacts/
  docs/

Do not blindly use this structure.

Evaluate it and propose the best structure.

---

# PHASE 3 — API-FIRST / UI-WHEN-NECESSARY STRATEGY

One of the primary reasons for this framework is that some existing UI automation workflows take too long.

The framework must support a hybrid strategy.

For every automation workflow, allow actions to be implemented as:

UI
API
CONFIG
HYBRID

Example:

API:
create/configure test state

API:
verify backend state

UI:
open application

UI:
verify user-visible result

The architecture should make it possible to replace expensive UI setup operations with APIs without changing the business meaning of the scenario.

Design a Business Action Layer so scenarios do not care whether an operation is currently performed through UI or API.

Conceptually:

createPatient()
configureWorkflow()
submitOrder()
updateConfiguration()
validateResult()

The implementation underneath could later change from UI → API without rewriting the scenario.

---

# PHASE 4 — PLAYWRIGHT UI ARCHITECTURE

Design a highly maintainable UI layer.

Evaluate:

- Page Object Model
- Component Object Model
- reusable business workflows
- fixtures
- custom fixtures
- locator factories
- reusable assertions
- navigation abstractions

Use resilient locator strategy.

Preferred order should generally be:

1. getByRole()
2. getByLabel()
3. getByPlaceholder()
4. getByText() when semantically appropriate
5. getByTestId()
6. stable CSS locator
7. XPath only when absolutely unavoidable

Do NOT create an architecture dependent on brittle generated selectors.

---

# PHASE 5 — PLAYWRIGHT CODEGEN

Codegen should be supported as a developer productivity tool.

However:

CODEGEN OUTPUT MUST NOT AUTOMATICALLY BECOME PRODUCTION AUTOMATION.

Design a workflow where Codegen can:

- discover user interactions
- capture initial locators
- accelerate scenario creation
- help investigate UI changes

Then generated code should be normalized into:

Page Objects
Component Objects
Business Actions
Reusable workflows

Define rules preventing:

- giant generated scripts
- duplicated locators
- hard-coded waits
- brittle XPath
- repeated navigation
- application logic embedded directly inside test files

---

# PHASE 6 — CUCUMBER / GHERKIN

I want business-readable scenarios.

Evaluate the best architecture for combining Playwright + TypeScript + Gherkin/Cucumber.

Desired readability:

Feature: Configuration Management

Scenario: Update configuration and verify deployment

Given the required configuration exists
When I update the configuration
And the deployment completes
Then the new configuration should be visible
And the expected application behavior should be verified

Step definitions should remain THIN.

They should call business/workflow/service layers rather than contain implementation logic.

Avoid duplicated steps.

Design reusable domain vocabulary.

Explain whether native Playwright tests plus a Gherkin compatibility layer, cucumber-js, or another approach provides the cleanest architecture.

Do not select technology merely because it exists in the current project.

---

# PHASE 7 — DYNAMIC CONFIGURATION

The framework must be strongly configuration-driven.

Support concepts such as:

environment
application/project
browser
headless/headed
base URL
API URL
credentials references
test data
feature flags
workflow configuration
timeouts
retry policy
video policy
screenshot policy
trace policy
reporting configuration
tags
parallelization
execution mode

Example conceptual execution:

npm run test -- --env=qa --project=projectA --tags="@smoke"

Future architecture must also allow these inputs to originate from a React/TypeScript UI instead of CLI.

Avoid configuration logic scattered throughout tests.

---

# PHASE 8 — BEFORE / AFTER STATE

Design reusable BEFORE and AFTER scenario capabilities.

BEFORE may include:

environment validation
authentication
API health check
test data preparation
configuration snapshot
browser/context initialization
precondition verification
initial screenshot
initial API state capture

AFTER may include:

final screenshot
video
trace
API verification
configuration comparison
test data cleanup
execution metadata
artifact collection
report generation

Support comparison such as:

BEFORE STATE
→ ACTION
→ AFTER STATE
→ DIFFERENCE
→ VALIDATION RESULT

This should work for both UI and API automation.

---

# PHASE 9 — EVIDENCE

Every execution should be capable of generating structured evidence.

Evaluate:

screenshots
before screenshot
after screenshot
failure screenshot
Playwright trace
video
console logs
network logs
API request/response summaries
execution logs
configuration snapshot
test-data reference
scenario metadata

Artifacts must have predictable naming and directory organization.

Example conceptual hierarchy:

artifacts/
  run-id/
    scenario-name/
      before/
      after/
      screenshots/
      video/
      traces/
      api/
      logs/

Do not store sensitive data unnecessarily.

---

# PHASE 10 — CUSTOM REPORTING

Design a professional custom reporting layer.

Evaluate combining Playwright reporting with a custom HTML report and/or Allure where appropriate.

The report should show:

Execution Summary
Passed
Failed
Skipped
Retried
Duration
Environment
Browser
Application
Build
Commit
Pipeline
Tags

For every scenario show:

Feature
Scenario
Steps
Step status
Duration
Before state
After state
Screenshots
Video
Trace
API activity
Error
Stack trace
Retry history
Execution timestamp

Provide direct links to evidence.

Include a TEST COVERAGE section.

Example:

Requirement             Status
Login                    ✓
Configuration update     ✓
API validation           ✓
UI verification          ✓
Cleanup                  ✓

Design reports for both technical engineers and business/stakeholder readability.

---

# PHASE 11 — FAILURE POLICY

Preserve and improve the existing project's failure philosophy.

IMPORTANT RULE:

If the SAME logical workflow or step fails 3 times for the same reason, STOP automatic execution for that workflow and require human intervention.

Do NOT create infinite self-healing/retry loops.

Differentiate:

application failure
automation failure
environment failure
test-data failure
network/transient failure
locator failure
assertion/business failure

Retries must be visible in reporting.

A test that passed only after retries must not appear identical to a clean first-attempt pass.

---

# PHASE 12 — UI CHANGE RESILIENCE

Design for maintainability when UI changes.

Do NOT implement dangerous automatic locator replacement.

Instead design:

locator diagnostics
alternative semantic locator discovery
DOM snapshot comparison where appropriate
trace analysis
candidate selector suggestions
confidence scoring
human approval for permanent locator changes

Future AI integration may suggest:

"Existing locator failed.
Candidate locator discovered.
Confidence: 94%.
Suggested Page Object update: ..."

But AI must not silently rewrite production automation.

---

# PHASE 13 — API AUTOMATION

Create a first-class API architecture.

Support:

REST
GET
POST
PUT
PATCH
DELETE
authentication
headers
query parameters
path parameters
JSON bodies
multipart where necessary
schema validation
status validation
business validation
response extraction
API chaining
token handling
test-data creation
cleanup

API clients must be reusable and separate from scenarios.

Never log secrets or full sensitive payloads by default.

---

# PHASE 14 — DATA AND SECURITY

Design centralized test-data management.

Avoid:

hard-coded credentials
hard-coded environment URLs
production secrets
sensitive patient/customer information
tokens in source control
secrets in screenshots/logs/reports

Support CI/CD secret injection.

Include sanitization/redaction utilities for:

API logs
reports
screenshots where practical
configuration dumps
error messages

Assume this framework may operate in an enterprise environment handling sensitive information.

---

# PHASE 15 — PARALLEL EXECUTION

Design safe parallel execution.

Support:

workers
sharding
tags
projects
test isolation
independent browser contexts
unique test data
API-created test data
parallel-safe cleanup

Do not enable parallel execution where shared configuration/state makes it unsafe.

Provide serial/resource-lock mechanisms for such scenarios.

---

# PHASE 16 — CI/CD

The framework must be pipeline-native.

Design execution for systems such as:

Jenkins
GitHub Actions
Azure DevOps or equivalent enterprise CI systems

Pipeline stages conceptually:

INSTALL
→ LINT
→ TYPE CHECK
→ PRE-FLIGHT
→ API SETUP
→ TEST
→ COLLECT ARTIFACTS
→ GENERATE REPORT
→ PUBLISH RESULTS
→ CLEANUP

Support execution after deployment.

Example:

APPLICATION DEPLOYMENT
→ DEPLOYMENT SUCCESS
→ AUTOMATION TRIGGER
→ SMOKE TESTS
→ API VALIDATION
→ UI VALIDATION
→ REPORT
→ PIPELINE RESULT

Allow smoke/regression/tag-specific execution.

---

# PHASE 17 — FUTURE AUTOMATION CONTROL UI

Do NOT build this UI yet.

However, architecture must support a future React + TypeScript control application.

Potential UI inputs:

Application
Environment
Feature
Scenario
Execution Mode
UI / API / Hybrid
Browser
Tags
Test Data
Configuration
Video
Trace
Screenshots
Parallelization

Possible controls:

RUN
STOP
RERUN FAILED
VIEW REPORT
VIEW VIDEO
VIEW TRACE
VIEW SCREENSHOTS

Therefore the automation engine must expose a clean programmatic execution contract rather than depending entirely on manually entered CLI commands.

Design an Execution Manifest concept such as:

{
  project,
  environment,
  tags,
  executionMode,
  browser,
  evidence,
  testData
}

Do not implement the frontend now.

Make the framework frontend-ready.

---

# PHASE 18 — FUTURE AI INTEGRATION

Design extension points for future AI capabilities.

Potential AI use:

analyze failed tests
summarize traces
suggest locator updates
generate candidate Page Objects
generate candidate Gherkin scenarios
detect duplicated steps
analyze API failures
compare before/after state
classify failures
summarize reports
recommend whether UI operations can be converted to API
analyze UI changes

AI must be advisory by default.

AI must NOT:

silently modify production tests
silently modify assertions
hide failures
weaken validation
send sensitive information externally
automatically accept locator changes without policy/approval

---

# PHASE 19 — OBSERVABILITY

Include framework observability.

Every execution should have:

runId
scenarioId
timestamp
environment
application
browser
execution mode
duration
retry count
failure classification
artifact locations

Use structured logs.

Prefer machine-readable JSON logs plus human-readable console output.

Design so future dashboards can consume execution history.

---

# PHASE 20 — DEVELOPER EXPERIENCE

The framework must be easy for engineers to use.

A developer should be able to:

create a new scenario
record exploratory interaction with Codegen
create/update Page Object
reuse Business Actions
add API calls
create Gherkin feature
run locally
debug headed
inspect trace
view video
view screenshots
read HTML report

without understanding the entire internal framework.

Provide templates/generators where useful.

---

# PHASE 21 — QUALITY GATES

Design framework quality checks:

ESLint
Prettier
TypeScript strict mode
lint
typecheck
unit tests for framework utilities
duplicate-step detection
unused locator detection where practical
secret scanning
schema validation
configuration validation

No test execution should begin with an invalid environment/configuration.

---

# PHASE 22 — ARCHITECTURAL PRINCIPLES

Apply these principles throughout:

DRY
SOLID
separation of concerns
composition over inheritance where practical
configuration over hard-coding
API-first when practical
UI verification where meaningful
business-readable scenarios
thin test files
thin Cucumber step definitions
reusable domain actions
observable execution
deterministic automation
safe retries
explicit failures
secure evidence handling

Avoid over-engineering.

Every abstraction must solve a real maintainability, scalability, readability, performance, or security problem.

---

# PHASE 23 — WHAT I WANT FROM YOU NOW

DO NOT CREATE THE NEW FRAMEWORK YET.

First inspect this existing repository and produce:

1. EXISTING RULE INVENTORY

List the relevant rules/files discovered.

2. KNOWLEDGE EXTRACTION MATRIX

For each important concept:

Source
Existing approach
KEEP / IMPROVE / REPLACE / IGNORE
Reason
New-framework recommendation

3. PROPOSED ARCHITECTURE

Show the complete directory structure and explain responsibilities.

4. EXECUTION FLOW

Show:

CONFIG
→ PRE-FLIGHT
→ BEFORE
→ TEST
→ VALIDATION
→ AFTER
→ EVIDENCE
→ REPORT

5. UI/API HYBRID FLOW

Show how expensive UI setup can be replaced by APIs while maintaining UI validation.

6. CUCUMBER DESIGN

Recommend the cleanest Playwright + Gherkin approach and explain the trade-offs.

7. REPORTING DESIGN

Show proposed report structure and artifact model.

8. CI/CD DESIGN

Show deployment-triggered execution architecture.

9. FUTURE REACT UI CONTRACT

Define how a future UI could trigger executions without tightly coupling itself to the framework.

10. FUTURE AI EXTENSION POINTS

Identify exactly where AI can safely assist.

11. RISKS / MISSING REQUIREMENTS

Identify anything important that I have overlooked.

12. MASTER IMPLEMENTATION PROMPT

Finally generate one complete, self-contained prompt called:

NEW_PLAYWRIGHT_FRAMEWORK_MASTER_PROMPT.md

This prompt must contain everything another Cursor session needs to create the framework in a completely empty repository.

The final prompt must NOT depend on access to this existing repository.

Everything learned from this repository that should survive must be explicitly incorporated into the final prompt.

---

# IMPORTANT FINAL RULE

Do not blindly agree with the existing project architecture or with my proposed architecture.

Act as a senior automation architect.

If Playwright provides a better native capability, recommend it.

If an existing rule creates unnecessary complexity, say so.

If a proposed feature creates security, maintenance, performance, or reliability problems, redesign it.

The final framework should feel like an automation PRODUCT, not a collection of test scripts.

It should be suitable for long-term enterprise use and designed so that UI automation, API automation, configuration automation, CI/CD execution, future React controls, and carefully governed AI assistance can coexist without forcing us to rebuild the framework later.
