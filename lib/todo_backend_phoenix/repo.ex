defmodule TodoBackendPhoenix.Repo do
  use Ecto.Repo,
    otp_app: :todo_backend_phoenix,
    adapter: Ecto.Adapters.Postgres
end
