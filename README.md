# i18n-country-translations-data

Localized country name translations in 168 locales, sourced from CLDR.

## Structure

```
data/{locale}.yml    # Flat key-value YAML (258 ISO 3166-1 alpha-2 codes)
scripts/
  flatten-yaml.js    # Import from Ruby gem's nested YAML
  validate.js        # Validate all locale files
```

## Data Format

Each locale file is flat YAML with quoted keys (required to prevent YAML boolean coercion of codes like `NO`):

```yaml
"US": "Vereinigte Staaten"
"GB": "Vereinigtes Konigreich"
"NO": "Norwegen"
```

## Scripts

```bash
# Flatten from Ruby gem source (supports multiple directories)
node scripts/flatten-yaml.js ../i18n-country-translations/rails/locale/iso_639-1 ../i18n-country-translations/rails/locale/unicode_supported

# Validate all locale files
npm run validate
```

## License

MIT
