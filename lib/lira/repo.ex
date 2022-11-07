defmodule Lira.Repo do
  use Ecto.Repo,
    otp_app: :lira,
    adapter: Ecto.Adapters.Postgres
end
