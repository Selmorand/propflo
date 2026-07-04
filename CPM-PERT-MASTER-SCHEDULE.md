# PropFlo CPM/PERT Master Schedule

Prepared by Interon · Commercial in confidence · Calculated project schedule (not a marketing roadmap)

This is a formal project schedule built with Critical Path Method (CPM) and PERT principles. All Early Start / Early Finish / Late Start / Late Finish / Float values are **calculated from the dependency network**, not estimated by eye. The critical path is derived from zero-float activities, not assumed. Companion machine-readable files: `PROJECT-ACTIVITY-DATA.csv` and `PROJECT-GANTT-DATA.csv`. Costs are in `PROJECT-COST-BASELINE.md`.

---

## A. Scheduling Assumptions

1. **Two connected stages.** Stage A (preparation) runs from project authorisation to the Controlled Campaign Launch milestone. Stage B (the live campaign) begins only at launch and runs a true 90 live days.
2. **Day numbering.** Stage A is scheduled in **working days** from authorisation (Day 0). Stage B is scheduled in **live (calendar) days** from launch (Day 0). These are different clocks and are labelled as such throughout.
3. **Calendar integration.** For a single calendar timeline (and the Gantt CSV) Stage A working days are converted at **5 working days = 7 calendar days**. Launch therefore lands at ~calendar day 69; the programme ends at ~calendar day 159. This conversion is a planning assumption.
4. **No calendar dates.** No real start date is confirmed, so no dates are shown. Day 0 = authorisation.
5. **Default relationship is Finish-to-Start (FS).** Parallelism is modelled by shared predecessors rather than SS/FF/SF, so every relationship here is FS. This keeps the forward/backward pass verifiable. Where genuine start-to-start behaviour matters (continuous Stage B streams) it is represented as an activity spanning the window.
6. **Milestones are zero-duration** activities (marked ◆) and act as gates.
7. **Durations** use planning estimates; uncertain activities use the PERT most-likely value (rounded), with three-point ranges in Section F. Durations are planning assumptions requiring PropFlo review, not facts.
8. **Resource assumption.** One Interon delivery team working the network; no resource-levelling constraint is applied (a resource constraint could extend the schedule and is flagged as a risk).

---

## B. Complete Activity Table

Columns: ID, WBS, Activity, Duration, Predecessors, Relationship, ES, EF, LS, LF, Float, Critical, Owner. ◆ = milestone (zero duration).

### Stage A (units: working days from authorisation, Day 0)

