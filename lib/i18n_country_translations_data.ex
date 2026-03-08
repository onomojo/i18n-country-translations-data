defmodule I18nCountryTranslationsData do
  @moduledoc """
  Data package providing country name translation JSON files.
  """

  @doc """
  Returns the absolute path to the data directory containing locale JSON files.
  """
  def data_dir do
    :i18n_country_translations_data
    |> :code.lib_dir()
    |> to_string()
    |> Path.join("data")
  end
end
