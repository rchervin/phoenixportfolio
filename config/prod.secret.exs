use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or you later on).
config :rlc, Rlc.Endpoint,
  secret_key_base: "b14XrggIx1JdbEA4r/vE7oO5jYn+vmVP4uI/4kWcO0rrPOSrtNN7JtPVVbEApqs0"

# Configure your database
config :rlc, Rlc.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "rlc_prod",
  pool_size: 20
