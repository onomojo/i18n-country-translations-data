# i18n-country-translations-data

> Localized country name translations in 168 locales — CLDR-sourced, framework-agnostic YAML.

This repository contains the canonical translation data for country and territory names, covering **257 ISO 3166-1 alpha-2 codes** across **168 locales**. The data is sourced from the [Unicode CLDR](https://cldr.unicode.org/) and stored as flat, human-readable YAML — easy to consume from any language or framework.

## Who is this for?

- **Library authors** building country/locale tools in any language (Python, PHP, Go, etc.)
- **Ruby developers** using the [i18n-country-translations](https://github.com/onomojo/i18n-country-translations) gem
- **JavaScript developers** — see the ready-to-use NPM package: [i18n-country-translations](https://github.com/onomojo/i18n-country-translations-js)
- **Anyone** who needs accurate country names in languages beyond the typical 30-50 that most libraries support

## Why 168 locales?

Most translation datasets cover 30-80 major languages and stop there. That leaves hundreds of millions of speakers without support — Punjabi (113M speakers), Telugu (82M), Tamil (78M), Gujarati (56M), Yoruba (45M), and dozens more.

This dataset doesn't cut corners. If CLDR has the data, it's here.

## Data Format

Each locale is a single YAML file with flat key-value pairs — no nesting, no complex structure:

```yaml
# data/de.yml
"US": "Vereinigte Staaten"
"GB": "Vereinigtes Königreich"
"DE": "Deutschland"
"JP": "Japan"
"NO": "Norwegen"
```

All keys are quoted to prevent YAML boolean coercion (the country code `NO` would otherwise parse as `false`).

## Coverage

- **257 territory codes** per locale — full ISO 3166-1 alpha-2 plus EU, XK (Kosovo), and other commonly used codes
- **168 locales** — from major world languages to regional languages like Basque, Cherokee, and Hawaiian

<details>
<summary>View all 168 locales</summary>

af, ak, am, ar, as, az, be, bg, bm, bn, bo, br, bs, ca, cs, cy, da, de, dz, ee, el, en, eo, es, et, eu, fa, ff, fi, fo, fr, ga, gd, gl, gu, ha, he, hi, hr, hu, hy, ia, id, ig, is, it, ja, ka, ki, kk, kl, km, kn, ko, ky, lg, ln, lo, lt, lu, lv, mg, mk, ml, mn, mr, ms, mt, my, nb, nd, ne, nl, nn, or, pa, pl, ps, pt, pt-BR, rm, rn, ro, ru, se, sg, si, sk, sl, sn, so, sq, sr, sv, sw, ta, te, th, ti, to, tr, uk, ur, uz, vi, yo, zh, zh-CN, zh-HK, zh-TW, zu, asa, bas, bez, brx, byn, cgg, chr, dav, dje, dyo, ebu, ewo, fil, fur, gsw, guz, haw, jmc, kab, kam, kde, kea, khq, kln, ksb, ksf, ksh, lag, luo, luy, mas, mer, mfe, mgh, mua, naq, nmg, nus, nyn, rof, rwk, saq, sbp, seh, ses, shi, swc, teo, tig, twq, tzm, vai, vun, wae, wal, xog, yav

</details>

## Repository Structure

```
data/
  en.yml              # English (reference locale)
  de.yml              # German
  ja.yml              # Japanese
  zh-TW.yml           # Traditional Chinese
  ...                 # 168 locale files total
scripts/
  flatten-yaml.js     # Import from Ruby gem's nested YAML format
  validate.js         # Validate consistency across all locale files
```

## Validation

Every locale file is validated to ensure:
- No YAML boolean coercion (keys like `NO` aren't parsed as `false`)
- No boolean values in the data
- No empty or null values
- Reasonable key count per file

```bash
npm run validate
# Validated 168 locale files (en has 258 keys)
# ✓ No critical errors
```

## Data Source

All translations come from the [Unicode CLDR](https://cldr.unicode.org/) (Common Locale Data Repository) — the industry-standard source used by every major platform including iOS, Android, Chrome, and Java. This ensures translations are accurate, consistent, and maintained by native speakers through Unicode's established review process.

## Related

- **[i18n-country-translations (NPM)](https://github.com/onomojo/i18n-country-translations-js)** — Ready-to-use JavaScript/TypeScript package built from this data
- **[i18n-country-translations (Ruby)](https://github.com/onomojo/i18n-country-translations)** — Rails gem for country translations
- **[i18n-timezones-data](https://github.com/onomojo/i18n-timezones-data)** — Timezone name translations (36 locales)

## License

MIT
