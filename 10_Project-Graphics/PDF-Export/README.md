# PDF Export — PropFlo Project Graphics

This folder explains how to turn the HTML and SVG files in `10_Project-Graphics` into PDFs, using only free tools.

All source graphics are self-contained (no internet, no web fonts, no external images), so they print and export reliably offline.

## What to export

The boardroom deliverable is the project management pack, in two paper sizes:

- `../Print/PROJECT-MANAGEMENT-PACK-A4.html` → **PropFlo-Project-Management-Pack-A4.pdf** (A4 landscape)
- `../Print/PROJECT-MANAGEMENT-PACK-A3.html` → **PropFlo-Project-Management-Pack-A3.pdf** (A3 landscape)

Standalone pages, if you want them separately:

- `../Print/RACI-MATRIX.html` (A3/A4 landscape)
- `../Print/RISK-REGISTER.html` (A3/A4 landscape)

Individual diagrams are in `../SVG/*.svg` and can be opened directly in any browser and printed.

---

## Method 1: Browser Print to PDF (simplest, no setup)

1. Open the HTML file in **Google Chrome** or **Microsoft Edge** (double-click it, or drag it into the browser).
2. Press **Ctrl + P**.
3. Under **Destination**, choose **Save as PDF** (or **Microsoft Print to PDF**).
4. Set **Paper size** to **A4** (for the A4 pack / RACI / risk) or **A3** (for the A3 pack).
5. Set **Layout** to **Landscape**.
6. Set **Margins** to **Default** (or **None** for edge-to-edge diagrams).
7. Open **More settings** and tick **Background graphics** (needed so the coloured bars and headers print).
8. Click **Save** and choose a filename, e.g. `PropFlo-Project-Management-Pack-A4.pdf`.

Tip: the `@page` rules in the HTML already request the correct size and landscape orientation, so the print preview should look right immediately.

## Method 2: VS Code / local browser workflow

- In VS Code, right-click the HTML file → **Reveal in File Explorer**, then double-click it to open in your default browser, and follow Method 1.
- Or install the free VS Code extension **"Live Preview"** (Microsoft) to preview the HTML inside the editor, then open it in a browser to print.
- No paid software is required. Do not use "Markdown PDF" style extensions for these files — they will not apply the print CSS correctly.

## Method 3: Automated export (this machine has Chrome/Edge)

A ready-to-run PowerShell script is included: **`export-pdf.ps1`**.

It finds an existing Chrome or Edge install and exports both packs to `Output/` using headless printing. It installs nothing.

Run it from PowerShell:

```powershell
cd "10_Project-Graphics\PDF-Export"
powershell -ExecutionPolicy Bypass -File .\export-pdf.ps1
```

Output:

- `Output/PropFlo-Project-Management-Pack-A4.pdf`
- `Output/PropFlo-Project-Management-Pack-A3.pdf`

If neither browser is found, the script stops and tells you to use Method 1.

Note: headless printing uses the page's own `@page` size and landscape settings and prints background graphics by default, so no extra flags are needed.

---

## Which file for which size

| File | Paper | Orientation |
|---|---|---|
| PROJECT-MANAGEMENT-PACK-A4.html | A4 | Landscape |
| PROJECT-MANAGEMENT-PACK-A3.html | A3 | Landscape |
| RACI-MATRIX.html | A3 or A4 | Landscape |
| RISK-REGISTER.html | A3 or A4 | Landscape |
| Narrative pages within the pack | A4/A3 | Landscape (schedule-heavy) |

A3 is recommended for the wide Gantt and PERT pages so labels stay large; A4 is fine for handouts.

## Do not

- Do not install new software automatically.
- Do not add online fonts, images, or scripts — the pack must stay self-contained.