| ID | WBS | Activity | Dur | Pred | Rel | ES | EF | LS | LF | Float | Critical | Owner |
|---|---|---|---:|---|---|---:|---:|---:|---:|---:|---|---|
| A0 | 1.0 | Project authorisation | 0 | — | FS | 0 | 0 | 0 | 0 | 0 | **YES** | PropFlo Sponsor |
| A1 | 1.1 | Kick-off & roles confirmation | 2 | A0 | FS | 0 | 2 | 0 | 2 | 0 | **YES** | Interon Project Lead |
| A2 | 1.2 | Stakeholder & sponsor confirmation | 1 | A1 | FS | 2 | 3 | 2 | 3 | 0 | **YES** | Interon Project Lead |
| A3 | 1.5 | Commercial scope decision (marketing vs build) | 3 | A1 | FS | 2 | 5 | 18 | 21 | 16 | no | PropFlo Sponsor |
| A4 | 1.4 | Access & assets collection | 10 | A1 | FS | 2 | 12 | 23 | 33 | 21 | no | PropFlo + Interon |
| A13 | 2.2 | Competitor research | 3 | A1 | FS | 2 | 5 | 15 | 18 | 13 | no | Interon Strategy |
| A5 | 1.3 | Discovery & compliance information collection | 6 | A1, A2 | FS | 3 | 9 | 3 | 9 | 0 | **YES** | Interon Strategy + PropFlo Compliance |
| A34 | 7.5 | Google financial-services verification | 10 | A4 | FS | 12 | 22 | 35 | 45 | 23 | no | Interon Paid Media |
| A6 | 3.1 | Compliance questions completed | 3 | A5 | FS | 9 | 12 | 9 | 12 | 0 | **YES** | PropFlo Compliance |
| A11 | 2.1 | Audience confirmation | 2 | A5 | FS | 9 | 11 | 9 | 11 | 0 | **YES** | Interon Strategy |
| A27 | 6.1 | CRM & lead-process preparation | 6 | A5 | FS | 9 | 15 | 34 | 40 | 25 | no | PropFlo Sales + Interon |
| A7 | 3.2 | Approved claims list | 6 | A6 | FS | 12 | 18 | 12 | 18 | 0 | **YES** | PropFlo Compliance |
| A8 | 3.3 | Restricted claims list | 2 | A6 | FS | 12 | 14 | 19 | 21 | 7 | no | PropFlo Compliance |
| A10 | 3.5 | Privacy & consent wording confirmed | 3 | A6 | FS | 12 | 15 | 18 | 21 | 6 | no | PropFlo Compliance |
| A12 | 2.4 | Offer confirmation | 2 | A11 | FS | 11 | 13 | 11 | 13 | 0 | **YES** | Interon Strategy |
| A16 | 2.6 | Measurement baseline | 2 | A11 | FS | 11 | 13 | 16 | 18 | 5 | no | Interon Paid Media |
| A9 | 3.4 | Required disclaimers | 3 | A7 | FS | 18 | 21 | 18 | 21 | 0 | **YES** | PropFlo Compliance |
| A14 | 2.3 | Keyword research | 3 | A12 | FS | 13 | 16 | 13 | 16 | 0 | **YES** | Interon Paid Media |
| M1 | 3.9 | ◆ Compliance & claims approved (GATE) | 0 | A7, A8, A9, A10 | FS | 21 | 21 | 21 | 21 | 0 | **YES** | PropFlo Compliance |
| A15 | 2.4b | Negative keyword research | 2 | A14 | FS | 16 | 18 | 16 | 18 | 0 | **YES** | Interon Paid Media |
| A28 | 6.4 | Email & WhatsApp workflow preparation | 3 | M1, A27 | FS | 21 | 24 | 40 | 43 | 19 | no | Interon Content |
| A35 | 8.2 | SEO foundation content | 8 | M1 | FS | 21 | 29 | 41 | 49 | 20 | no | Interon Content/SEO |
| A36 | 8.3 | Partner marketing materials & LinkedIn setup | 6 | M1 | FS | 21 | 27 | 43 | 49 | 22 | no | Interon Strategy |
| M2 | 2.9 | ◆ Strategy approved | 0 | A12, A13, A15, A16 | FS | 18 | 18 | 18 | 18 | 0 | **YES** | PropFlo Sponsor |
| A29 | 6.5 | Lead-handling readiness sign-off | 2 | A27, A28 | FS | 24 | 26 | 43 | 45 | 19 | no | PropFlo Sales |
| A17 | 4.1 | Landing page planning & sitemap sign-off | 3 | M2 | FS | 18 | 21 | 18 | 21 | 0 | **YES** | Interon Strategy |
| A22 | 5.1 | Tracking architecture & plan | 2 | M2 | FS | 18 | 20 | 31 | 33 | 13 | no | Interon Paid Media |
| A30 | 7.1 | Campaign structure (Google + Meta setup) | 2 | A15, M2 | FS | 18 | 20 | 33 | 35 | 15 | no | Interon Paid Media |
| M5 | 6.9 | ◆ Lead handling ready (GATE) | 0 | A29 | FS | 26 | 26 | 45 | 45 | 19 | no | PropFlo Sales |
| A18 | 4.2 | Landing page copy & creative | 6 | A17, M1, A3 | FS | 21 | 27 | 21 | 27 | 0 | **YES** | Interon Content |
| A23 | 5.2 | GA4 & GTM setup | 3 | A22, A4 | FS | 20 | 23 | 33 | 36 | 13 | no | Interon Dev/Tech |
| A31 | 7.3 | Ad copy draft | 3 | A30, M1 | FS | 21 | 24 | 35 | 38 | 14 | no | Interon Content |
| A19 | 4.2b | Landing page build (interim/platform) | 11 | A18 | FS | 27 | 38 | 27 | 38 | 0 | **YES** | WS4 owner (decision) |
| A20 | 4.3 | Form preparation | 3 | A18 | FS | 27 | 30 | 35 | 38 | 8 | no | Interon Dev/Tech |
| A24 | 5.3 | Conversion configuration | 2 | A23 | FS | 23 | 25 | 36 | 38 | 13 | no | Interon Paid Media |
| A32 | 7.3b | Ad copy approval | 4 | A31 | FS | 24 | 28 | 38 | 42 | 14 | no | PropFlo Compliance |
| A21 | 4.7 | Landing page QA & approval | 2 | A19, A20 | FS | 38 | 40 | 38 | 40 | 0 | **YES** | Interon + PropFlo |
| A25 | 5.4 | Lead-source capture & UTM | 2 | A24 | FS | 25 | 27 | 38 | 40 | 13 | no | Interon Paid Media |
| M3 | 4.9 | ◆ Landing pages approved (GATE) | 0 | A21 | FS | 40 | 40 | 40 | 40 | 0 | **YES** | PropFlo Sponsor |
| A26 | 5.6 | Tracking end-to-end test | 2 | A25, M3 | FS | 40 | 42 | 40 | 42 | 0 | **YES** | Interon Dev/Tech |
| M4 | 5.9 | ◆ Tracking approved (GATE) | 0 | A26 | FS | 42 | 42 | 42 | 42 | 0 | **YES** | Interon Project Lead |
| A33 | 7.1b | Campaign build | 3 | A32, M4 | FS | 42 | 45 | 42 | 45 | 0 | **YES** | Interon Paid Media |
| M6 | 7.9 | ◆ Campaigns approved | 0 | A33, A34 | FS | 45 | 45 | 45 | 45 | 0 | **YES** | PropFlo Sponsor |
| A37 | 9.1 | Pre-launch testing (form/tracking/technical) | 3 | M3, M4, M5, M6 | FS | 45 | 48 | 45 | 48 | 0 | **YES** | Interon + PropFlo |
| A38 | 9.4 | Launch checklist sign-off | 1 | A37 | FS | 48 | 49 | 48 | 49 | 0 | **YES** | Interon + PropFlo |
| M7 | 10.0 | ◆ Controlled Campaign Launch (Stage B Day 0) | 0 | A38, A35, A36 | FS | 49 | 49 | 49 | 49 | 0 | **YES** | Interon Paid Media |

