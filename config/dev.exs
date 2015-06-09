use Mix.Config

config :oceanView, OceanView.Endpoint,
  http: [port: 4000],
  debug_errors: true,
  code_reloader: true,
  cache_static_lookup: false,
  watchers: [node: ["node_modules/brunch/bin/brunch", "watch"]]

config :oceanView, OceanView.Endpoint,
  live_reload: [
    patterns: [
      ~r{priv/static/.*(js|css|png|jpeg|jpg|gif)$},
      ~r{web/views/.*(ex)$},
      ~r{web/templates/.*(eex)$}
    ]
  ]

config :logger, :console, format: "[$level] $message\n"

config :oceanView, OceanView.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "ryanSrich",
  database: "oceanView_dev",
  size: 10
