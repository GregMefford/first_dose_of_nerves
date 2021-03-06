defmodule Gibson.Mixfile do
  use Mix.Project

  def project do
    [app: :gibson,
     version: "0.0.1",
     build_path: "../../_build",
     config_path: "../../config/config.exs",
     deps_path: "../../deps",
     lockfile: "../../mix.lock",
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  def application do
    [applications: [:logger, :crypto, :nerves, :nerves_io_neopixel],
     mod: {Gibson, []}]
  end

  defp deps do
    [
      {:nerves_io_neopixel, "~> 0.2.0"},
      {:nerves, github: "nerves-project/nerves"}
    ]
  end
end
