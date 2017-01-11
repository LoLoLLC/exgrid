defmodule ExGrid.Mixfile do
  use Mix.Project

  def project do
    [app: :exgrid,
      version: "0.2.4",
      elixir: "~> 1.2.0 or ~> 1.3.0",
      description: description,
      package: package,
      deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:httpotion]]
  end

  defp deps do
    [ {:ibrowse, "~> 4.2.0"},
      {:httpotion, "~> 2.1 or ~> 3.0"},
      {:json, "~> 0.3.2"}
    ]
  end

  def description do
    "Elixir bindings for SendGrid's REST API"
  end

  def package do
    [
      contributors: ["Bradley Smith"],
      licenses: ["The MIT License"],
      links: %{
        "GitHub" => "https://github.com/bradleyd/exgrid"
      }
    ]
  end
end
