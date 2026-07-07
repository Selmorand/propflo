# PropFlo Project Cost Baseline

Prepared by Interon · Commercial in confidence · Cost baseline aligned to the CPM/PERT schedule

This cost baseline maps costs onto the WBS and the two-stage schedule in `CPM-PERT-MASTER-SCHEDULE.md`. **All figures are ex VAT and stated as such.** Where the exploratory platform-build estimate used VAT-inclusive figures, the ex-VAT figure is used here and the inclusive figure is shown separately — VAT bases are never mixed. Overlapping scope between the marketing programme and the platform build is **not silently resolved**; alternative scenarios are shown.

The R55,000 setup and R35,000 landing-page figures are packaged commercial fees; the per-activity `EstimatedCost` values in `PROJECT-ACTIVITY-DATA.csv` are indicative allocations that sum approximately to these packages.

---

## 1. Cost Categories

| Category | Ex VAT | Nature |
|---|---|---|
| Project setup (strategy, compliance prep, research, campaign setup, copy, partner framework) | R55,000 packaged | Interon fee, Stage A once-off |
| Landing page / web implementation | R0–R35,000 | Interon fee OR platform build — **decision** |
| Campaign management | R32,000 / month | Interon fee, Stage B (from launch) |
| Media spend | R25,000–R40,000 / month phased | Paid by PropFlo to platforms |
| Third-party costs | Variable | Paid by PropFlo |
| Optional costs | Menu (Section 11) | Only if commissioned |
| Contingency | ~10% of Interon fees (planning) | Optional — decision |
| Costs awaiting commercial decision | ~R35,000–R50,000 + others | See Section 10 |

---

## 2. Cost by WBS Work Package (Stage A, ex VAT)

Indicative allocation of the packaged setup fee across work packages, plus the separately-priced landing-page build.

| WBS | Work package | Ex VAT | Note |
|---|---|---:|---|
| 1 | Initiation (kick-off, scope, access) | R2,000 | Interon coordination |
| 2 | Strategy & research (competitor, keyword) | R6,500 | |
| 3 | Compliance & claims preparation | R6,500 | Interon prep; PropFlo approves |
| 4 | Website — planning & copy | R13,500 | Landing-page planning + copy/creative |
| 4 | Website — build (interim/platform) | R35,000 | **Decision B1** — R0 if platform build delivers it |
| 5 | Tracking & reporting structure | R7,000 | GA4/GTM/conversions/dashboard |
| 6 | CRM & lead process | R0 | In management / client-side |
| 7 | Paid search setup (Google + Meta) | R8,000 | Campaign structure and build |
| 8 | SEO foundation & partner materials | R5,500 | Partner + LinkedIn framework |
| 9 | Testing & launch | R0 | In-scope of setup |
| — | Packaged setup total (WBS 1–9, ex build) | **R55,000** | Discounted package |
| — | Landing-page build | **R0–R35,000** | Decision B1 |

---

## 3. Stage A Cost (Preparation, ex VAT)

| Item | Ex VAT |
|---|---:|
| Project setup (packaged) | R40,000–R55,000 |
| Landing-page build | R0–R35,000 |
| Preparation management | R0 (recommended) |
| Media spend | R0 (no live campaign) |
| **Stage A total (Interon fees)** | **R40,000–R90,000** |

Range drivers: setup may trim to ~R40,000 if the platform build owns site/tracking (Decision B4); landing pages are R0 (platform/interim) up to R35,000 (marketing-built) (Decision B1). Management is R0 in Stage A on the recommended model (Decision B2).

---

## 4. Stage B Cost — Month 1 (Days 0–30, ex VAT)

| Item | Ex VAT |
|---|---:|
| Campaign management | R32,000 |
| Media spend (test) | R25,000 |
| **Month 1 total** | **R57,000** |

## 5. Stage B Cost — Month 2 (Days 31–60, ex VAT)

| Item | Ex VAT |
|---|---:|
| Campaign management | R32,000 |
| Media spend (scale what works) | R30,000 (default) — up to R35,000 if scaling faster |
| **Month 2 total (default)** | **R62,000** |

## 6. Stage B Cost — Month 3 (Days 61–90, ex VAT)

