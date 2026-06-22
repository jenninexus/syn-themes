# syn-themes — VS Code workspace reference

Extension ID: `jenninexus.synagraphic-themes`  
Publisher: `jenninexus`  
Skill: `/syn-themes`  
Updated: 2026-06-22

## Marketplace

- Listing: https://marketplace.visualstudio.com/items?itemName=jenninexus.synagraphic-themes
- Manage: https://marketplace.visualstudio.com/manage/publishers/jenninexus/extensions/synagraphic-themes/hub
- Repo: https://github.com/jenninexus/syn-themes

## Publishing

PAT env var: `VSCE_PAT` (Windows User env var on SEGOPC)  
If expired: generate at https://dev.azure.com — scope: **Marketplace → Manage** only  
See `tasks.json` for package/publish tasks.

## SSOT pointers

| Thing | Location |
|-------|----------|
| Palette color authoring | `palettes/all-palettes.json` (this repo) |
| Palette distribution (app format) | `syna-theme-kit/palettes/syna-palettes.json` |
| Update protocol | `syna-theme-kit/docs/PROTOCOL.md` |
| Extension operational config | `syna-theme-kit/.vscode/mcp.json § syn_themes_vscode_extension` |
