defmodule OtterBot.MixProject do
  use Mix.Project

  def project do
    [
      app: :otter_bot,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [extra_applications: [:logger]]
    [mod: {OtterBot, []}]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:alchemy, "~> 0.6.0", hex: :discord_alchemy}
    ]
  end
end
