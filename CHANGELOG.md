# Changelog

## 3.1.0 — 2026-07-14

- **WCAG AA contrast pass** — comments, punctuation, line numbers, and muted UI chrome lifted across all 6 themes (no more dark-on-dark comments)
- **Palette sync from syna-theme-kit** — Acid Rain → matrix toxic green; Plasma Drift → hot pink synthwave
- **Martian retuned to MG ember-nebula** — dark grey / purple-near-black chrome (`#0c0a12` family), primary `#FF6B00` + secondary `#8B5CF6`; removed warm-brown UI surfaces
- **Marketplace storefront cleanup** — removed internal Cross-Project Protocol / `features` registry table from README; extension listing focuses on the 6 VS Code themes
- **Compact palette artwork** — new ~1:1 swatch grid (`syn_palettes.png`) instead of the oversized vertical dump
- **Theme collage + animated showcase** — `syn_themes-collage.png` + `syn_showcase.gif` / `.webm` for README and gallery
- **License clarified** — source-available: use & customize freely; republishing / selling the pack needs a commercial chat
- Version bump `3.0.0` → `3.1.0`

## 3.0.0 — 2026-06-22

- Marketplace redesign assets (hero, theme cards, skin families, palettes)
- WCAG contrast work on muted-UI tiers
- Published as Syn Themes v3 on VS Code Marketplace

## 2.2.9 — 2026-04-21

- **Repo cleanup** — removed superseded `palettes/synagraphic-palettes.json` and `palettes/core/` (consolidated into `palettes/all-palettes.json` since v2.0)
- **Added `PALETTE-SYNC.md`** — documents the authoring → distribution sync workflow to `optional-features/registry/syn-themes.json`
- **Updated `.vscodeignore`** — `palettes/`, `syna/`, `PALETTE-SYNC.md`, `package-lock.json` now excluded from packaged `.vsix`
- No color or theme changes in this release

## 2.2.8 — 2026-04-21

- Martian Games skin aligned to canonical MG brand: `#FF6B00` orange, `#8B5CF6` purple, `#42f4c8` teal across all host app theme JSONs (Synabrain, Synagen, Syqo)

## 2.2.0 — 2026-03-22

- **WCAG contrast refinement** — 23 color changes across 13 palettes, 0 contrast failures
- Added extension icon (256x256)

## 2.1.0 — 2026-03-20

- All skin families now use semi-transparent glass surfaces with blur instead of opaque panels
- Replaced **Studio Pro** with **Midnight Chrome** — deep blue-charcoal with cool steel glass edges
- Replaced **Amber Forge** with **Velvet Noir** — deep plum velvet, wine and amethyst
- Improved **SG Martian** colors — brighter teal, richer purple, hotter orange
- Slowed Holographic Glass animations for subtlety

## 2.0.0 — 2026-03-20

- Unified palette collection: 21 palettes (15 core + 6 Synagraphic) in one set
- Added **Holographic Glass** skin family — prismatic rainbow shimmer, animated borders
- Updated **Martian Games** skin to match brand CSS
- Updated **Aurora Borealis** — iridescent turquoise/purple/pink rainbow
- Updated **Synthwave** — hot pink, electric cyan, deep purple tricolor
- Updated **Acid Rain** — toxic green with monochrome contrast

## 1.1.0 — 2026-03-20

- Expanded to 21 accent palettes and 6 skin families
- Added comprehensive glass-morphism showcase page

## 1.0.0 — 2026-03-17

- Initial release with 5 cyberpunk dark themes
- **Void Circuit** — Muted violet hacker void
- **Neon Decay** — Industrial amber rust
- **Ghost Protocol** — Cold blue operative
- **Plasma Drift** — Hot pink synthwave
- **Acid Rain** — Toxic green matrix
- Full semantic highlighting for TypeScript, React, Python, Go, Rust
- Custom SVG icons per theme
