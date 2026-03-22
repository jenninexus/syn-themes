# Syn Themes — Dev Notes

> Private dev reminders. Not shipped in the .vsix package.

## Two Products, One Source

This repo produces **two distinct deliverables** from the same palette source:

### 1. VS Code Extension (`syn-themes`)
- **Ships:** `.vsix` with 6 theme JSONs (100+ tokens each) + glow.css
- **Consumers:** VS Code users via marketplace
- **Palette scope:** 6 Synagraphic themes only (the ones with `"synagraphic": true`)
- **Publishes to:** VS Code Marketplace as `monofinitystudio.syn-themes`

### 2. Web App Theme Pack (via optional-features submodule)
- **Ships:** `registry/palettes.json` (21 palettes + 6 skin families)
- **Consumers:** Synabrain, Synagen, Syqo ThemeCustomizer panels
- **Palette scope:** All 21 palettes (15 core + 6 Synagraphic)
- **Delivered via:** `optional-features` git submodule in each host app
- **Import path:** `accentPalettes.ts` → `import.meta.glob('**/palettes.json')` with inline fallback

### Data Flow

```
syn-themes repo (this repo — AUTHORING SSOT)
  palettes/all-palettes.json          ← Edit here (21 palettes + 6 skin families)
  themes/*.json                       ← VS Code theme definitions (6 themes)
       |                                    |
       |  (copy + normalize families)       |  (vsce package)
       v                                    v
optional-features/registry/           VS Code Marketplace
  palettes.json (DISTRIBUTION SSOT)   monofinitystudio.syn-themes
       |
       v  (git submodule in each host)
  Synabrain: accentPalettes.ts (import.meta.glob + inline fallback)
  Synagen:   themeCustomizerStore.ts (import.meta.glob + inline fallback)
  Syqo:      hardcoded inline (TODO: wire up palettes.json)
```

### CSS Variable Mapping (per host)

Each host maps palette colors to its own CSS vars. **Decision: Option A — keep the alias bridge.**

| CSS Var Style | Used By | Example |
|--------------|---------|---------|
| `--bg-primary`, `--accent-cyan` | Synabrain (native) | Skin Contract canonical names |
| `--editor-bg`, `--accent-color` | Synagen (native) | Game engine editor domain |
| Compatibility aliases | Synagen themeProvider | Maps Synagen vars → Synabrain names for shared CSS |

Both apps keep their native naming. The alias block in Synagen's `themeProvider.ts` makes shared CSS work. This is intentional — game engine editor and dashboard are legitimately different UI domains.

## Naming

- **Extension ID:** `syn-themes` (available on marketplace as of 2026-03-22)
- **Display name:** "Syn Themes — Cyberpunk Glass Theme Pack"
- **Publisher:** `monofinitystudio`
- **GitHub:** Rename `jenninexus/synagraphic-themes` -> `jenninexus/syn-themes` after first publish
- Alternatives checked: `syn` (too short/generic), `synagraphic-themes` (fallback)

## Must-Have (Before First Publish)

- [ ] `icon.png` — 256x256 extension icon (convert from `icons/icon-main.svg`)
- [ ] Azure DevOps PAT for `monofinitystudio` publisher (one-time setup)
- [ ] Install `vsce`: `npm install -g @vscode/vsce`
- [ ] README rewrite with marketplace images (hero, swatches, theme previews)
- [x] `.vscodeignore` to keep package small
- [ ] CHANGELOG.md is up to date (already exists)
- [ ] Verify `package.json` has correct `repository.url` after rename

## Nice-to-Have (Makes It Stand Out)

- [ ] Hero screenshot/video via vid-scroll (`synagrapic-themes.html` desktop capture)
- [x] SVG palette swatch strips (auto-generated from `all-palettes.json`) — 21 + overview
- [ ] 6 VS Code screenshots showing real TypeScript code per theme
- [ ] Short `.webm` or `.gif` showing theme switching

## Done

- [x] Palette refinement v2.2 — WCAG contrast (0 FAILs), dedup (0 duplicates)
- [x] Swatch generator tool (`tools/generate-swatches.mjs`)
- [x] Workspace file with tasks + launch config
- [x] `/syn-themes` Claude skill
- [x] Propagated v2.2 palettes to op-ft + Synabrain + Synagen submodules

## Publishing Commands

```bash
vsce package                # Creates syn-themes-2.1.0.vsix
vsce publish                # Publishes to marketplace (needs PAT)

# Future version bumps
vsce publish patch           # 2.1.0 -> 2.1.1
vsce publish minor           # 2.1.0 -> 2.2.0
```

## Screenshot Approaches

1. **vid-scroll** (for showcase HTML + scrolling captures):
   ```bash
   npx tsx C:\Github\vid-scroll\src\cli.ts \
     --url "file:///C:/Github/synagraphic-themes/synagrapic-themes.html" \
     --capture screenshot --no-mobile --no-tablet \
     --output ./assets
   ```

2. **vscode.dev** (for real VS Code theme screenshots):
   - Open `https://vscode.dev` in browser
   - Load a TypeScript file, apply your theme via settings JSON
   - Use vid-scroll or browser DevTools screenshot to capture
   - This gives authentic VS Code rendering without local extension install

3. **Extension Development Host** (local VS Code):
   - Press F5 in this repo to launch Extension Development Host
   - Switch themes, take screenshots manually or via vid-scroll

## Palette Update Workflow

When editing palettes:

1. Edit `palettes/all-palettes.json` (authoring SSOT)
2. If VS Code theme colors changed: also edit `themes/<name>.json`
3. Copy `all-palettes.json` -> `C:\Github\optional-features\registry\palettes.json` (normalize `recommendedFamilies` to short names)
4. Commit + push optional-features
5. In host repos: `git submodule update --remote` in `Integrations/optional-features`
6. Synabrain/Synagen auto-refresh via JSON import; Syqo needs manual inline update

## Connection to Host Apps

```
syn-themes (this repo — authoring)
  palettes/all-palettes.json
       |
       v  (manual copy, normalize families to short names)
optional-features/registry/palettes.json (distribution)
       |
       v  (git submodule in each host)
  Synabrain: import.meta.glob + inline fallback
  Synagen:   import.meta.glob + inline fallback
  Syqo:      hardcoded inline (TODO: wire up palettes.json)
```

## File Purposes

| File | Ships in .vsix? | Purpose |
|------|-----------------|---------|
| `themes/*.json` | Yes | VS Code theme definitions |
| `palettes/*.json` | Yes | Machine-readable palette data |
| `icons/*.svg` | Yes | Theme icons |
| `icon.png` | Yes | Marketplace icon |
| `glow.css` | Yes | Optional neon glow effects |
| `README.md` | Yes | Marketplace landing page |
| `CHANGELOG.md` | Yes | Version history |
| `LICENSE` | Yes | Proprietary license |
| `assets/` | No | README images (swatches, hero, screenshots) |
| `tools/` | No | Build scripts (swatch generator, capture) |
| `dev.md` | No | This file (dev reminders) |
| `*.html` | No | Showcase pages |
| `*.code-workspace` | No | VS Code workspace |
