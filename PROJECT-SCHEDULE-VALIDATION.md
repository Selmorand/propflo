# PropFlo Project Schedule Validation

Prepared by Interon · Commercial in confidence · Working validation document

This document validates and corrects the schedule logic in MASTER-PROJECT-PLAN.md before presentation development. It does not modify the master plan. It does not resolve commercial decisions; each open item is shown with options and a recommendation for George to decide.

All figures are ex VAT and stated as such. Platform-build figures are indicative, drawn from the earlier exploratory low-code build estimate (the source PDFs/DOCX were removed as "ideas, not proposals"); they must be re-confirmed against the actual build quote before they drive a contract.

---

## 1. Current Schedule Problem

The master plan uses a single 13-week timeline that mixes preparation and live-campaign measurement:

- Implementation runs from Week 1.
- Controlled campaign launch is scheduled at approximately Week 7.
- 30-day review at Week 10, 60-day review at Week 12, 90-day review at Week 13.

This is mathematically impossible. A campaign that goes live in Week 7 has only about 6 weeks (≈42 days) of live data by Week 13 — not 90 days. The "30/60/90-day" reviews were measured from project kick-off, not from launch.

Root cause: preparation time and the live-campaign measurement period were compressed into the same 13 weeks. They are two different clocks and must be separated.

---

## 2. Corrected Planning Model

The programme is split into two distinct stages with independent clocks:

- **Stage A — Preparation and Implementation.** All work required before the controlled campaign goes live. Measured in weeks from project kick-off. Ends at the Launch gate.
- **Stage B — 90-Day Controlled Live Campaign.** The true 90-day performance period. Day 0 is the launch day. All 7/14/30/45/60/75/90-day checkpoints are measured from Day 0, not from kick-off.

The 90-day performance period begins at campaign launch, not at project kick-off. This is the central correction.

---

## 3. Stage A — Preparation Timeline

Realistic baseline: **approximately 6–8 weeks** from kick-off to launch, assuming compliance answers arrive by about Week 3, an interim landing page and tracking are used (see Section 8), and Google financial-services verification is started early. The swing factors are compliance approval, platform-build dependency, and ad-platform verification — any of which can extend Stage A.

| Week | Focus | Key output |
|---|---|---|
| W1 | Kick-off, roles, commercial scope decision, access requests, discovery start | Project started; scope decision logged |
| W1–W2 | Discovery and compliance information collection (client-dependent, gating) | Compliance inputs received |
| W2–W3 | Strategy, audience/offer confirmation, competitor and keyword research, measurement baseline | Strategy approved |
| W2–W4 | Compliance and claims approval (client legal — variable) | Approved claims, restricted claims, disclaimers |
| W3–W6 | Landing page preparation (copy + build — interim or platform, see Section 8) | Pages built and approved |
| W4–W6 | Tracking setup and end-to-end test; CRM and lead-process preparation | Tracking tested; lead handling ready |
| W5–W6 | Google campaign build; partner materials; content foundation | Campaigns ready; content and partner packs drafted |
| W2–W6 | Google financial-services verification (run in parallel, start early) | Advertiser verified |
| W6–W7 | Pre-launch testing and approval gates | Launch checklist signed |
| End of Stage A | **Launch gate** | Controlled campaign goes live = Stage B Day 0 |

Do not force Stage A shorter than the dependencies allow. If compliance, platform delivery, or verification slip, Stage A extends and launch moves — Stage B still only starts at actual launch.

---

## 4. Stage B — 90-Day Controlled Live Campaign Timeline

Day 0 is the launch day. Approximately 13 weeks / 3 months of live running.

| Checkpoint | Timing | Purpose | Output |
|---|---|---|---|
| Launch | Day 0 | Google Search goes live; daily monitoring begins | Campaign live; tracking confirmed live |
| Early technical & search-term review | Day 7 | Catch tracking, disapprovals, wasted search terms early | First negatives added; technical fixes |
| Lead-quality review | Day 14 | Assess whether enquiries are relevant and contactable | Lead-quality read; targeting adjustments |
| Performance review | Day 30 | First cost-per-lead and cost-per-qualified-lead read | Month-1 report; keep/cut decisions |
| Optimisation checkpoint | Day 45 | Mid-period tuning of keywords, pages, copy | Optimisation actions logged |
| Performance & channel review | Day 60 | Channel performance; consider Meta retargeting if traffic sufficient | Month-2 report; channel decisions |
| Scale-readiness checkpoint | Day 75 | Confirm whether evidence supports scaling | Scale-readiness assessment |
| Formal scale decision | Day 90 | Scale / maintain / restructure / pause / change offer | 90-day decision and next-stage plan |

