# Editable versions — PropFlo project graphics

Everything here is **editable** and generated from the same calculated CPM/PERT data as the SVGs and PDFs, so it stays accurate. All costs are ex VAT.

## Files

| File | Open / edit in | Contents |
|---|---|---|
| `PropFlo-Diagrams.drawio` | **draw.io** — free, web (app.diagrams.net) or desktop | 6 editable pages: Gantt Stage A, Gantt Stage B, PERT Stage A, PERT Stage B, Critical Path, Milestones |
| `PropFlo-Project-Pack.pptx` | **PowerPoint** (also Google Slides / LibreOffice Impress) | 7 slides of native shapes/tables: title, summary, critical path, milestone timeline, Gantt overview, RACI, risk register |
| `PROJECT-SCHEDULE-MSProject.csv` | **Excel**, or import into **Microsoft Project** | Full activity schedule for editing durations, predecessors and dates |

## draw.io (`.drawio`)

1. Go to **app.diagrams.net** → *Open Existing Diagram* → choose the file (or use the free desktop app).
2. Use the tabs at the bottom to switch between the 6 pages.
3. Every box, arrow, colour and label is editable. Critical-path items are red; milestones are dark diamonds/boxes.
4. Export any page via *File → Export as* → PNG / PDF / SVG.

## PowerPoint (`.pptx`)

Open `PropFlo-Project-Pack.pptx` in PowerPoint. Every element is a **native shape, connector or table** — click to move, recolour, retype. Colours: red = critical, blue = non-critical, dark = milestone/gate.

**Fallback (if this file ever fails to open, or you want the richer diagrams as shapes):** PowerPoint can turn any of the SVGs in `../SVG/` into fully-editable shapes:
1. *Insert → Pictures → This Device* → pick an SVG (e.g. `GANTT-STAGE-A.svg`).
2. Right-click the inserted graphic → **Convert to Shape** (may be under *Graphics Format → Convert to Shape*).
3. It becomes native PowerPoint shapes you can edit like any other.

## Excel / Microsoft Project (`PROJECT-SCHEDULE-MSProject.csv`)

- **Excel:** just open the CSV. Columns: `Task_Number, Task_Name, Duration, Milestone, Predecessors, Stage, Resource_Names`.
- **Microsoft Project:** *File → Open* → choose the CSV → the Import Wizard runs → map the columns to Project fields (Name, Duration, Predecessors, Resource Names). `Predecessors` are the row numbers (Task_Number), which is what Project's import expects.

Notes on the data:
- **Stage A durations are working days; Stage B durations are live/elapsed days.** Microsoft Project uses one calendar, so after import you may want to set Stage B tasks to elapsed duration (e.g. `16ed`) or accept working-day approximation. This CSV is a correct starting point, not a locked baseline.
- Milestones have 0-day duration (`Milestone = Yes`).
- The richer, machine-readable versions with the full CPM columns (ES/EF/LS/LF/Float) are `../../PROJECT-ACTIVITY-DATA.csv` and `../../PROJECT-GANTT-DATA.csv` in the project root.

## Also already editable (elsewhere in this project)

- `../SVG/*.svg` — vector; edit in **Inkscape** (free), Figma, Illustrator, or a text editor.
- `../Source/*.mmd` — Mermaid text for the network and critical-path diagrams; paste into **mermaid.live**, edit, and it re-renders automatically.
- `../Print/*.html` — edit text/tables/CSS in any editor and re-print to PDF.

All figures match the calculated schedule (Stage A = 49 working days ≈ 10 weeks; programme ≈ 159 calendar days ≈ 5.2 months). Unresolved commercial items (B1–B7) are flagged, not resolved.
