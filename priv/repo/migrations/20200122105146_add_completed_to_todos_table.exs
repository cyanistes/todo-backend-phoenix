defmodule TodoBackendPhoenix.Repo.Migrations.AddCompletedToTodosTable do
  use Ecto.Migration

  def change do
    alter table("todos") do
      add :completed, :boolean, default: false
    end
  end
end
