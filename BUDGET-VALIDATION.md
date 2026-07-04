# PropFlo Budget Validation

Prepared by Interon · Commercial in confidence · Working validation document

This document validates the budget against the corrected two-stage schedule (see PROJECT-SCHEDULE-VALIDATION.md). It does not modify MASTER-PROJECT-PLAN.md or the proposal documents, and it does not silently resolve commercial decisions.

**All figures are ex VAT and stated as such.** Where a source used VAT-inclusive figures (the exploratory platform-build estimate), the ex-VAT figure is used here and the inclusive figure is shown separately — VAT bases are never mixed. The platform-build figures are indicative (the source PDFs/DOCX were removed as "ideas, not proposals") and must be re-confirmed against the actual build quote. PROPOSAL-CONSISTENCY-REVIEW.md is not available (previously deleted); its overlap findings are reproduced here from record.

---

## 1. Current Budget Structure

Working recommended marketing figures (ex VAT):

| Item | Figure (ex VAT) | Basis |
|---|---|---|
| Strategy and setup (once-off) | R55,000 | Discounted from a R61,000 line-item total |
| Landing page set (once-off) | R35,000 | Recommended option (range R12,500–R85,000) |
| Monthly management | R32,000 / month | Recommended "Growth" tier (options R18,000 / R32,000 / R55,000) |
| Media spend | ~R25,000–R40,000 / month | Paid by PropFlo to platforms |

The master plan previously implied a R281,000 90-day total. That figure is not wrong in total, but it was spread over the impossible 13-week model. Re-based onto the corrected Stage A + Stage B model below, the same components spread across ~4.5–5 months and the management/ad-spend start point changes.

Do not assume these figures are correct because they exist. Each is tested below.

---

## 2. Scope-Overlap Analysis

The exploratory low-code build estimate delivers a marketing website and lead capture inside its **Phase 2 (R84,000 ex VAT)**:

| Phase 2 line item | Ex VAT |
|---|---:|
| Umbraco install and configuration | R14,000 |
| Marketing site design, templating, responsive build | R24,000 |
| Savings calculator | R12,000 |
| Lead-capture forms and validation | R8,000 |
| Meta campaign landing pages and tracking pixels | R8,000 |
| CMS → low-code lead integration | R12,000 |
| Automated sales-team notifications | R6,000 |
| **Phase 2 total** | **R84,000** |

Overlap with the marketing budget:

| Deliverable | In build Phase 2 | In marketing budget | Overlap |
|---|---|---|---|
| Marketing site + landing pages + forms + Meta pages | ~R40,000 (site R24k + forms R8k + Meta pages R8k) | Landing page set R35,000 | High — near-duplicate |
| Tracking pixels | R8,000 (within Meta pages line) | Setup "Tracking and reporting structure" R7,500 (part) | Partial — pixel install overlaps; GA4/GTM/dashboards are additive |
| CRM / lead integration | R18,000 (integration R12k + notifications R6k) | Setup has no explicit line; CRM workflow is a R12,500–R35,000 add-on | High if the add-on is later quoted |
| Funnel / landing page planning | Build discovery/Phase 2 planning | Setup "Funnel and landing page planning" R7,500 | Partial |

**Net double-charge exposure if both are charged as written: roughly R35,000 (landing pages) plus up to ~R15,000 of overlapping setup lines ≈ up to ~R50,000 ex VAT.**

---

## 3. Setup-Fee Analysis (the R55,000)

The R55,000 is a discount of this line-item build-up (ex VAT):

| Setup line | Ex VAT | Overlaps platform build? |
|---|---:|---|
| Discovery, strategy and planning | R8,500 | No |
| Compliance questions and claims preparation | R6,500 | No |
| Competitor and keyword research | R6,500 | No |
| Funnel and landing page planning | R7,500 | Partial |
| Tracking and reporting structure | R7,500 | Partial (pixel portion) |
| Google Ads campaign setup | R7,500 | No |
| Meta retargeting setup | R4,500 | Partial (pixel portion) |
| LinkedIn partner campaign setup | R4,500 | No |
| Initial copy and creative direction | R6,500 | No |
| Partner outreach framework | R2,000 | No |
| Line-item total | R61,000 | — |
| **Discounted setup fee** | **R55,000** | — |

