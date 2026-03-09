# i18n-country-translations-data

> Localized country name translations in 168 locales — CLDR-sourced, framework-agnostic JSON.

This repository contains the canonical translation data for country and territory names, covering **257 ISO 3166-1 alpha-2 codes** across **168 locales**. The data is sourced from the [Unicode CLDR](https://cldr.unicode.org/) and stored as flat, human-readable JSON — easy to consume from any language or framework.

## Who is this for?

- **Library authors** building country/locale tools in any language (Python, PHP, Go, Rust, etc.)
- **Ruby developers** using the [i18n-country-translations](https://github.com/onomojo/i18n-country-translations) gem
- **JavaScript developers** — see the ready-to-use NPM package: [i18n-country-translations](https://github.com/onomojo/i18n-country-translations-js)
- **Go developers** — import as a Go module with embedded data via [i18n-country-translations-go](https://github.com/onomojo/i18n-country-translations-go)
- **Rust developers** — available as a crate: [i18n-country-translations](https://crates.io/crates/i18n-country-translations) ([repo](https://github.com/onomojo/i18n-country-translations-rs))
- **Elixir developers** — available on hex.pm: [i18n_country_translations](https://hex.pm/packages/i18n_country_translations) ([repo](https://github.com/onomojo/i18n-country-translations-ex))
- **Anyone** who needs accurate country names in languages beyond the typical 30-50 that most libraries support

## Why 168 locales?

Most translation datasets cover 30-80 major languages and stop there. That leaves hundreds of millions of speakers without support — Punjabi (113M speakers), Telugu (82M), Tamil (78M), Gujarati (56M), Yoruba (45M), and dozens more.

This dataset doesn't cut corners. If CLDR has the data, it's here.

## Data Format

Each locale is a single JSON file with flat key-value pairs — no nesting, no complex structure:

```json
// data/de.json
{
  "US": "Vereinigte Staaten",
  "GB": "Vereinigtes Königreich",
  "DE": "Deutschland",
  "JP": "Japan",
  "NO": "Norwegen"
}
```

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
  en.json             # English (reference locale)
  de.json             # German
  ja.json             # Japanese
  zh-TW.json          # Traditional Chinese
  ...                 # 168 locale files total
scripts/
  validate.js         # Validate consistency across all locale files
data.go               # Go embed directive
go.mod                # Go module definition
```

## Validation

Every locale file is validated to ensure:
- No empty or null values
- Reasonable key count per file

```bash
npm run validate
# Validated 168 locale files (en has 258 keys)
# ✓ No critical errors
```

## Usage

### Go

```go
import data "github.com/onomojo/i18n-country-translations-data"

// data.FS is an embed.FS containing data/*.json
```

### Ruby

Available as a gem: `gem install i18n-country-translations-data`

### Rust

Available as a crate on [crates.io](https://crates.io/crates/i18n-country-translations):

```toml
# Cargo.toml
[dependencies]
i18n-country-translations = "*"
```

### Node.js

Available as an npm package or via the higher-level [i18n-country-translations](https://github.com/onomojo/i18n-country-translations-js) package.

### Elixir

Available on [hex.pm](https://hex.pm/packages/i18n_country_translations):

```elixir
# mix.exs
{:i18n_country_translations, "~> 0.1"}
```

## Data Source

All translations come from the [Unicode CLDR](https://cldr.unicode.org/) (Common Locale Data Repository) — the industry-standard source used by every major platform including iOS, Android, Chrome, and Java. This ensures translations are accurate, consistent, and maintained by native speakers through Unicode's established review process.

## Related

- **[i18n-country-translations (NPM)](https://github.com/onomojo/i18n-country-translations-js)** — Ready-to-use JavaScript/TypeScript package built from this data
- **[i18n-country-translations (Ruby)](https://github.com/onomojo/i18n-country-translations)** — Rails gem for country translations
- **[i18n-country-translations (Go)](https://github.com/onomojo/i18n-country-translations-go)** — Go module for country translations
- **[i18n-country-translations (Rust)](https://github.com/onomojo/i18n-country-translations-rs)** — Rust crate for country translations ([crates.io](https://crates.io/crates/i18n-country-translations))
- **[i18n-country-translations (Elixir)](https://github.com/onomojo/i18n-country-translations-ex)** — Elixir package for country translations ([hex.pm](https://hex.pm/packages/i18n_country_translations))
- **[i18n-timezones-data](https://github.com/onomojo/i18n-timezones-data)** — Timezone name translations (36 locales)

## License

MIT