Stage A finish = **49 working days** (~9.8 weeks). Longest single chain, not the sum of all work.

### Stage B (units: live campaign days from launch, Day 0)

| ID | WBS | Activity | Dur | Pred | Rel | ES | EF | LS | LF | Float | Critical | Owner |
|---|---|---|---:|---|---|---:|---:|---:|---:|---:|---|---|
| B0 | 10.0 | ◆ Launch (Day 0) | 0 | — | FS | 0 | 0 | 0 | 0 | 0 | **YES** | Interon Paid Media |
| B1 | 10.1 | Live running & initial technical monitoring (wk1) | 7 | B0 | FS | 0 | 7 | 0 | 7 | 0 | **YES** | Interon Paid Media |
| B8 | 11.1 | Search-term & negative optimisation (continuous) | 90 | B0 | FS | 0 | 90 | 0 | 90 | 0 | **YES** | Interon Paid Media |
| B9 | 11.2 | Landing page & ad-copy optimisation | 90 | B0 | FS | 0 | 90 | 0 | 90 | 0 | **YES** | Interon Paid Media |
| B10 | 11.3 | SEO content execution | 90 | B0 | FS | 0 | 90 | 0 | 90 | 0 | **YES** | Interon Content/SEO |
| B11 | 11.4 | Partner outreach & LinkedIn B2B | 90 | B0 | FS | 0 | 90 | 0 | 90 | 0 | **YES** | Interon Strategy |
| B12 | 11.5 | Email & WhatsApp nurture | 90 | B0 | FS | 0 | 90 | 0 | 90 | 0 | **YES** | PropFlo Sales + Interon |
| MB7 | 10.7 | ◆ Day 7 technical & search-term review | 0 | B1 | FS | 7 | 7 | 7 | 7 | 0 | **YES** | Interon Paid Media |
| B2 | 10.2 | Live running to Day 14 | 7 | MB7 | FS | 7 | 14 | 7 | 14 | 0 | **YES** | Interon Paid Media |
| MB14 | 10.14 | ◆ Day 14 lead-quality review | 0 | B2 | FS | 14 | 14 | 14 | 14 | 0 | **YES** | Interon + PropFlo Sales |
| B3 | 10.3 | Live running to Day 30 | 16 | MB14 | FS | 14 | 30 | 14 | 30 | 0 | **YES** | Interon Paid Media |
| MB30 | 10.30 | ◆ Day 30 performance review | 0 | B3 | FS | 30 | 30 | 30 | 30 | 0 | **YES** | Interon + PropFlo |
| B4 | 10.4 | Live running to Day 45 | 15 | MB30 | FS | 30 | 45 | 30 | 45 | 0 | **YES** | Interon Paid Media |
| B13 | 11.6 | Meta retargeting activation (traffic-gated) | 60 | MB30 | FS | 30 | 90 | 30 | 90 | 0 | **YES** | Interon Paid Media |
| MB45 | 10.45 | ◆ Day 45 optimisation checkpoint | 0 | B4 | FS | 45 | 45 | 45 | 45 | 0 | **YES** | Interon Paid Media |
| B5 | 10.5 | Live running to Day 60 | 15 | MB45 | FS | 45 | 60 | 45 | 60 | 0 | **YES** | Interon Paid Media |
| MB60 | 10.60 | ◆ Day 60 performance & channel review | 0 | B5 | FS | 60 | 60 | 60 | 60 | 0 | **YES** | Interon + PropFlo |
| B6 | 10.6 | Live running to Day 75 | 15 | MB60 | FS | 60 | 75 | 60 | 75 | 0 | **YES** | Interon Paid Media |
| MB75 | 10.75 | ◆ Day 75 scale-readiness checkpoint | 0 | B6 | FS | 75 | 75 | 75 | 75 | 0 | **YES** | Interon + PropFlo |
| B7 | 10.7b | Live running to Day 90 | 15 | MB75 | FS | 75 | 90 | 75 | 90 | 0 | **YES** | Interon Paid Media |
| MB90 | 10.90 | ◆ Day 90 formal scale decision | 0 | B7 | FS | 90 | 90 | 90 | 90 | 0 | **YES** | Interon + PropFlo Sponsor |

