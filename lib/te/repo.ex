defmodule Te.Repo do
  use Ecto.Repo,
    otp_app: :te,
    adapter: Ecto.Adapters.Postgres
end
