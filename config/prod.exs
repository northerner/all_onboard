use Mix.Config

config :all_onboard, AllOnboard.Endpoint,
  http: [port: 4000],
  debug_errors: false,
  code_reloader: false,
  url: [host: "hackman.llamadigital.net"],
  server: true,
  cache_static_lookup: false,
  check_origin: false

# Configure your database
config :all_onboard, AllOnboard.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "all_onboard",
  password: "password",
  database: "all_onboard",
  hostname: "localhost",
  pool_size: 10
