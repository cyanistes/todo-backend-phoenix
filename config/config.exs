# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :todo_backend_phoenix,
  ecto_repos: [TodoBackendPhoenix.Repo]

# Configures the endpoint
config :todo_backend_phoenix, TodoBackendPhoenixWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "3vyt4r0FbR1kOJp0mB8xct0C8vrggwl47TL+OdsvIKO1QW9FgI2LWbaVAwy+M496",
  render_errors: [view: TodoBackendPhoenixWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TodoBackendPhoenix.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