The Day-90 decision uses cost per qualified lead and, where available, cost per funded deal — a full 90 days of live data, correctly measured from Day 0.

---

## 5. Dependencies

| Dependency | Needed by | Type |
|---|---|---|
| Compliance answers and approved claims/disclaimers | Stage A W3–W4; hard gate for launch | Client (gating) |
| Commercial scope decision (marketing vs platform build) | Stage A W1 | Client (gating) |
| Brand assets and access (analytics, ad platforms, CRM) | Stage A W1–W4 | Client |
| Landing pages and tracking | Before launch | Platform-build or interim (Section 8) |
| Google financial-services verification | Before launch | Ad platform |
| Lead owner, response targets, CRM readiness | Before launch (hard gate) | Client |
| Sufficient site traffic | Before Meta retargeting (~Day 30–60) | Internal sequencing |
| Sales-outcome feedback | Weekly through Stage B | Client |

---

## 6. Critical Path

The launch date is driven by the longest dependency chain, not by the marketing build:

**Compliance approval → approved claims/disclaimers → landing page copy → landing page build (interim or platform) → tracking install and test → pre-launch testing → Launch.**

In parallel and not on the critical path unless delayed: Google financial-services verification (can become critical if it stalls), CRM/lead-handling readiness (hard gate — must be ready by launch), content and partner materials.

Practical implication: compliance is the single biggest determinant of the launch date. If compliance is slow, nothing downstream can proceed to launch, regardless of how fast the build or campaigns are prepared.

---

## 7. Approval Gates

No launch until every gate below is passed:

1. **Compliance gate** — approved claims, restricted claims, and disclaimers signed off by PropFlo.
2. **Landing page gate** — page copy, forms, disclaimers, and consent wording approved.
3. **Tracking gate** — end-to-end test passed; conversions and lead-source capture confirmed.
4. **Lead-handling gate** — lead owner, response targets, stages, and follow-up confirmed and ready.
5. **Campaign gate** — ad copy approved; Google financial-services verification complete.
6. **Launch checklist gate** — full pre-launch checklist signed.

Compliance, tracking, and lead-handling are treated as hard gates: the campaign does not launch until all three are true.

---

## 8. Platform-Build Dependency Scenarios

The marketing launch needs a seller landing page, forms, and tracking. The earlier low-code build estimate delivers these inside its Phase 2 ("Umbraco CMS marketing site and lead capture"), but the full low-code build is indicatively 3–5 months to go-live. This creates a decision.

### Decision S1 — How landing pages and tracking are delivered

- **Issue:** If the marketing launch waits for the platform build's Phase 2, launch slips to roughly 3–4 months. If marketing builds its own pages, that work may overlap and double-charge the build's Phase 2.
- **Options:**
  - **Option 1 — Interim landing page + tracking.** A lightweight seller landing page, form, and tracking stood up quickly for the launch; migrate to the platform site when Phase 2 is live.
  - **Option 2 — Wait for platform build Phase 2.** Launch only once the build delivers the marketing site and tracking.
  - **Option 3 — Hybrid.** Start the build now; run an interim page to protect the launch date; switch to the platform site at Phase 2 go-live.
- **Financial impact:** Option 1 may add a small interim-page cost (or absorb it into setup) but avoids paying twice for the full site; Option 2 avoids a duplicate page cost (potential ~R35,000 saved) but delays revenue and learning; Option 3 is Option 1's cost plus clean migration.
- **Timing impact:** Option 1/3 protect a ~6–8 week Stage A; Option 2 pushes launch to ~12–20 weeks depending on build start and pace.
- **Recommended approach:** Option 3 (hybrid) — protect the launch date with an interim page while the platform build proceeds, then migrate. Resolve Decision S1 together with the landing-page commercial decision in BUDGET-VALIDATION.md.
- **Decision required from George:** Confirm interim vs wait vs hybrid, and who builds/owns the interim page.

### Decision S2 — Google financial-services verification timing

- **Issue:** Google may require financial-services advertiser verification, which can take days to weeks and can delay go-live if started late.
- **Options:** Start verification in Stage A Week 2 (parallel) / start it only near launch.
- **Financial impact:** None directly; delay risk only.
- **Timing impact:** Starting late can push launch by 1–3+ weeks.
- **Recommended approach:** Begin verification in Week 2, in parallel, treated as a launch gate.
- **Decision required from George:** Confirm PropFlo can provide the business/entity documentation verification requires.

---

## 9. Recommended Total Programme Duration

- **Stage A (preparation):** ~6–8 weeks (baseline; longer if compliance, verification, or platform delivery slip).
- **Stage B (live campaign):** 90 days ≈ 13 weeks.
- **Total, kick-off to Day-90 decision:** **approximately 19–21 weeks (~4.5–5 months)**, not 13 weeks.