- Genuinely marketing-only setup work (strategy, compliance prep, research, campaign setup, copy, partner framework): roughly **R40,000–R47,500** of the line items.
- Work that partially overlaps the platform build (landing-page planning, tracking structure, Meta pixel): roughly **R12,000–R15,000**.

If the platform build owns the site/tracking/CRM, the marketing setup can reasonably be **re-scoped down toward ~R40,000 ex VAT**; if marketing owns them, R55,000 stands. **Commercial decision required.**

---

## 4. Landing-Page Cost Analysis (the R35,000)

- The R35,000 "landing page set" (seller page, partner page, FAQ, thank-you page) overlaps the platform build's Phase 2 site and forms almost entirely.
- If the platform build delivers the marketing site, the R35,000 marketing landing-page charge should be **removed** (or reduced to an interim-page cost only — see Decision B1).
- If marketing builds the pages (no platform build, or platform delayed), the R35,000 stands but should not then also appear in the build cost.

The two must not both be charged for the same pages.

---

## 5. Monthly-Management Start-Date Options

The R32,000/month currently implies management runs from early in the programme. Under the corrected model there is a preparation stage (Stage A) with no live campaign to manage.

### Decision B2 — When does the R32,000 monthly management fee start?

- **Issue:** Charging full live-campaign management during Stage A (preparation) bills for managing a campaign that is not yet live; not charging anything for Stage A coordination may under-recover a long prep period.
- **Options:**
  - **Option A — Management starts at launch (Stage B Day 0).** Stage A is covered by the setup fee. Cleanest and easiest to justify.
  - **Option B — Reduced preparation-coordination fee during Stage A, full R32,000 from launch.** Recovers a long prep period without over-charging.
  - **Option C — Full R32,000 from kick-off.** Front-loads cost before any live campaign exists.
- **Financial impact:** Option A = R0 management in Stage A; Option B = a smaller fee (e.g. an agreed prep-coordination amount) across ~6–8 weeks; Option C = ~R48,000–R64,000 extra across a 6–8 week prep at full rate.
- **Timing impact:** None on the schedule; affects when billing begins.
- **Recommended approach:** **Option A** — management begins at launch; the setup fee covers Stage A. Consider a small prep-coordination fee only if Stage A runs beyond ~8 weeks.
- **Decision required from George:** Confirm A, B, or C.

---

## 6. Recommended Ad-Spend Phasing (Stage B)

Ad spend should ramp across the true 90-day live campaign, not sit flat (ex VAT, paid to platforms):

| Period | Ad spend (ex VAT) | Rationale |
|---|---:|---|
| Days 0–30 | R25,000 | Controlled test; prove tracking and lead quality first |
| Days 31–60 | R30,000–R35,000 | Scale what works; cut waste |
| Days 61–90 | R40,000 | Scale proven keywords only |
| **90-day total** | **~R95,000–R100,000** | Ramps with evidence |

Ad spend does not begin until launch (Stage B Day 0). No ad spend in Stage A.

---

## 7. Stage A Budget (Preparation, ex VAT)

| Item | Ex VAT | Note |
|---|---:|---|
| Strategy and setup | R40,000–R55,000 | R55,000 as-is, or ~R40,000 if setup overlap lines removed (Decision B4) |
| Landing pages | R0–R35,000 | R0 if platform build/interim delivers them; up to R35,000 if marketing builds (Decisions B1) |
| Preparation management | R0 (recommended) | Or a prep-coordination fee (Decision B2) |
| Ad spend | R0 | No live campaign in Stage A |
| **Stage A total (Interon fees)** | **R40,000–R90,000** | Driven by Decisions B1 and B4 |

