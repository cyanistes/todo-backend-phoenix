use Mix.Config

# Configure your database
config :todo_backend_phoenix, TodoBackendPhoenix.Repo,
  username: "postgres",
  password: "postgres",
  database: "todo_backend_phoenix_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :todo_backend_phoenix, TodoBackendPhoenixWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
