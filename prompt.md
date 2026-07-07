Read CLAUDE.md and the complete PropFlo project.

Review:

- MASTER-PROJECT-PLAN.md
- PROJECT-SCHEDULE-VALIDATION.md, if it exists
- BUDGET-VALIDATION.md, if it exists
- 01_Strategy/90-Day-Launch-Plan.md
- 02_Proposal/Implementation-Plan.md
- 02_Proposal/Scope-of-Work.md
- 02_Proposal/Budget-Proposal.md
- 03_Website-Landing-Pages/\*
- 04_Paid-Media/\*
- 05_Content/Content-Calendar.md
- 07_Tracking-Reporting/Tracking-Plan.md
- 08_CRM-Automation/\*
- all relevant client-supplied proposal and source documents

Your task is to create a traditional project-management schedule using CPM and PERT principles.

Do not create a marketing roadmap.

Do not create a simplified 30-60-90 plan.

Do not create a presentation yet.

The objective is to produce a proper project schedule with activity dependencies, forward-pass calculations, backward-pass calculations, float, critical path, milestones, resources, and budget allocation.

Create the following files:

1. CPM-PERT-MASTER-SCHEDULE.md
2. PROJECT-ACTIVITY-DATA.csv
3. PROJECT-GANTT-DATA.csv
4. PROJECT-COST-BASELINE.md

Do not modify MASTER-PROJECT-PLAN.md yet.

# 1. Scheduling Model

Split the overall programme into two connected stages.

## Stage A: Preparation and Implementation

This stage begins at project authorisation and ends at the formal Controlled Campaign Launch milestone.

It should include all necessary work before launch, including:

- project initiation
- kick-off
- stakeholder confirmation
- commercial scope decisions
- discovery
- compliance information collection
- approved claims
- restricted claims
- audience confirmation
- offer confirmation
- competitor research
- keyword research
- negative keyword research
- landing page planning
- landing page copy
- landing page build or platform dependency
- form preparation
- tracking architecture
- GA4/GTM setup
- conversion configuration
- lead-source capture
- CRM or lead-process preparation
- email and WhatsApp workflow preparation
- campaign structure
- ad copy approval
- campaign build
- platform verification where required
- SEO foundation work
- partner marketing materials
- technical testing
- form testing
- tracking testing
- launch checklist
- final launch approval

Do not assume every activity is sequential.

Identify activities that can run in parallel.

## Stage B: 90-Day Controlled Live Campaign

This stage begins only at the Controlled Campaign Launch milestone.

It must cover a true 90 live days.

Include:

- campaign launch
- initial technical monitoring
- search-term review
- negative keyword optimisation
- lead-quality feedback
- landing page optimisation
- ad copy testing
- budget pacing
- Meta retargeting activation when traffic volume supports it
- SEO content execution
- partner outreach
- LinkedIn B2B activity
- email and WhatsApp nurture
- Day 7 review
- Day 14 review
- Day 30 review
- Day 45 optimisation checkpoint
- Day 60 performance review
- Day 75 scale-readiness checkpoint
- Day 90 formal management review and scale decision

# 2. Activity Register

Create a complete activity register.

Every activity must contain:

- Activity ID
- WBS code
- Activity name
- Stage
- Workstream
- Duration in working days
- Immediate predecessor activity ID or IDs
- Relationship type
- Lag, if any
- Responsible role
- Deliverable
- Acceptance criterion
- Estimated cost or budget allocation where applicable

Use Finish-to-Start as the default relationship.

Use other dependency relationships only where justified:

- FS = Finish to Start
- SS = Start to Start
- FF = Finish to Finish
- SF = Start to Finish

Clearly identify milestones as zero-duration activities.

# 3. CPM Forward Pass

Calculate for every activity:

- Early Start
- Early Finish

Use a consistent project day numbering system.

Project Day 0 is project authorisation.

Do not use calendar dates yet unless a real start date has been confirmed.

For a Finish-to-Start activity:

EF = ES + Duration

For successor activities:

ES = maximum EF of all required predecessors

Where alternative relationship types are used, calculate them appropriately and explain the logic.

# 4. CPM Backward Pass

Calculate for every activity:

- Late Finish
- Late Start

Work backward from the final Stage A milestone for the implementation schedule and from the Day 90 management decision milestone for the full programme.

Calculate:

LS = LF - Duration

Where an activity has multiple successors:

LF = minimum LS of successor activities

Adjust calculations appropriately for SS, FF, SF, and lag relationships.

# 5. Total Float

Calculate total float for every activity:

Total Float = LS - ES

and confirm with:

Total Float = LF - EF

Where total float equals zero, mark the activity as:

CRITICAL

Do not simply guess the critical path.

Calculate it from the dependency network.

# 6. Critical Path

Identify and clearly list:

- Stage A critical path
- Stage B critical path
- Overall programme critical path

Show the sequence of activity IDs and activity names.

Explain which activities can delay:

- controlled campaign launch
- Day 30 review
- Day 60 review
- Day 90 scale decision

# 7. PERT Analysis

For major uncertain activities, create three-point estimates:

- Optimistic duration
- Most likely duration
- Pessimistic duration

Calculate expected PERT duration using:

TE = (O + 4M + P) / 6

Apply this particularly to uncertain activities such as:

- compliance approval
- website or landing page delivery
- platform access
- advertising verification
- client content approval
- CRM integration
- tracking implementation
- final campaign approval

Where the source material does not provide enough evidence for estimates, label them clearly as planning assumptions requiring review.

Do not pretend that assumptions are facts.

# 8. CPM-PERT-MASTER-SCHEDULE.md

This file must contain:

## A. Scheduling assumptions

## B. Complete activity table

Columns:

| ID | WBS | Activity | Duration | Pred | Rel | ES | EF | LS | LF | Float | Critical | Owner |

## C. Stage A critical path

## D. Stage B critical path

## E. Overall critical path

## F. PERT three-point estimate table

Columns:

| ID | Activity | Optimistic | Most Likely | Pessimistic | PERT Expected |

## G. Milestone schedule

## H. Critical dependency commentary

## I. Schedule risks

## J. Management interpretation

Explain the schedule in plain business language after presenting the formal calculations.

# 9. PROJECT-ACTIVITY-DATA.csv

Create a machine-readable CSV suitable for Excel, Microsoft Project import preparation, or further chart generation.

Use these columns:

ActivityID,
WBS,
ActivityName,
Stage,
Workstream,
DurationDays,
Predecessors,
Relationship,
LagDays,
EarlyStart,
EarlyFinish,
LateStart,
LateFinish,
TotalFloat,
Critical,
Owner,
EstimatedCost,
Deliverable,
AcceptanceCriterion

Use one row per activity.

# 10. PROJECT-GANTT-DATA.csv

Create a clean Gantt-source CSV with:

ActivityID,
WBS,
ActivityName,
Stage,
StartDay,
FinishDay,
DurationDays,
TotalFloat,
Critical,
Owner,
Milestone

The StartDay and FinishDay values must come from the calculated CPM schedule, not arbitrary visual placement.

# 11. PROJECT-COST-BASELINE.md

Create a traditional project cost baseline.

Use the WBS and activity schedule.

Separate:

- project setup costs
- landing page or web implementation costs
- campaign management costs
- media spend
- third-party costs
- optional costs
- contingency
- costs awaiting commercial decision

Show costs by:

1. WBS work package
2. Stage A
3. Stage B Month 1
4. Stage B Month 2
5. Stage B Month 3
6. Total programme
7. Ongoing monthly cost after Day 90

Do not silently resolve overlapping scope between the marketing programme and the low-code or Umbraco proposals.

Clearly identify overlap and show alternative budget scenarios where necessary.

# 12. Important Schedule Rules

The schedule must obey the following logic:

- Compliance approval is a launch gate.
- Approved claims are required before final public copy approval.
- Lead handling readiness is a launch gate.
- Tracking must be tested before launch.
- Landing page or campaign destination pages must be ready before launch.
- Campaign build may begin before landing page completion where logically possible.
- SEO foundation work may run in parallel with campaign preparation.
- Partner marketing preparation may run in parallel.
- Partner outreach may begin before paid campaign launch where materials and compliance wording are approved.
- Meta retargeting cannot meaningfully start until sufficient eligible traffic exists.
- The Day 90 review must occur after 90 live campaign days, not 90 days after project kick-off.

# 13. Quality Check

Before committing:

1. Recalculate the forward pass.
2. Recalculate the backward pass.
3. Verify ES <= LS for every activity.
4. Verify EF <= LF for every activity.
5. Verify zero-float activities form a valid connected critical path.
6. Verify every predecessor activity ID exists.
7. Verify no circular dependencies exist.
8. Verify milestone durations are zero.
9. Verify Stage B starts only after the launch milestone.
10. Verify the Day 90 review occurs after a true 90-day live period.

After validation:

- commit the four files to GitHub
- use a clear commit message
- report the commit hash
- report the calculated Stage A duration
- report the full programme duration
- report the Stage A critical path
- report the overall critical path
- list all duration assumptions requiring George's review
- list all cost assumptions requiring George's review

Do not modify other project files.
Do not create slides.
Do not continue to another task.
