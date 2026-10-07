# Build a FastAPI Lab Sample Workflow Training Application

Act as a senior Python/FastAPI backend engineer and full-stack mentor.

Create a clean, professional, beginner-friendly training project that demonstrates **API development with FastAPI** through a realistic healthcare laboratory sample workflow.

The main purpose of this project is to teach a developer how REST APIs work in a real application.

The application must support the ENTIRE workflow through APIs.

The UI is only a simple client for those APIs. Do not implement business logic only in the frontend.

---

# 1. Technology Stack

Backend:
- Python 3.12+
- FastAPI
- Pydantic
- SQLAlchemy
- SQLite for local development
- Uvicorn
- pytest
- httpx for API testing

API Documentation:
- Swagger UI through FastAPI
- ReDoc
- OpenAPI schema

Frontend:
- Keep it simple and lightweight.
- Prefer HTML/CSS/JavaScript or a very small React frontend.
- The UI must communicate with FastAPI through HTTP APIs.
- Do NOT duplicate workflow/business logic in the frontend.

Architecture should be simple enough for a junior developer to understand but structured according to good FastAPI practices.

---

# 2. Business Scenario

We are building a simplified healthcare laboratory workflow.

A laboratory sample moves through these stages:

GENERATED
    ↓
SAMPLE_RECEIVING
    ↓
INTAKE_REVIEW
    ↓
REPORTING
    ↓
COMPLETED

The SAME sample must move through the entire workflow.

Do NOT create a new unrelated sample record at each queue.

The sample ID/specimen ID must allow us to trace the same sample from beginning to end.

---

# 3. Sample Data Model

Each generated sample should contain at minimum:

- id
- specimen_id
- patient_first_name
- patient_last_name
- age
- test_type
- current_queue
- status
- clinical_indication
- created_at
- updated_at

Example:

{
  "id": 1,
  "specimen_id": "SP-100001",
  "patient_first_name": "John",
  "patient_last_name": "Smith",
  "age": 45,
  "test_type": "Blood Test",
  "current_queue": "SAMPLE_RECEIVING",
  "status": "PENDING",
  "clinical_indication": null
}

Use fake/sample data only.

Do NOT use real PHI or real patient information.

---

# 4. Step 1 — Generate Sample

Create an API endpoint that generates a new laboratory sample.

Example:

POST /api/v1/samples

Request body may contain:

{
  "patient_first_name": "John",
  "patient_last_name": "Smith",
  "age": 45
}

Automatically generate a unique specimen ID such as:

SP-100001
SP-100002
SP-100003

When a sample is created:

current_queue = SAMPLE_RECEIVING
status = PENDING
test_type = Blood Test

Return the created sample.

Also create an optional endpoint for generating random test samples:

POST /api/v1/samples/generate

Allow:

{
  "count": 10
}

This should create realistic fake test records for development/testing.

---

# 5. Step 2 — Sample Receiving Queue

Create:

GET /api/v1/queues/sample-receiving

Return all samples currently waiting in Sample Receiving.

Example:

[
  {
    "specimen_id": "SP-100001",
    "patient_first_name": "John",
    "patient_last_name": "Smith",
    "age": 45,
    "test_type": "Blood Test",
    "status": "PENDING"
  }
]

Create:

GET /api/v1/samples/{specimen_id}

This should allow us to find the same sample at any point in the workflow.

Create:

POST /api/v1/samples/{specimen_id}/sample-receiving/complete

When called:

1. Verify that the sample exists.
2. Verify that it is currently in SAMPLE_RECEIVING.
3. Mark Sample Receiving as completed.
4. Move the SAME sample to INTAKE_REVIEW.
5. Set status back to PENDING for the new queue.
6. Update timestamps.
7. Return the updated sample.

Invalid workflow transitions must return an appropriate HTTP error such as 400 or 409.

---

# 6. Step 3 — Intake Review Queue

Create:

GET /api/v1/queues/intake-review

Return samples waiting for Intake Review.

The same specimen information must be visible.

For Intake Review, the user must select a Clinical Indication.

Example indications:

- Routine Screening
- Anemia
- Infection
- Diabetes Monitoring
- Preoperative Evaluation
- Other

Create:

POST /api/v1/samples/{specimen_id}/intake-review/complete

Example request:

{
  "clinical_indication": "Anemia"
}

Validation:

- sample must exist
- sample must currently be in INTAKE_REVIEW
- clinical_indication is required
- clinical_indication must be a supported value

When completed:

current_queue = REPORTING
status = PENDING

Return the updated sample.

---

# 7. Step 4 — Reporting Queue

Create:

GET /api/v1/queues/reporting

Return all samples waiting for Reporting.

Create:

POST /api/v1/samples/{specimen_id}/reporting/complete

When Reporting is completed:

current_queue = COMPLETED
status = COMPLETED

Return the final sample.

---

# 8. Completed Samples

