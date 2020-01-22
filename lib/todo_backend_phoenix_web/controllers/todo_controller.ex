defmodule TodoBackendPhoenixWeb.TodoController do
  use TodoBackendPhoenixWeb, :controller

  alias TodoBackendPhoenix.{Todo, Repo, ErrorView}
  def index(conn, _params) do
    todos = Repo.all(Todo)
    render(conn, "index.json", todos: todos)
  end

  def create(conn, todo_params) do
    changeset = Todo.changeset(%Todo{}, todo_params)
    case Repo.insert(changeset) do
      {:ok, todo} ->
        conn
        |> redirect(to: Routes.todo_path(conn, :show, todo))

      {:error, %Ecto.Changeset{} = _changeset} ->
        conn
        |> send_resp(422, "")
    end
  end

  def delete_all(conn, _params) do
    Repo.delete_all(Todo)
    conn
    |> send_resp(:ok, "")
  end

  def show(conn, %{"id" => id}) do
    todo = Repo.get(Todo, id)
    render(conn, "show.json", todo: todo)
  end
end
