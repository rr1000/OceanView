use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :oceanView, OceanView.Endpoint,
  secret_key_base: "glX9UBExwNjuS42IPYLE0jRBvK0gWYITqEkQir6Q6tXUvexoYGUfo3k4FI6XhWGW"

# Configure your database
config :oceanView, OceanView.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "oceanView_prod",
  size: 20 # The amount of database connections in the pool
