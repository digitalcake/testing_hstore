# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :testing_hstore,
  ecto_repos: [TestingHstore.Repo]

# Configures the endpoint
config :testing_hstore, TestingHstoreWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "tPdYfA04J1hUZNIB1w+5+jyr/32Q2yRUIz3y7I1cm74N7KxyMxGl0RXalOOcMkCl",
  render_errors: [view: TestingHstoreWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TestingHstore.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