If the launch waits for the full platform build (Decision S1, Option 2), total duration extends to roughly 6–8 months.

---

## 10. Decisions Required (Schedule)

| # | Decision | Recommended | Owner |
|---|---|---|---|
| S1 | Interim landing page vs wait for platform build vs hybrid | Hybrid (interim page protects launch; migrate at Phase 2) | George |
| S2 | Google financial-services verification timing and documents | Start Week 2, treat as launch gate | George / PropFlo |
| S3 | Confirm Stage A baseline of 6–8 weeks is acceptable, or set a target launch date and work back | Accept 6–8 weeks contingent on prompt compliance | George |
| S4 | Confirm compliance, tracking, and lead-handling are hard launch gates | Yes | George / PropFlo |
| S5 | Confirm Meta retargeting starts only after sufficient traffic (~Day 30–60) | Yes | George |
| S6 | Confirm partner marketing may begin during Stage A (before paid launch) | Yes — partner outreach is not gated by paid launch | George |

Notes on the last two, per the task's validation questions:
- **Meta retargeting** should start only once there is enough site traffic to retarget — realistically around Day 30–60 of Stage B, not at launch.
- **Partner marketing** (estate agent / conveyancer outreach and materials) can begin during Stage A and does not depend on the paid campaign being live; it should still wait for approved referral wording (compliance gate).

---

## 11. Gantt-Style Schedule

Stage A timing is in weeks (W) from kick-off; Stage B timing is in days (D) from launch (Day 0).

| Workstream | Activity | Timing | Duration | Dependency | Owner | Gate / Milestone |
|---|---|---|---|---|---|---|
| Initiation | Kick-off, roles, scope decision, access requests | W1 | 1 wk | Sign-off | Interon Project Lead | Kick-off complete |
| Discovery/Compliance | Compliance information collection | W1–W2 | 2 wk | Kick-off | Interon Strategy + PropFlo Compliance | — |
| Discovery/Compliance | Approved claims and disclaimers | W2–W4 | 2–3 wk | Compliance input | PropFlo Compliance | Compliance gate |
| Strategy | Audience/offer confirmation, keyword research, baseline | W2–W3 | 2 wk | Discovery | Interon Strategy | Strategy approved |
| Website | Landing page copy and build (interim/platform) | W3–W6 | 3–4 wk | Claims, S1 decision | WS4 owner (decision) | Landing page gate |
| Tracking | GA4/GTM, conversions, UTM, end-to-end test | W4–W6 | 3 wk | Landing pages | Interon Paid Media | Tracking gate |
| CRM/Lead | Lead owner, stages, follow-up, readiness | W4–W6 | 3 wk | Discovery | PropFlo Sales + Interon | Lead-handling gate |
| Paid Search | Campaign build, ad copy, verification | W2–W6 | (verif. parallel) | Claims, tracking, pages | Interon Paid Media | Campaign gate |
| Content/Partner | Foundation content, partner materials | W4–W7 | 4 wk | Claims | Interon Content/Strategy | — |
| Testing | Pre-launch testing and checklist | W6–W7 | 1 wk | All gates | Interon + PropFlo | Launch checklist gate |
| Launch | Controlled campaign go-live | End Stage A = D0 | — | All gates passed | Interon Paid Media | **Launch (Stage B Day 0)** |
| Live campaign | Early technical & search-term review | D7 | — | Launch | Interon Paid Media | Day 7 checkpoint |
| Live campaign | Lead-quality review | D14 | — | Launch | Interon + PropFlo Sales | Day 14 checkpoint |
| Live campaign | Performance review (Month 1) | D30 | — | Launch | Interon + PropFlo | Day 30 review |
| Live campaign | Optimisation checkpoint | D45 | — | D30 data | Interon Paid Media | Day 45 checkpoint |
| Live campaign | Meta retargeting start (if traffic sufficient) | ~D30–D60 | — | Traffic volume | Interon Paid Media | — |
| Live campaign | Performance & channel review (Month 2) | D60 | — | Launch | Interon + PropFlo | Day 60 review |
| Live campaign | Scale-readiness checkpoint | D75 | — | D60 data | Interon + PropFlo | Day 75 checkpoint |
| Live campaign | Formal scale/maintain/restructure decision | D90 | — | Full-period data | Interon + PropFlo Sponsor | **Day 90 decision** |

---

*This validation does not modify MASTER-PROJECT-PLAN.md and does not resolve the commercial decisions. Items S1–S6 must be settled before the master plan is revised. See BUDGET-VALIDATION.md for the matching budget rework.*
