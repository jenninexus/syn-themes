<div align="center">

# Syn Themes

![License](https://img.shields.io/badge/license-proprietary%20source--available-00e879?style=flat-square)
![Marketplace](https://img.shields.io/badge/marketplace-VS%20Code%20Extension-42f4c8?style=flat-square)
![Themes](https://img.shields.io/badge/themes-6%20cyberpunk%20dark-39ff8c?style=flat-square)
![Palettes](https://img.shields.io/badge/palettes-21%20accent%20sets-00e5ff?style=flat-square)
![Highlighting](https://img.shields.io/badge/highlighting-semantic-8bffcc?style=flat-square)

## Cyberpunk glass for VS Code.
## Six moods. Twenty-one palettes.

`syn-themes` is a VS Code theme extension with neon glass surfaces, full semantic highlighting, terminal colors, and palette data from the Syna creative ecosystem.

<img src="https://raw.githubusercontent.com/jenninexus/syn-themes/main/assets/media/showcase-scroll.gif" alt="Syn Themes showcase scroll" width="100%">

</div>

- Install six dark cyberpunk themes for VS Code.
- Use 21 accent palettes across editor and Syna app theme systems.
- Get semantic highlighting for TypeScript, React, Python, Go, Rust, and more.
- Keep the visual identity source-available without allowing unapproved redistribution.

---

## Install

Search **Syn Themes** in the VS Code Extensions Marketplace, or run:

```text
ext install jenninexus.synagraphic-themes
```

Marketplace listing:

[Syn Themes — Syn-Agentic Cyberpunk Glass Design Presets](https://marketplace.visualstudio.com/items?itemName=jenninexus.synagraphic-themes)

---

## Themes

| | |
|:---:|:---:|
| ![Void Circuit](https://raw.githubusercontent.com/jenninexus/syn-themes/main/assets/media/syn_void-circuit.png) | ![Neon Decay](https://raw.githubusercontent.com/jenninexus/syn-themes/main/assets/media/syn_neon-decay.png) |
| **Void Circuit** — muted violet hacker void | **Neon Decay** — industrial cyan + magenta |
| ![Ghost Protocol](https://raw.githubusercontent.com/jenninexus/syn-themes/main/assets/media/syn_ghost-protocol.png) | ![Plasma Drift](https://raw.githubusercontent.com/jenninexus/syn-themes/main/assets/media/syn_plasma-drift.png) |
| **Ghost Protocol** — cold blue operative stealth | **Plasma Drift** — hot pink synthwave heat |
| ![Acid Rain](https://raw.githubusercontent.com/jenninexus/syn-themes/main/assets/media/syn_acid-rain.png) | ![Martian](https://raw.githubusercontent.com/jenninexus/syn-themes/main/assets/media/syn_martian.png) |
| **Acid Rain** — toxic green matrix terminal | **Martian** — orange + purple cyberpunk |

---

## Accent Palettes

<div align="center">

<img src="https://raw.githubusercontent.com/jenninexus/syn-themes/main/assets/swatches/all-swatches.png" alt="All Syn Themes accent palettes" width="100%">

</div>

**15 core:** synabrain, martian, ocean, sunset, forest, neon, minimal, studio-pro-light, cyberpunk, aurora-borealis, synthwave, midnight-depths, cherry-blossom, arctic-frost, velvet-noir

**6 Synagraphic:** void-circuit, neon-decay, ghost-protocol, plasma-drift, acid-rain, sg-martian

---

## Features

- **6 cyberpunk dark themes** with 100+ color tokens each.
- **Full semantic highlighting** for modern language stacks.
- **Terminal ANSI colors** tuned per theme.
- **6 glass-morphism skin families** with translucent surfaces, tinted borders, and depth stacking.
- **WCAG-refined palettes** in v2.2 with zero contrast failures.
- **Optional glow effects** via `glow.css` for users of [Custom CSS and JS Loader](https://marketplace.visualstudio.com/items?itemName=be5invis.vscode-custom-css).

---

## Skin Families

| Family | Modes | Character |
|--------|-------|-----------|
| **Synagentic Glass** | dark, light | Cyan-tinted translucent glass |
| **Synabrain Glass** | dark, light | Warm purple-pink translucent glass |
| **Martian Games** | dark, light | Neutral darks, molten orange borders |
| **Tinted Glass** | dark, light | Neutral glass where accent palettes dominate |
| **Holographic Glass** | dark, light | Prismatic rainbow shimmer and animated borders |
| **Midnight Chrome** | dark, light | Blue-charcoal glass and cool steel edges |

---

## Cross-Project Theme Protocol

`syn-themes` is the authoring source for the Syna design system's accent palettes and skin families. It ships as a VS Code extension, and its palette data also informs Syna app theme customizers.

| Layer | Repo | Role |
|-------|------|------|
| **Authoring** | `jenninexus/syn-themes` | Edit palettes in `palettes/all-palettes.json`, VS Code themes in `themes/` |
| **Distribution** | `jenninexus/features` | `registry/syn-themes.json` extracted palette data for host apps |
| **Host apps** | Synabrain, Synagen, Syqo | App-specific theme customizers consume copied or submodule palette data |

### Update Protocol

When changing a palette or skin family:

1. Edit `palettes/all-palettes.json` in this repo.
2. Copy updated palette data to `features/registry/syn-themes.json`.
3. Push both repos.
4. Update host app theme data or submodule pointers as needed.
5. Verify the extension and host app theme customizers.

Full config pointers: `.config/mcp_syn-themes.yaml`

---

## License

Proprietary source-available. You may view, fork, and use this repo for personal, non-commercial purposes. Redistribution, publishing modified extensions, or commercial use requires prior written permission.

See [LICENSE](LICENSE).

---

<div align="center">

If these themes make your editor feel alive:

[Star this repo](https://github.com/jenninexus/syn-themes) · [Rate on Marketplace](https://marketplace.visualstudio.com/items?itemName=jenninexus.synagraphic-themes&ssr=false#review-details) · [Links](https://jenninexus.com/links) · [Patreon](https://www.patreon.com/c/JenniNexus) · [Paypal](https://paypal.me/jenninexus)

Published by [Jenni](https://github.com/jenninexus) at [Monofinity Studio](https://github.com/monofinitystudio).

</div>
