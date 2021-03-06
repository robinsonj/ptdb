# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :poke_team_db,
  ecto_repos: [PokeTeamDb.Repo]

# Configures the endpoint
config :poke_team_db, PokeTeamDb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "8EZl8Le4/IHmjguos1JLLXOpgNfk7/o827yNJlQzK0ZHydoGUU01473MhDaO/7xn",
  render_errors: [view: PokeTeamDb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PokeTeamDb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Set the templating engine for HTML templates.
config :phoenix, :template_engines,
  haml: PhoenixHaml.Engine

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
