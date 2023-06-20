defmodule AnonymousNameGenerator.MixProject do
  use Mix.Project
  @github_url "https://github.com/BeatConnect/anonymous_name_generator"

  def project do
    [
      app: :anonymous_name_generator,
      version: "0.2.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: "Create Heroku-like names.",
      source_url: @github_url,
      homepage_url: @github_url,
      files: ~w(mix.exs lib LICENSE.md README.md CHANGELOG.md),
      package: [
        maintainers: ["BeatConnect"],
        licenses: ["MIT"],
        links: %{
          "GitHub" => @github_url,
          "Original GitHub" => "https://github.com/pejrich/AnonymousNameGenerator"
        }
      ]
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
      {:ex_doc, "~> 0.29.4", only: :dev, runtime: false},
      {:dialyxir, "~> 1.3", only: [:dev], runtime: false}
    ]
  end

  def package do
    [
      name: "anon_name_generator",
      files: ["lib", "priv", "mix.exs", "README*", "readme*", "LICENSE*", "license*"],
      licenses: ["MIT"],
      links: %{"GitHub" =>  @github_url}
    ]
  end
end
