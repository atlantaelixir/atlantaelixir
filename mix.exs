defmodule Atlantaelixir.Mixfile do
  use Mix.Project

  def project do
    [ app: :atlantaelixir,
      version: "0.0.1",
      elixir: "~> 0.11.0",
      dynamos: [Atlantaelixir.Dynamo],
      compilers: [:elixir, :dynamo, :app],
      env: [prod: [compile_path: "ebin"]],
      compile_path: "tmp/#{Mix.env}/atlantaelixir/ebin",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [ applications: [:cowboy, :dynamo],
      mod: { Atlantaelixir, [] } ]
  end

  defp deps do
    [ { :cowboy, github: "extend/cowboy" },
      { :dynamo, "0.1.0-dev", github: "elixir-lang/dynamo" } ]
  end
end
