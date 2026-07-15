# Publishing Syn Themes

Extension ID: `jenninexus.synagraphic-themes`  
Publisher namespace: `jenninexus`

Ship the **same VSIX** to both registries so VS Code and Cursor stay in sync.

| Registry | Who uses it | Tool | Token env |
|----------|-------------|------|-----------|
| [VS Code Marketplace](https://marketplace.visualstudio.com/items?itemName=jenninexus.synagraphic-themes) | VS Code | `@vscode/vsce` | `VSCE_PAT` |
| [Open VSX](https://open-vsx.org/extension/jenninexus/synagraphic-themes) | Cursor (+ other Open VSX clients) | `ovsx` | `OVSX_PAT` |

## One-time Open VSX setup

Publisher identity (same Azure / Eclipse email as VSCE): **`jenninexus2.0@gmail.com`**  
GitHub login for Open VSX: **`jenninexus`** (must match the GitHub linked on the Eclipse account).  
Token env: `OVSX_PAT` (SEGOPC User env + sys-admin `userdata.db` / `.env`). Tokens: https://open-vsx.org/user-settings/tokens

1. Sign in at [open-vsx.org](https://open-vsx.org) with GitHub (`jenninexus`).
2. [Profile](https://open-vsx.org/user-settings/profile) → **Log in with Eclipse** (link `jenninexus2.0@gmail.com`).
3. Still on Profile → **Show Publisher Agreement** → Agree.  
   - This is **not** the Eclipse Contributor Agreement (ECA). ECA alone does not unlock publishing.
4. [Namespaces](https://open-vsx.org/user-settings/namespaces) → create **`jenninexus`**  
   (or CLI: `npx ovsx create-namespace jenninexus -p $env:OVSX_PAT`).
5. Optional CLI token: [Access Tokens](https://open-vsx.org/user-settings/tokens) → store as User env `OVSX_PAT`.

Optional: claim verified namespace ownership via the [Eclipse Open VSX namespace process](https://github.com/eclipse-openvsx/openvsx/wiki/Namespace-Access).

## Dual publish (every release)

```powershell
cd C:\Github\syn-themes

# 1. Bump package.json version + changelog.md
# 2. Rebuild storefront assets if media/README changed
# 3. Package
npx @vscode/vsce package --no-dependencies

# 4. Microsoft Marketplace (VS Code)
npx @vscode/vsce publish --pat $env:VSCE_PAT

# 5. Open VSX (Cursor)
npx ovsx publish .\synagraphic-themes-<version>.vsix -p $env:OVSX_PAT
```

Or use VS Code / Cursor tasks:

- **Package Extension**
- **Publish Extension** (Microsoft)
- **Publish Open VSX** (Cursor)

Helper script:

```powershell
.\scripts\publish-openvsx.ps1
```

## Before-publish checklist

1. Theme contrast audited (or intentional accent-only change)
2. Palettes mirrored from kit when accents changed: `syna-theme-kit/palettes/syna-palettes.json` → `palettes/all-palettes.json`
3. Storefront assets rebuilt if listing media changed: `node storage/tools/build-storefront-assets.mjs`
4. README has no internal protocol / features-registry tables
5. Version bumped in `package.json` + `changelog.md`
6. Both registries published with the **same version**

## Verify

- VS Code: https://marketplace.visualstudio.com/items?itemName=jenninexus.synagraphic-themes
- Open VSX: https://open-vsx.org/extension/jenninexus/synagraphic-themes
- Cursor: Extensions → search **Syn Themes** / `jenninexus.synagraphic-themes` (may lag Open VSX by a few minutes)

## Cursor verified badge (optional, separate)

Cursor verification is **not** automatic from Open VSX. Requires a custom-domain site linking the Open VSX listing, matching homepage on the listing, then a Cursor forum Extension Verification post. See [Cursor extension docs](https://cursor.com/help/customization/extensions).