---

## 8. Stage B Budget (90-Day Live Campaign, ex VAT)

| Item | Ex VAT | Note |
|---|---:|---|
| Monthly management | R96,000 | 3 × R32,000, starting at launch |
| Ad spend (to platforms) | R95,000–R100,000 | Phased per Section 6 |
| **Stage B total** | **R191,000–R196,000** | Of which R96,000 is Interon fees |

---

## 9. Total Programme Investment (Kick-off → Day 90, ex VAT)

Marketing programme only (platform build shown separately in Section 12):

| Scenario | Setup | Landing pages | Management | Ad spend | Total ex VAT |
|---|---:|---:|---:|---:|---:|
| Low (build delivers pages; setup trimmed) | R40,000 | R0 | R96,000 | R95,000 | **R231,000** |
| Mid (setup as-is; pages via build) | R55,000 | R0 | R96,000 | R95,000 | **R246,000** |
| High (setup as-is; marketing builds pages) | R55,000 | R35,000 | R96,000 | R95,000 | **R281,000** |

The same headline ~R281,000 now correctly spans ~4.5–5 months (kick-off to Day 90), and the low/mid scenarios show the saving available if the website/tracking overlap is resolved in favour of the platform build.

---

## 10. Ongoing Monthly Cost After Day 90 (ex VAT)

| Item | Ex VAT | Note |
|---|---|---|
| Monthly management | R32,000 / month | Continues after the 90-day period |
| Ad spend | R25,000–R40,000+ / month | Scaled on proven performance |
| Third-party software | Varies | Hosting, domains, CRM, email, WhatsApp, call tracking |
| Platform subscriptions (if platform build adopted) | R40,200–R164,400 / year | Retool/Airtable/Make/AI/Umbraco hosting |
| Per-agent (Retool external-user) fee (if adopted) | Scales with agents | Indicatively rising toward ~R64,750/month by ~600 active agents |

---

## 11. Optional Costs (ex VAT)

From the budget add-on menu, only if commissioned:

| Add-on | Ex VAT |
|---|---|
| Additional landing page | R7,500–R15,000 |
| Blog article | R1,500–R3,500 each |
| SEO content cluster | R8,500–R18,500 |
| Extra ad creative set | R3,500–R8,500 |
| Email nurture sequence | R4,500–R9,500 |
| WhatsApp script pack | R2,500–R6,500 |
| Partner brochure | R4,500–R9,500 |
| Monthly SEO content management | R8,500–R18,500 |
| Advanced reporting dashboard | R8,500–R20,000 |
| CRM workflow setup | R12,500–R35,000 (overlaps build CRM — check) |
| Marketing automation setup | R18,500–R55,000 |

---

## 12. Third-Party Costs (paid by PropFlo, ex VAT)

- Google Ads, Meta Ads, LinkedIn Ads spend.
- Website hosting, domain/DNS.
- CRM, email marketing, WhatsApp business tools, call tracking.
- Stock images/video, design templates, automation platform, reporting tools.
- Legal / compliance review fees.
- If the low-code platform is adopted: Retool, Airtable, Make/Zapier, AI usage, Umbraco hosting subscriptions, plus the per-agent external-user fee.

Platform build cost for reference (indicative, separate from marketing): low-code build **R436,000 ex VAT (R501,400 incl VAT)**. The ex-VAT figure is used in all comparisons above; the inclusive figure is shown here only for reference and is not mixed into the ex-VAT totals.

---

## 13. Commercial Decisions Required (Budget)

Each in the required format.

