defmodule PlugQuiche.MixProject do
  use Mix.Project

  @version "0.1.0"
  @source_url "https://github.com/BobbieBarker/plug_quiche"

  def project do
    [
      app: :plug_quiche,
      version: @version,
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      dialyzer: [plt_add_apps: [:plug, :phoenix]],
      package: package(),
      docs: docs(),
      name: "PlugQuiche",
      source_url: @source_url
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:plug, "~> 1.16"},
      {:phoenix, "~> 1.7", optional: true},
      {:quiche_erl, github: "BobbieBarker/quiche_erl", optional: true},
      {:dialyxir, "~> 1.4", only: :dev, runtime: false},
      {:credo, "~> 1.7", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.34", only: :dev, runtime: false}
    ]
  end

  defp package do
    [
      description: "HTTP/3 adapter for Phoenix and Plug via Cloudflare quiche",
      licenses: ["Apache-2.0"],
      links: %{"GitHub" => @source_url}
    ]
  end

  defp docs do
    [
      main: "readme",
      extras: ["README.md", "LICENSE"],
      source_url: @source_url
    ]
  end
end