Create:

GET /api/v1/samples/completed

Return all completed samples.

Also support:

GET /api/v1/samples

Optional query parameters:

status
queue
specimen_id
patient_last_name

Example:

GET /api/v1/samples?queue=REPORTING

---

# 9. Workflow History

This is important for teaching API/workflow concepts.

Maintain workflow history for each sample.

Create a table/entity such as:

SampleWorkflowHistory

Fields:

- id
- sample_id
- specimen_id
- from_queue
- to_queue
- action
- timestamp

Example:

SP-100001

GENERATED → SAMPLE_RECEIVING
SAMPLE_RECEIVING → INTAKE_REVIEW
INTAKE_REVIEW → REPORTING
REPORTING → COMPLETED

Create:

GET /api/v1/samples/{specimen_id}/history

Example response:

[
  {
    "from_queue": "GENERATED",
    "to_queue": "SAMPLE_RECEIVING",
    "action": "Sample Generated"
  },
  {
    "from_queue": "SAMPLE_RECEIVING",
    "to_queue": "INTAKE_REVIEW",
    "action": "Sample Receiving Completed"
  }
]

---

# 10. API-First Requirement

This is an API training application.

EVERY action available from the UI must have a corresponding REST API.

The complete workflow must be executable WITHOUT opening the UI.

For example, using Swagger:

1. POST /api/v1/samples
2. GET /api/v1/queues/sample-receiving
3. GET /api/v1/samples/{specimen_id}
4. POST /api/v1/samples/{specimen_id}/sample-receiving/complete
5. GET /api/v1/queues/intake-review
6. POST /api/v1/samples/{specimen_id}/intake-review/complete
7. GET /api/v1/queues/reporting
8. POST /api/v1/samples/{specimen_id}/reporting/complete
9. GET /api/v1/samples/{specimen_id}
10. GET /api/v1/samples/{specimen_id}/history

A developer should be able to demonstrate the entire application from Swagger without touching the UI.

---

# 11. Swagger / OpenAPI

Swagger is an important part of this training project.

FastAPI Swagger UI should be available at:

/docs

ReDoc should be available at:

/redoc

Organize Swagger endpoints using tags:

Samples
Sample Receiving
Intake Review
Reporting
Workflow History
Health

Every endpoint should have:

- summary
- description
- response model
- HTTP status code
- request example where appropriate
- response example where useful
- documented error responses

Make Swagger clean enough that it can be used as the primary teaching interface.

---

# 12. Simple UI

Create a simple professional UI.

Dashboard should contain queue cards:

Sample Receiving
Intake Review
Reporting
Completed

Show the number of samples in each queue.

Example:

LAB SAMPLE WORKFLOW

Sample Receiving: 5
Intake Review: 3
Reporting: 2
Completed: 10

Clicking a queue should display its samples in a table.

Columns:

Specimen ID
Patient Name
Age
Test Type
Clinical Indication
Status
Action

Sample Receiving action:

Complete Blood Test

When clicked:

call the Sample Receiving completion API.

Intake Review action:

Allow selecting Clinical Indication from a dropdown.

Then:

Complete Intake Review

This must call the Intake Review API.

Reporting action:

Complete Reporting

This must call the Reporting API.

Completed queue:

Read-only.

Also provide:

Generate Sample

and optionally:

Generate 10 Test Samples

The frontend MUST NOT manipulate database records directly.

Every UI action must call the FastAPI backend.

---

# 13. Backend Structure

Use a clean project structure similar to:

app/
    main.py

    api/
        routes/
            samples.py
            sample_receiving.py
            intake_review.py
            reporting.py
            history.py

    models/
        sample.py
        workflow_history.py

    schemas/
        sample.py
        workflow.py

    services/
        sample_service.py
        workflow_service.py

    db/
        database.py

    core/
        config.py
        enums.py

frontend/
    ...

tests/
    test_samples.py
    test_workflow.py

requirements.txt
README.md

Keep the architecture understandable.

Do not over-engineer it with unnecessary microservices, Kafka, Redis, Kubernetes, authentication systems, or cloud infrastructure.

This is a training project.

---

# 14. API Validation

Demonstrate FastAPI/Pydantic validation.

Examples:

Age cannot be negative.

Specimen ID must be unique.

Clinical indication cannot be empty when completing Intake Review.

A Reporting sample cannot be completed through Sample Receiving.

A COMPLETED sample cannot move backward.

A nonexistent specimen should return:

404 Not Found

Invalid workflow transitions should return:

400 Bad Request

or:

409 Conflict

Use meaningful error responses.

Example:

{
  "detail": "Sample SP-100001 is currently in REPORTING and cannot complete SAMPLE_RECEIVING."
}

---

# 15. Workflow Rules

The only valid workflow is:

SAMPLE_RECEIVING
→ INTAKE_REVIEW
→ REPORTING
→ COMPLETED

