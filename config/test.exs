use Mix.Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :te, Te.Repo,
  username: "postgres",
  password: "postgres",
  database: "te_test#{System.get_env("MIX_TEST_PARTITION")}",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :te, TeWeb.Endpoint,
  http: [port: 4002],
  server: true

# Print only warnings and errors during test.
config :logger, level: :warn

# Only use Ecto's sandbox in tests.
config :te, :sql_sandbox, true

# Use Wallaby Chrome instead of Selenium.
config :wallaby, driver: Wallaby.Chrome
