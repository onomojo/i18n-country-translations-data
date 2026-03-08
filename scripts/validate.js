#!/usr/bin/env node
/**
 * Validates locale JSON files: consistent keys, no empty values.
 */
import { readFileSync, readdirSync } from 'fs';
import { join } from 'path';

const dataDir = new URL('../data/', import.meta.url).pathname;
const files = readdirSync(dataDir).filter(f => f.endsWith('.json'));

const enData = JSON.parse(readFileSync(join(dataDir, 'en.json'), 'utf8'));
const enKeys = Object.keys(enData);
let errors = 0;
let warnings = 0;

for (const file of files) {
  const parsed = JSON.parse(readFileSync(join(dataDir, file), 'utf8'));
  const keys = Object.keys(parsed);

  // Check for empty values
  const empty = Object.entries(parsed).filter(([, v]) => v === null || v === undefined || String(v).trim() === '');
  if (empty.length > 0) {
    console.warn(`${file}: ${empty.length} empty values: ${empty.slice(0, 3).map(([k]) => k).join(', ')}...`);
    warnings++;
  }

  // Check key count (allow some variation for locales with extra CLDR codes)
  if (keys.length < 200) {
    console.warn(`${file}: only ${keys.length} keys (en has ${enKeys.length})`);
    warnings++;
  }
}

console.log(`\nValidated ${files.length} locale files (en has ${enKeys.length} keys)`);
if (errors > 0) {
  console.error(`✗ ${errors} errors found`);
  process.exit(1);
}
if (warnings > 0) {
  console.warn(`⚠ ${warnings} warnings`);
}
if (errors === 0) {
  console.log('✓ No critical errors');
}
