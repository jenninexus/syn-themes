# Release tracking — Syn Themes

Agent / maintainer checklist. Keep **README.md** public-facing (no internal kit paths, no Cross-Project Protocol tables).

## When to bump & dual-publish

| Change | Bump? |
|--------|-------|
| Synagraphic / Martian **palette hexes** in `syna-theme-kit/palettes/syna-palettes.json` | **Yes** — mirror + refresh `themes/*.json` + storefront |
| Editor chrome / tokenColors / contrast-only | **Yes** |
| Skins / wet glass tokens in the kit only | **No** Marketplace bump |
| README / media / changelog only | Patch version OK |

Ship the **same VSIX** to:

1. [VS Code Marketplace](https://marketplace.visualstudio.com/items?itemName=jenninexus.synagraphic-themes) — `VSCE_PAT`
2. [Open VSX](https://open-vsx.org/extension/jenninexus/synagraphic-themes) (Cursor) — `OVSX_PAT`

Detail: [PUBLISH.md](./PUBLISH.md).

## Recipe (kit → extension)

```powershell
cd C:\Github\syna-theme-kit
# edit palettes/syna-palettes.json (SSOT) — Synagraphic ids + sg-martian / martian / mg-website
npm run sync-previewer

cd C:\Github\syn-themes
node storage/tools/improve-themes-v31.mjs
# Archive prior listing art: _archive/<date>-marketplace-media/
node storage/tools/build-storefront-assets.mjs
node storage/tools/generate-swatches.mjs
# bump package.json + changelog.md
npx @vscode/vsce package --no-dependencies
npx @vscode/vsce publish --pat $env:VSCE_PAT
.\scripts\publish-openvsx.ps1
```

## Verify

- Open VSX API: `https://open-vsx.org/api/jenninexus/synagraphic-themes`
- Marketplace item page shows new version + screenshots
- Cursor Extensions search may lag Open VSX by hours

## Public README rules

- Themes, install, license, Patreon — OK
- No `syna-theme-kit` internal paths, no features-registry / Synabrain tables
- Screenshots via `raw.githubusercontent.com/jenninexus/syn-themes/main/assets/media/...`