Stage B is a fixed 90 live days. Every activity is zero-float because the campaign window is calendar-bound (see Section D).

---

## C. Stage A Critical Path

Calculated from zero-float activities. Two zero-float chains run in parallel out of A5 (discovery) and converge at A18 (landing page copy) on Day 21; both are critical.

**Primary critical path (compliance-led):**

A0 → A1 → A2 → A5 → A6 → A7 → A9 → **M1 (Compliance gate, D21)** → A18 → A19 → A21 → **M3 (Pages, D40)** → A26 → **M4 (Tracking, D42)** → A33 → **M6 (Campaigns, D45)** → A37 → A38 → **M7 (Launch, D49)**

**Co-critical chain (strategy-led, also zero float):**

A5 → A11 → A12 → A14 → A15 → **M2 (Strategy, D18)** → A17 → A18 (converges into the copy → build → pages → tracking → campaign → launch tail)

Length: **49 working days**. The tail from landing pages onward (A18 → A19 → A21 → M3 → A26 → M4 → A33 → M6 → A37 → A38 → M7) is a single serial spine: pages must be built and approved before tracking can be tested, which must pass before the campaign build finalises, which must pass testing before launch.

---

## D. Stage B Critical Path

The live campaign is calendar-driven, so the critical path is the review spine:

B0 (Launch) → B1 → **MB7** → B2 → **MB14** → B3 → **MB30** → B4 → **MB45** → B5 → **MB60** → B6 → **MB75** → B7 → **MB90 (Day 90 decision)**

Length: **90 live days**. The continuous streams (B8 search-term optimisation, B9 CRO, B10 SEO, B11 partner, B12 nurture) and B13 Meta retargeting (from Day 30) all span to Day 90 and therefore also carry zero float — they are co-critical against the fixed window rather than shortenable.

---

## E. Overall Programme Critical Path

Stage A critical path → **M7 = Launch (B0)** → Stage B review spine → **MB90**.

- Stage A: 49 working days (~calendar day 69 at 5wd/7cal).
- Stage B: 90 live days (calendar day 69 → 159).
- **Overall programme: ~159 calendar days ≈ 22.7 weeks ≈ 5.2 months** from authorisation to the Day-90 scale decision.

---

## F. PERT Three-Point Estimate Table

TE = (O + 4M + P) / 6. SD = (P − O) / 6, in working days. The CPM above used the rounded most-likely durations; PERT-expected values are marginally higher, and pessimistic values extend Stage A materially (see Section I).

| ID | Activity | Optimistic | Most Likely | Pessimistic | PERT Expected (TE) | SD |
|---|---|---:|---:|---:|---:|---:|
| A4 | Access & assets collection | 5 | 10 | 20 | 10.83 | 2.50 |
| A5 | Discovery & compliance information collection | 3 | 6 | 10 | 6.17 | 1.17 |
| A7 | Approved claims list | 3 | 6 | 12 | 6.50 | 1.50 |
| A18 | Landing page copy & creative | 3 | 6 | 10 | 6.17 | 1.17 |
| A19 | Landing page build (interim/platform) | 5 | 11 | 20 | 11.50 | 2.50 |
| A23 | GA4 & GTM setup (tracking implementation) | 2 | 3 | 6 | 3.33 | 0.67 |
| A26 | Tracking end-to-end test | 1 | 2 | 5 | 2.33 | 0.67 |
| A27 | CRM & lead-process preparation | 3 | 6 | 12 | 6.50 | 1.50 |
| A32 | Ad copy approval (client) | 2 | 4 | 8 | 4.33 | 1.00 |
| A34 | Google financial-services verification | 5 | 10 | 20 | 10.83 | 2.50 |

Of these, the ones **on the critical path** are A5, A7, A18, A19, A26. If each ran to its pessimistic duration, Stage A would extend by roughly 26 working days to ~**75 working days (~15 weeks)**.

---

## G. Milestone Schedule

| Milestone | Stage | Timing (native) | ~Calendar day | Gate? |
|---|---|---|---:|---|
| M2 Strategy approved | A | WD 18 | 25 | — |
| M1 Compliance & claims approved | A | WD 21 | 29 | **Hard gate** |
| M5 Lead handling ready | A | WD 26 | 36 | **Hard gate** |
| M3 Landing pages approved | A | WD 40 | 56 | **Hard gate** |
| M4 Tracking approved | A | WD 42 | 59 | **Hard gate** |
| M6 Campaigns approved | A | WD 45 | 63 | Gate |
| M7 Controlled Campaign Launch | A→B | WD 49 | 69 | **Launch** |
| MB7 Day 7 review | B | LD 7 | 76 | Review |
| MB14 Day 14 review | B | LD 14 | 83 | Review |
| MB30 Day 30 review | B | LD 30 | 99 | Review |
| MB45 Day 45 checkpoint | B | LD 45 | 114 | Review |
| MB60 Day 60 review | B | LD 60 | 129 | Review |
| MB75 Day 75 checkpoint | B | LD 75 | 144 | Review |
| MB90 Day 90 scale decision | B | LD 90 | 159 | **Decision** |

---

## H. Critical Dependency Commentary

