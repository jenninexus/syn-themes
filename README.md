# Syn Themes — Cyberpunk Glass Theme Pack

Cyberpunk dark theme pack for VS Code with 6 named themes. Near-black voids with neon accents, semantic highlighting, and optional glow effects.

Part of the Syna design system — 6 glass skin families, 21 unified accent palettes (v2.2), 31 total presets.

> **Two products, one source:** This repo produces (1) a **VS Code extension** (`monofinitystudio.syn-themes`) shipping 6 Synagraphic themes, and (2) a **web app theme pack** (21 palettes + 6 skin families) distributed via the `optional-features` submodule to Synabrain, Synagen, and Syqo.

## Themes

| Theme | Primary | Accent | Aesthetic |
|-------|---------|--------|-----------|
| **Void Circuit** | #8b6aff (violet) | #3dd8d8 (cyan) | Muted hacker void |
| **Neon Decay** | #42f4c8 (cyan) | #ff2d6f (magenta) | Industrial cyberpunk |
| **Ghost Protocol** | #5a9ce8 (cold blue) | #88c8ff (ice) | Operative stealth |
| **Plasma Drift** | #e050a0 (hot pink) | #f070a8 (magenta) | Synthwave heat |
| **Acid Rain** | #68c030 (toxic green) | #90e848 (lime) | Matrix terminal |
| **Martian** | #FF6B00 (orange) | #8B5CF6 (purple) | MartianGames cyberpunk |

## Skin Families (6)

Glass-morphism surface layers with semi-transparent blur, accent-tinted borders, and depth stacking.

| Family | Modes | Character |
|--------|-------|-----------|
| **Synabrain Glass** | dark, light | Cyan-tinted translucent glass |
| **Martian Games** | dark, light | Neutral darks, molten orange borders |
| **Tinted Glass** | dark, light | Neutral glass — accent palettes dominate |
| **Holographic Glass** | dark, light | Prismatic rainbow shimmer, animated borders |
| **Synagen Dark** | dark | Deep-space translucent panels |
| **Midnight Chrome** | dark | Blue-charcoal glass, cool steel edges |

## Accent Palettes (21)

All palettes are unified in one collection. The 6 VS Code themes have full editor token definitions; all 21 work as web accent presets.

**Machine-readable palettes:** [`palettes/all-palettes.json`](palettes/all-palettes.json) — canonical SSOT for all skins + palettes.

## Install

### VS Code
Search "Syn Themes" in the Extensions marketplace (`monofinitystudio.syn-themes`), or install from VSIX.

### Web Apps (Syna Ecosystem)
These themes are available as accent palettes in Synabrain, Synagen, and Syqo via the Theme Customizer panel. Web palette colors map to the 6-color accent system (`cyan`, `purple`, `pink`, `indigo`, `blue`, `teal`).

## Syna Skins

This extension participates in the [Syna Skin Contract](https://github.com/jenninexus/optional-features/blob/main/docs/SKIN-CONTRACT.md):

- **Data attributes:** `data-syna-skin`, `data-syna-mode`, `data-syna-palette`, `data-syna-family`
- **CSS variable bridge:** `--accent-cyan`, `--accent-purple`, `--bg-primary`, `--glow-primary`
- **`syna-theme-change` event:** Fired when switching palettes
- **Glass properties:** All skins use semi-transparent surfaces with `backdrop-filter: blur()` for depth

### Design Token Alignment

| Token | Mapping |
|-------|---------|
| `--accent-cyan` | Theme's web `cyan` color |
| `--accent-purple` | Theme's web `purple` color |
| `--bg-primary` | Skin family background |
| `--text-primary` | Skin family text color |
| `--glow-primary` | Theme's glow color |

## Files

```
themes/                  VS Code theme JSON files (100+ tokens each)
palettes/                Machine-readable palette + skin JSON
  all-palettes.json      Canonical SSOT — all 21 palettes + 6 skin families
  synagraphic-palettes   VS Code theme extract (vscode/web/terminal per theme)
  core/                  15 core web palettes (subset)
icons/                   Extension icon SVGs
glow.css                 Optional neon glow effects (Custom CSS and JS Loader)
synagrapic-themes.html   Visual showcase — all skins + palettes
```

## Glow Effects

`glow.css` adds text-shadow neon glow to VS Code syntax tokens. Requires [Custom CSS and JS Loader](https://marketplace.visualstudio.com/items?itemName=be5invis.vscode-custom-css). Respects `prefers-reduced-motion`.

## Related

| Resource | Purpose |
|----------|---------|
| [optional-features](https://github.com/jenninexus/optional-features) | Shared feature registry + theme contracts |
| [SKIN-CONTRACT.md](https://github.com/jenninexus/optional-features/blob/main/docs/SKIN-CONTRACT.md) | Cross-app skin compliance contract |
| [DESIGN-TOKENS.md](https://github.com/jenninexus/optional-features/blob/main/docs/DESIGN-TOKENS.md) | Shared design tokens |

## License

Proprietary. See [LICENSE](LICENSE).

Published by [Monofinity Studio](https://github.com/monofinitystudio).