| Item | Ex VAT |
|---|---:|
| Campaign management | R32,000 |
| Media spend (scale proven) | R40,000 |
| **Month 3 total** | **R72,000** |

**Stage B total: R191,000 ex VAT** (management R96,000 + phased media R95,000, matching `PropFlo-Budget.xlsx` default). Media 90-day range R95,000–R100,000 depending on Month-2 pacing.

---

## 7. Total Programme (Authorisation → Day 90, ex VAT)

| Scenario | Setup | Landing pages | Stage B (mgmt + media) | Total ex VAT |
|---|---:|---:|---:|---:|
| Low (build delivers pages; setup trimmed) | R40,000 | R0 | R191,000 | **R231,000** |
| Mid (setup as-is; pages via build) | R55,000 | R0 | R191,000 | **R246,000** |
| High (setup as-is; marketing builds pages) | R55,000 | R35,000 | R191,000 | **R281,000** |

Of each total, Interon fees are: Low R136,000 · Mid R151,000 · High R186,000; the remainder (R95,000) is media paid to platforms. Optional planning contingency (Section 9) is additional. The **High** scenario matches the default in `PropFlo-Budget.xlsx` and the figure shown in `02_Proposal/Proposal-Draft.md §13`.

---

## 8. Ongoing Monthly Cost After Day 90 (ex VAT)

| Item | Ex VAT | Note |
|---|---|---|
| Campaign management | R32,000 / month | Continues |
| Media spend | R25,000–R40,000+ / month | Scaled on proven performance |
| Third-party software | Variable | Hosting, domains, CRM, email, WhatsApp, call tracking |
| Platform subscriptions (if platform adopted) | R40,200–R164,400 / year | Retool/Airtable/Make/AI/Umbraco hosting |
| Per-agent Retool fee (if adopted) | Scales with agents | ~R64,750/month by ~600 active agents (indicative) |

---

## 9. Contingency

- Recommended planning contingency: **~10% of controllable Interon fees** (setup + Stage B management). On the mid scenario (R55,000 + R96,000 = R151,000) that is **~R15,100 ex VAT**.
- Media spend and third-party costs are **not** contingency-loaded here — they are client-controlled and pacing-managed.
- Contingency is drawn only against approved scope change (see MASTER-PROJECT-PLAN.md change control). **Decision: whether to include contingency in the client figure.**

---

## 10. Costs Awaiting Commercial Decision

| Ref | Item | Ex VAT at stake | Recommended |
|---|---|---:|---|
| B1 | Landing pages: marketing vs platform build | R35,000 | Assign to platform build (hybrid interim) |
| B4 | Setup overlap (planning/tracking/pixel already in build Phase 2) | ~R12,000–R15,000 | Trim setup to ~R40,000 if build owns site/tracking |
| B2 | When R32,000 management starts (kick-off / prep / launch) | up to ~R48,000–R64,000 | Start at launch (Day 0) |
| — | Contingency inclusion | ~R15,100 | Include as a visible line |
| B6 | VAT basis for the client number | 15% presentation | Present ex VAT, VAT as a separate line |
| B7 | Platform build inclusion | R436,000 ex VAT + subs | Present as separate but linked workstream |

Total double-charge exposure if scope overlap is not resolved: **~R35,000–R50,000 ex VAT** (landing pages + overlapping setup).

---

## 11. Optional Costs (ex VAT, only if commissioned)

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

**Platform build (reference only, indicative, separate from marketing):** low-code build **R436,000 ex VAT (R501,400 incl VAT)**. The ex-VAT figure is used in all comparisons above; the inclusive figure is shown here only for reference and is not mixed into the ex-VAT totals.

---

## 13. Commercial Decisions Required

Cost decisions mirror `BUDGET-VALIDATION.md` (B1–B7): landing-page ownership (B1), setup re-scope (B4), management start date (B2), prep vs live pricing (B3), ad-spend phasing (B5), VAT basis (B6), and platform-build inclusion/presentation (B7). None are resolved here.

*This baseline does not modify MASTER-PROJECT-PLAN.md or the proposal documents and does not resolve the commercial decisions.*
