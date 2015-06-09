use Mix.Config

config :oceanView, OceanView.Endpoint,
  http: [port: 4001],
  server: false

config :logger, level: :warn

config :oceanView, OceanView.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "ryanSrich",
  database: "oceanView_test",
  size: 1