defmodule TodoBackendPhoenix.Repo.Migrations.AddOrderToTodos do
  use Ecto.Migration

  def change do
    alter table("todos") do
      add :order, :integer, default: 0
    end
  end
end
