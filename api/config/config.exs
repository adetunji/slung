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
config :slung, Slung.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "V9Vtl3ViamjHgZa8RwX9porazRhQpDLa1C2tDk+x9H0eRqYqFKLDUjD5jDw8fIm9",
  render_errors: [view: Slung.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Slung.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :guardian, Guardian,
  issuer: "Slung",
  ttl: {30, :days},
  verify_issuer: true,
  serializer: Slung.GuardianSerializer
  
import_config "#{Mix.env}.exs"
