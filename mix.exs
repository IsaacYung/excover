Code.ensure_loaded?(Hex) and Hex.start

defmodule ExCover.Mixfile do
  use Mix.Project

  def project do
    [app: :excover,
     version: "1.5.1",
     elixir: ">= 0.1.0",
     package: package(),
     name: "ExCover - Coverage Reports for Elixir",
     source_url: "https://github.com/isaacyung/excover",
     homepage_url: "https://github.com/isaacyung/excover",
     docs: [readme: "README.md", extra: "CHANGELOG.md"],
     description: description(),
     test_coverage: [tool: ExCover.Task, coveralls: true, ignore_modules: []],
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [ applications: [:logger, :hackney]]
  end

  # List all dependencies in the format:
  #
  # {:foobar, git: "https://github.com/elixir-lang/foobar.git", tag: "0.1"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      {:hackney, "~> 1.9"},
      {:poison, "~> 1.5 or ~> 2.0 or ~> 3.1"},
      {:earmark, "~> 1.2", only: :dev},
      {:ex_doc, "~> 0.16.2", only: :dev},
      {:dialyze, "~> 0.2.1", only: :dev},
      {:credo, "~> 0.8.4", only: :dev},
      {:bunt, "~> 0.2.0"}
    ]
  end

  # Hex Package description
  defp description do
    """
    ExCover is an Elixir Coverage tool, Is provides code coverage analysis, with a good
    dashboard and console view, for an exciting and productive test maintenance and good
    detailing of modules and functions coverage data.
    """
  end

  # Hex Package definition
  defp package do
    [maintainers: ["Isaac Yung Lopes"],
     licenses: ["Apache 2.0"],
     links: %{"GitHub" => "https://github.com/isaacyung/excover"}
    ]
  end
end
