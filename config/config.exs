# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :rlc,
  ecto_repos: [Rlc.Repo]

# Configures the endpoint
config :rlc, Rlc.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "zyDckw0Dg2cxG4ai3pw/hh4zkQXwB88qQsJpKWQZ2d37gCkJ+7qUKBhTn8+UiwxH",
  render_errors: [view: Rlc.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Rlc.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# Enables haml
config :phoenix, :template_engines,
  haml: PhoenixHaml.Engine