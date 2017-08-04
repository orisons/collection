defmodule Orisons.Collection.Mixfile do
  use Mix.Project

  def project do
    [
      app: :collection,
      version: "0.1.0",
      elixir: "~> 1.0",
      start_permanent: Mix.env == :prod,
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
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
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