**What can delay the Controlled Campaign Launch (M7):** any slip on a critical activity moves launch day-for-day. The binding chains are:
- **Compliance (A5→A6→A7→A9→M1).** Approved claims are on the critical path; a slow legal/compliance turnaround pushes everything downstream. Compliance is the single largest launch-date risk.
- **Landing pages (A18→A19→A21→M3).** Copy approval then the 11-day build then QA/approval. The build duration (and whether it is interim or platform, decision S1) is the largest single activity on the path.
- **Serial tail (M3→A26→M4→A33→M6→A37→A38→M7).** Tracking can only be tested once pages exist; the campaign build finalises only once tracking is approved; testing only once campaigns are built. This serialisation is why the second half of Stage A cannot be compressed by adding people.

**Not currently critical, but watch:**
- **Lead handling (M5)** has 19 working days of float, but it is a **hard launch gate** — if PropFlo's lead process is not ready by launch, it becomes critical regardless of float.
- **Google verification (A34)** has 23 days of float; if it exceeds ~7 weeks it becomes critical.
- **CRM prep (A27, 25 float)** and **SEO/partner materials (A35/A36, 20–22 float)** are comfortably non-critical.

**What can delay the Day 30 / 60 / 90 reviews:** within Stage B these are calendar-fixed (Day 30/60/90 from launch). The only thing that moves them is a **change in the launch date** — i.e., a Stage A slip. Once live, the reviews cannot be "caught up"; they occur after true elapsed live days.

---

## I. Schedule Risks

| Risk | Effect on schedule | Note |
|---|---|---|
| Compliance approval delay (A5/A7/M1) | Direct day-for-day slip of launch | On the critical path; highest-impact risk |
| Landing page build / platform dependency (A19) | Pessimistic +9 working days | Interim vs platform decision (S1) drives this |
| Client copy/ad approvals (A18, A32) | A18 critical; A32 has 14 float | A18 slip moves launch |
| Tracking serialised after pages (A26) | Compresses no faster than pages allow | Cannot parallelise past M3 |
| Google FS verification (A34) | 23 float now; can become critical | Start early (Week 1–2) to protect it |
| Lead-handling readiness (M5) | Hard gate despite 19 float | Client-owned; confirm owner early |
| Resource contention | Not modelled; could extend | One-team assumption; levelling may push dates |
| PERT pessimistic case | Stage A ~75 WD (~15 weeks) | vs 49 WD expected |

**Calculated Stage A range:** ~49 working days (expected) to ~75 working days (pessimistic) — i.e. ~**10 to ~15 weeks**. This is longer than the rough "6–8 weeks" placeholder used earlier in MASTER-PROJECT-PLAN.md; the CPM shows the real constraint is the compliance → copy → build → pages → tracking → campaign → testing spine.

---

## J. Management Interpretation (Plain Language)

- **Preparation realistically takes about 10 weeks, not 6–8.** Once you follow the actual dependencies — compliance sign-off, then landing-page copy and build, then testing tracking on the finished pages, then finalising and testing the campaigns — the earliest sensible launch is around working day 49 (~calendar week 10). Adding people does not speed up the second half because those steps must happen in order.
- **The whole programme, kick-off to the Day-90 decision, is about 5 months** (~159 calendar days). The 90-day performance clock only starts at launch.
- **Compliance is the pacing item.** If PropFlo returns approved claims and disclaimers quickly, the schedule holds; if not, launch slips one-for-one. Treat compliance as the number-one thing to unblock in week one.
- **Two things protect the launch date:** (1) start Google advertiser verification immediately (it has slack now but can bite), and (2) decide the landing-page route early — an interim page (decision S1) removes the risk of waiting 3–5 months for the platform build.
- **The gates are non-negotiable:** claims approved, pages approved, tracking tested, and lead-handling ready must all be true before launch. Lead-handling in particular looks non-critical on paper but is a hard gate.
- **In the live campaign, nothing can be rushed:** the Day 30/60/90 reviews happen after real elapsed live days, so a genuine scale decision is only available at ~calendar month 5.

Durations are planning assumptions requiring PropFlo review (Section F). This schedule does not set calendar dates and does not resolve the commercial decisions in `PROJECT-COST-BASELINE.md`.
