defmodule Conjunction.Mixfile do
  use Mix.Project

  def project do
    [
      app: :conjunction,
      version: "1.0.2",
      elixir: "~> 1.3",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      description: description,
      package: package,
      deps: deps
    ]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [{:ex_doc, "~> 0.14.5", only: :dev}]
  end

  defp description do
    """
    Combine a list of strings with a conjunction
    """
  end

  defp package do
    [
      maintainers: ["dustinspecker"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/dustinspecker/conjunction"}
    ]
  end
end
