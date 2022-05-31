defmodule PhoenixBasic.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_basic,
    adapter: Ecto.Adapters.Postgres
end