Do NOT allow:

SAMPLE_RECEIVING → REPORTING

Do NOT allow:

INTAKE_REVIEW → COMPLETED

Do NOT allow:

REPORTING → INTAKE_REVIEW

Do NOT allow a completed sample to restart automatically.

Centralize transition validation in the service layer rather than duplicating it across route handlers.

---

# 16. Database

Use SQLite locally so the application can run immediately.

Use SQLAlchemy ORM.

Create appropriate relationships between:

Sample
SampleWorkflowHistory

Database should persist between application restarts.

Include initialization logic.

Keep database code structured so PostgreSQL could replace SQLite later without redesigning the application.

---

# 17. Automated API Tests

Create pytest tests demonstrating the entire workflow.

Critical integration test:

Create Sample
→ verify Sample Receiving
→ complete Sample Receiving
→ verify Intake Review
→ select Clinical Indication
→ complete Intake Review
→ verify Reporting
→ complete Reporting
→ verify COMPLETED
→ verify workflow history

Also test:

- invalid specimen ID
- invalid age
- missing clinical indication
- duplicate specimen
- incorrect queue transition
- completing the same queue twice

The tests should call APIs rather than directly changing database state whenever possible.

---

# 18. Health Endpoint

Create:

GET /health

Response:

{
  "status": "healthy",
  "service": "Lab Sample Workflow API"
}

---

# 19. Logging

Add simple application logging.

Log important workflow transitions such as:

Sample SP-100001 created.

Sample SP-100001 moved from SAMPLE_RECEIVING to INTAKE_REVIEW.

Sample SP-100001 moved from INTAKE_REVIEW to REPORTING.

Sample SP-100001 completed REPORTING.

Do not log sensitive patient information.

---

# 20. README / Teaching Documentation

Create a very clear README.

Explain:

1. What FastAPI is
2. What REST API means
3. GET vs POST
4. Request vs Response
5. Path parameters
6. Query parameters
7. JSON request bodies
8. HTTP status codes
9. Pydantic validation
10. Swagger/OpenAPI
11. Database models
12. API routes
13. Service layer
14. Workflow validation
15. Automated API testing

Include installation instructions:

python -m venv .venv

Activate virtual environment.

pip install -r requirements.txt

Run:

uvicorn app.main:app --reload

Then open Swagger:

http://127.0.0.1:8000/docs

Also explain how to run:

pytest

---

# 21. Swagger Training Scenario

Create a README section called:

"Complete Workflow Using Swagger"

Walk the developer through this exact exercise:

STEP 1
Generate a sample.

STEP 2
Copy its specimen_id.

STEP 3
Call Sample Receiving Queue API and confirm the specimen appears.

STEP 4
Complete Sample Receiving.

STEP 5
Call Intake Review Queue API and confirm the SAME specimen appears.

STEP 6
Select:

clinical_indication = "Anemia"

and complete Intake Review.

STEP 7
Call Reporting Queue and verify the SAME specimen appears.

STEP 8
Complete Reporting.

STEP 9
Retrieve the sample and verify:

status = COMPLETED

STEP 10
Retrieve workflow history and verify all transitions.

The purpose is to visually teach how one resource moves through multiple API-driven workflow stages.

---

# 22. Important Development Rules

Before coding:

1. Create the proposed folder structure.
2. Briefly explain the architecture.
3. Then implement backend models and schemas.
4. Implement database layer.
5. Implement service/business logic.
6. Implement API routes.
7. Configure Swagger/OpenAPI.
8. Add tests.
9. Run tests and fix failures.
10. Build the simple UI.
11. Run the complete workflow end-to-end.
12. Verify UI actions use APIs.
13. Update README.

Do not leave placeholder TODO implementations.

Do not fake API responses in the frontend.

Do not store workflow state only in JavaScript.

Do not bypass the API to update the database.

Do not create separate disconnected patient/sample objects for each queue.

The SAME specimen must be traceable throughout the entire lifecycle.

---

# 23. Definition of Done

The project is complete only when this works:

Generate Sample
↓
Sample appears in Sample Receiving
↓
Complete Sample Receiving through API
↓
Same sample appears in Intake Review
↓
Select Clinical Indication
↓
Complete Intake Review through API
↓
Same sample appears in Reporting
↓
Complete Reporting through API
↓
Sample becomes COMPLETED
↓
Full workflow history can be retrieved

AND:

- Every operation works through Swagger.
- Every UI operation calls an API.
- Automated tests pass.
- Invalid transitions are rejected.
- SQLite persists the records.
- Swagger documentation is clear.
- README explains the project to a developer learning FastAPI.

After implementation, provide:

1. Final project structure
2. List of all API endpoints
3. Database schema summary
4. Instructions to run the application
5. Instructions to use Swagger
6. Test results
7. One complete example specimen lifecycle
8. Explanation of how the UI communicates with the APIs
