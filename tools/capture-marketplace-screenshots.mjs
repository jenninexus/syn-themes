/**
 * Capture viewport-sized screenshots at specific scroll positions
 * for the VS Code Marketplace gallery.
 *
 * Usage: node tools/capture-marketplace-screenshots.mjs
 * Requires: npx playwright install chromium
 */
import { chromium } from 'playwright';
import { mkdirSync } from 'fs';
import { join } from 'path';

const OUTPUT_DIR = join(import.meta.dirname, '..', 'assets', 'screenshots');
const URL = 'http://localhost:8099/synagraphic-themes.html';
const WIDTH = 1280;
const HEIGHT = 800;

// Each screenshot: a name and a scroll-to-Y offset
const shots = [
  { name: '01-hero',          scrollY: 0 },
  { name: '02-skin-families', scrollY: 420 },
  { name: '03-palettes-top',  scrollY: 1050 },
  { name: '04-palettes-mid',  scrollY: 2100 },
  { name: '05-palettes-bottom', scrollY: 3200 },
];

mkdirSync(OUTPUT_DIR, { recursive: true });

const browser = await chromium.launch({ headless: true });
const page = await browser.newPage({ viewport: { width: WIDTH, height: HEIGHT } });
await page.goto(URL, { waitUntil: 'networkidle' });
await page.waitForTimeout(2000); // let fonts + animations settle

for (const shot of shots) {
  await page.evaluate((y) => window.scrollTo(0, y), shot.scrollY);
  await page.waitForTimeout(500);
  const path = join(OUTPUT_DIR, `${shot.name}.png`);
  await page.screenshot({ path, clip: { x: 0, y: 0, width: WIDTH, height: HEIGHT } });
  console.log(`  ✅ ${shot.name}.png`);
}

await browser.close();
console.log(`\nDone — ${shots.length} screenshots in ${OUTPUT_DIR}`);
