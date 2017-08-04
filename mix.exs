defmodule Orisons.Collection.Mixfile do
  use Mix.Project

  def project do
    [
      app: :collection,
      version: "0.1.0",
      elixir: "~> 1.0",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      name: "Collection",
      source_url: "https://github.com/orisons/collection"
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.14", only: :dev, runtime: false}
    ]
  end

  defp description do
    """
    Collection is a helper for working with data.
    """
  end

  defp package do
    # These are the default files included in the package
    [
      name: :postgrex,
      files: ["lib", "priv", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Krystian Drożdżyński", "Jakub Jasiulewicz"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/orisons/collection"}
    ]
  end
end
