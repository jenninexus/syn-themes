# Synagraphic Themes

Cyberpunk dark theme pack for VS Code with 6 named themes. Near-black voids with neon accents, semantic highlighting, and optional glow effects.

## Themes

| Theme | Primary | Accent | Aesthetic |
|-------|---------|--------|-----------|
| **Void Circuit** | #8b6aff (violet) | #3dd8d8 (cyan) | Muted hacker void |
| **Neon Decay** | #42f4c8 (cyan) | #ff2d6f (magenta) | Industrial cyberpunk |
| **Ghost Protocol** | #5a9ce8 (cold blue) | #88c8ff (ice) | Operative stealth |
| **Plasma Drift** | #e050a0 (hot pink) | #f070a8 (magenta) | Synthwave heat |
| **Acid Rain** | #68c030 (toxic green) | #90e848 (lime) | Matrix terminal |
| **Martian** | #FF6B00 (orange) | #8B5CF6 (purple) | MartianGames palette |

## Install

### VS Code
Search "Synagraphic" in the Extensions marketplace, or install from VSIX.

### Web Apps (Syna Ecosystem)
These themes are also available as accent palettes in Synabrain, Synagen, and Syqo via the Theme Customizer panel. Web app palette colors are mapped to the Syna 6-color accent system (`cyan`, `purple`, `pink`, `indigo`, `blue`, `teal`).

**Machine-readable palettes:** [`palettes/synagraphic-palettes.json`](palettes/synagraphic-palettes.json) — includes both VS Code editor colors and web app accent colors for cross-project integration.

## Syna Skin Contract

This extension participates in the [Syna Theme Skin Contract](https://github.com/jenninexus/optional-features/blob/main/docs/SKIN-CONTRACT.md):

- **Data attributes:** `data-accent-palette` set to the palette ID (e.g., `void-circuit`)
- **CSS variable bridge:** Each theme maps to `--accent-cyan`, `--accent-purple`, `--bg-primary`, etc.
- **`syna-theme-change` event:** Fired when switching between Synagraphic palettes
- **Recommended families per theme:** See `palettes/synagraphic-palettes.json → skinContract.recommendedFamilies`

### Design Token Alignment

All Synagraphic themes follow the shared design tokens defined in [optional-features/docs/DESIGN-TOKENS.md](https://github.com/jenninexus/optional-features/blob/main/docs/DESIGN-TOKENS.md):

| Skin Contract Token | Synagraphic Mapping |
|--------------------|--------------------|
| `--accent-cyan` | Theme's web `cyan` color |
| `--accent-purple` | Theme's web `purple` color |
| `--bg-primary` | Theme's VS Code `background` |
| `--text-primary` | Theme's VS Code `foreground` |
| `--glow-primary` | Theme's web `glow` color |

## Files

```
themes/           VS Code theme JSON files (100+ color tokens each)
palettes/         Machine-readable palette JSON for cross-app integration
icons/            Extension icon assets
glow.css          Optional neon glow effects (requires Custom CSS and JS Loader)
preview.html      Visual theme preview page
```

## Glow Effects

`glow.css` adds text-shadow neon glow to keywords, strings, and comments in VS Code. Requires the [Custom CSS and JS Loader](https://marketplace.visualstudio.com/items?itemName=be5invis.vscode-custom-css) extension.

For web apps, use CSS `text-shadow` directly with the theme's glow color (`--glow-primary`).

## Related

| Resource | Purpose |
|----------|---------|
| [optional-features](https://github.com/jenninexus/optional-features) | Shared feature registry + theme contracts |
| [SKIN-CONTRACT.md](https://github.com/jenninexus/optional-features/blob/main/docs/SKIN-CONTRACT.md) | Cross-app theme compliance contract |
| [DESIGN-TOKENS.md](https://github.com/jenninexus/optional-features/blob/main/docs/DESIGN-TOKENS.md) | Shared design tokens (colors, motion, spacing) |
| [THEME-CUSTOMIZER.md](https://github.com/jenninexus/optional-features/blob/main/docs/THEME-CUSTOMIZER.md) | Runtime theme customization panel |

## License

Proprietary (JenniNexus). See [LICENSE](LICENSE).