### Decision B1 — Landing pages / website / tracking / CRM: build or marketing?
- **Issue:** The R35,000 landing-page set and ~R15,000 of setup overlap the platform build's Phase 2, risking ~R35,000–R50,000 double charge.
- **Options:** (1) Platform build owns site/pages/tracking/CRM; marketing removes those lines. (2) Marketing owns them; build excludes Phase 2 marketing site. (3) Hybrid — interim marketing page now, platform site later.
- **Financial impact:** Option 1 removes ~R35,000–R50,000 from marketing; Option 2 keeps it in marketing and must be removed from the build; Option 3 adds a small interim-page cost only.
- **Timing impact:** Option 1 may wait for the build (see Schedule S1); Option 3 protects the launch date.
- **Recommended approach:** Option 3 (hybrid) — interim page for launch, migrate to the platform site; assign full site/tracking/CRM to the build.
- **Decision required from George:** Who owns/charges the site, pages, tracking, and CRM.

### Decision B2 — Monthly-management start date
- See Section 5. **Recommended: management starts at launch (Day 0).**

### Decision B3 — Prep vs live management pricing
- **Issue:** Preparation and live-campaign management are different work at different intensity.
- **Options:** (1) Setup fee covers prep; full management from launch. (2) Separate prep-coordination fee plus live management. (3) One flat fee throughout.
- **Financial impact:** Option 2 adds a prep fee; Options 1/3 do not.
- **Timing impact:** None.
- **Recommended approach:** Option 1, with a prep-coordination fee only if Stage A exceeds ~8 weeks.
- **Decision required from George:** Confirm the pricing split.

### Decision B4 — Setup-fee re-scope
- **Issue:** ~R12,000–R15,000 of the R55,000 setup overlaps the platform build.
- **Options:** (1) Trim overlapping lines → net setup ~R40,000. (2) Keep R55,000 because marketing owns that work.
- **Financial impact:** ~R12,000–R15,000.
- **Timing impact:** None.
- **Recommended approach:** Trim if the build owns site/tracking (pairs with B1 Option 1/3).
- **Decision required from George:** Confirm net setup fee.

### Decision B5 — Ad-spend phasing and ceiling
- **Issue:** Ad spend should ramp with evidence, not sit flat.
- **Options:** (1) R25k → R30–35k → R40k phased. (2) Flat R32k/month. (3) Custom.
- **Financial impact:** ~R95,000–R100,000 over 90 days either way; phasing changes when spend is committed.
- **Timing impact:** None; risk is lower with phasing.
- **Recommended approach:** Phased (Option 1); increase only on proven cost per qualified lead.
- **Decision required from George:** Confirm phasing and monthly ceiling.

### Decision B6 — VAT basis for the client-facing number
- **Issue:** Marketing figures are ex VAT; the platform build was quoted incl VAT.
- **Options:** Present everything ex VAT (recommended) or everything incl VAT — but one basis only.
- **Financial impact:** Presentation only; 15% VAT applies either way.
- **Timing impact:** None.
- **Recommended approach:** Present the combined client number ex VAT, with VAT shown as a separate line.
- **Decision required from George:** Confirm the VAT basis for the proposal.

### Decision B7 — Platform build inclusion and presentation
- **Issue:** The marketing programme and the platform build are separate but interdependent; the client needs one coherent total cost of ownership.
- **Options:** (1) Present marketing and build as separate but linked workstreams with a combined summary. (2) Present marketing only and reference the build. (3) Bundle.
- **Financial impact:** Build R436,000 ex VAT + subscriptions R40,200–R164,400/yr + per-agent fees, alongside marketing R231,000–R281,000 ex VAT over the first ~5 months.
- **Timing impact:** Build 3–5 months to go-live; must synchronise with launch (Schedule S1).
- **Recommended approach:** Option 1 — separate but linked, with a combined total-cost-of-ownership summary on one VAT basis.
- **Decision required from George:** Confirm whether the build proceeds and how it is presented with the marketing programme.

---

*This validation does not modify MASTER-PROJECT-PLAN.md or the proposal documents. Decisions B1–B7 (and schedule decisions S1–S6) must be settled before the master plan and budget are revised.*
