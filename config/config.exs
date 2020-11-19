# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :te,
  ecto_repos: [Te.Repo]

# Configures the endpoint
config :te, TeWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Img/QdWM1cEXiPMY9pZwKDpzSRobJN0vGCFT2Ql4rlAgea17U2eotbM7uw9/LAZB",
  render_errors: [view: TeWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Te.PubSub,
  live_view: [signing_salt: "if4r4nZX"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
