defmodule I18nCountryTranslationsData.MixProject do
  use Mix.Project

  @version File.read!("VERSION") |> String.trim()

  def project do
    [
      app: :i18n_country_translations_data,
      version: @version,
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      description: "CLDR-sourced country name translations for 257 territory codes across 168 locales (data package)",
      package: package(),
      deps: []
    ]
  end

  def application, do: []

  defp package do
    [
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/onomojo/i18n-country-translations-data"},
      files: ["lib", "data", "mix.exs", "README.md", "LICENSE", "VERSION"]
    ]
  end
end
