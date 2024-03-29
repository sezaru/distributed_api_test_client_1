defmodule Main.MixProject do
  use Mix.Project

  def project do
    [
      app: :main,
      version: "0.1.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {Main.Application, []}
    ]
  end

  defp deps do
    [
      {:libcluster, "~> 3.1"},
      {:common, github: "sezaru/distributed_api_test_common"},
      {:api, github: "sezaru/distributed_api_test_core", sparse: "apps/api"}
    ]
  end
end
