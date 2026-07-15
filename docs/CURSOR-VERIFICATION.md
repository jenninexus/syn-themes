# Cursor verified publisher badge

Optional. Does **not** block Open VSX install — only adds a trust badge in Cursor’s marketplace UI.

Docs: [Cursor — Extensions](https://cursor.com/help/customization/extensions)  
Forum category: [Extension Verification](https://forum.cursor.com/c/showcase/extension-verification/23)

## Checklist

| Step | Status | Notes |
|------|--------|--------|
| Same extension ID on MS + Open VSX | ✅ | `jenninexus.synagraphic-themes` |
| Open VSX `homepage` → custom domain | ✅ | `https://jenninexus.com` (in `package.json` / listing) |
| Site links back to Open VSX listing | ⏳ | Add on [jenninexus.com/links](https://jenninexus.com/links) → deploy `jenninexus.com` repo (`public_html/links.php`) |
| Forum verification request | ⏳ later | Post after the site link is **live** on the domain |
| Open VSX namespace ownership claim | ⏳ optional | Removes “unrelated publisher” warning — separate from Cursor badge |

## After `/links` is deployed

1. Confirm live: https://jenninexus.com/links shows **Syn Themes (Open VSX)** → https://open-vsx.org/extension/jenninexus/synagraphic-themes  
2. Open https://forum.cursor.com/c/showcase/extension-verification/23 → **New Topic**  
3. Paste the draft below.

## Forum draft

**Title:** Extension verification request — Syn Themes (jenninexus.synagraphic-themes)

**Body:**

```text
Hi — requesting a Cursor verified publisher badge for Syn Themes.

- Extension: Syn Themes — Syn-Agentic Cyberpunk Glass Design Presets
- Extension ID: jenninexus.synagraphic-themes
- Open VSX: https://open-vsx.org/extension/jenninexus/synagraphic-themes
- Website (homepage on listing): https://jenninexus.com
- Open VSX link on site: https://jenninexus.com/links (card: Syn Themes (Open VSX))
- Also on VS Code Marketplace under the same ID: https://marketplace.visualstudio.com/items?itemName=jenninexus.synagraphic-themes
- Publisher / GitHub: jenninexus
- Version: 3.1.4

Thanks!
```

## Related

- Dual publish: [PUBLISH.md](./PUBLISH.md)
- Open VSX namespace claim: [Namespace Access wiki](https://github.com/eclipse-openvsx/openvsx/wiki/Namespace-Access)
