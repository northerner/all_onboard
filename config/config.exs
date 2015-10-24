# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :all_onboard, AllOnboard.Endpoint,
  url: [host: "0.0.0.0"],
  root: Path.dirname(__DIR__),
  secret_key_base: "xxxLL7tdcwWxL0cRcejnWWFc4fjRW4Limc0VHlwjvhGryMlrNEM0hT7Ka6REFr71",
  render_errors: [accepts: ~w(html json)],
  pubsub: [name: AllOnboard.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# Configure phoenix generators
config :phoenix, :generators,
  migration: true,
  binary_id: false
