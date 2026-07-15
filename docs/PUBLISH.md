# Publishing Syn Themes

Extension ID: `jenninexus.synagraphic-themes`  
Publisher namespace: `jenninexus`  
Current version: see `package.json` (3.1.4 as of 2026-07-14)

Ship the **same VSIX** to both registries so VS Code and Cursor stay in sync.

| Registry | Who uses it | Tool | Token env |
|----------|-------------|------|-----------|
| [VS Code Marketplace](https://marketplace.visualstudio.com/items?itemName=jenninexus.synagraphic-themes) | VS Code | `@vscode/vsce` | `VSCE_PAT` |
| [Open VSX](https://open-vsx.org/extension/jenninexus/synagraphic-themes) | Cursor (+ other Open VSX clients) | `ovsx` | `OVSX_PAT` |

## Credentials (SEGOPC)

| Env / key | Where stored | Source |
|-----------|--------------|--------|
| `VSCE_PAT` | Windows User env | Azure DevOps → Marketplace → Manage |
| `OVSX_PAT` | Windows User env + sys-admin `userdata.db` / `.env` | [Open VSX Access Tokens](https://open-vsx.org/user-settings/tokens) |

Publisher identity (Azure + Eclipse): **`jenninexus2.0@gmail.com`** (not `jenninexus@gmail.com`).  
GitHub login for Open VSX: **`jenninexus`** — Eclipse profile **GitHub Username** must match.  
Rotate / look up via `/sys-admin` → `db_get_credential` / `db_add_credential` (keys `OVSX_PAT`, `OVSX_ACCOUNT_EMAIL`).

## One-time Open VSX setup

Done for this publisher (namespace `jenninexus` exists). If resetting:

1. Sign in at [open-vsx.org](https://open-vsx.org) with GitHub (`jenninexus`).
2. [Profile](https://open-vsx.org/user-settings/profile) → **Log in with Eclipse** → **Show Publisher Agreement** → Agree.  
   - **ECA ≠ Publisher Agreement.** ECA alone does not unlock publishing.
3. [Namespaces](https://open-vsx.org/user-settings/namespaces) → create **`jenninexus`** if missing.
4. Store token as User env `OVSX_PAT` + sys-admin DB.

**Forbidden** on web upload usually means: missing Publisher Agreement, or namespace not created / not a member.

**Under review** in the Extensions UI is normal after first upload — Open VSX scans the package. Public API may already return the version while the UI still says under review.

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
.\scripts\publish-openvsx.ps1
# or: npx ovsx publish .\synagraphic-themes-<version>.vsix -p $env:OVSX_PAT
```

Tasks (`.vscode/tasks.json` / workspace):

- **Package Extension**
- **Publish Extension** (Microsoft)
- **Publish Open VSX** (Cursor)
- **Publish Both (VS Code + Open VSX)**

CI: `.github/workflows/publish-openvsx.yml` (needs repo secret `OVSX_PAT`).

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
- API: `https://open-vsx.org/api/jenninexus/synagraphic-themes`
- Cursor: Extensions → search **Syn Themes** / `jenninexus.synagraphic-themes` (may lag Open VSX)

## Cursor verified badge (optional, separate)

See **[CURSOR-VERIFICATION.md](./CURSOR-VERIFICATION.md)** for checklist + forum draft.

Summary: `homepage` is already `https://jenninexus.com`. Add Open VSX link on the site (`jenninexus.com` → `/links`), deploy, then post in [Extension Verification](https://forum.cursor.com/c/showcase/extension-verification/23).