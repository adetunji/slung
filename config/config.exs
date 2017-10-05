# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :slung,
  ecto_repos: [Slung.Repo]

# Configures the endpoint
config :slung, SlungWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "XOy6nqGBP5uG9H1pYX5QNcS03QsIoG31xrMzqli2dWEMkkBZ4+sr1aT76V9rPWi9",
  render_errors: [view: SlungWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Slung.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
