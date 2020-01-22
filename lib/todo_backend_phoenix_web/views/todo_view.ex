defmodule TodoBackendPhoenixWeb.TodoView do
  use TodoBackendPhoenixWeb, :view

  alias TodoBackendPhoenixWeb.Router.Helpers, as: Routes
  alias TodoBackendPhoenixWeb.Endpoint

  def render("index.json", %{todos: todos}) do
      Enum.map(todos, &todo_json/1)
  end

  def render("show.json", %{todo: todo}) do
    todo_json(todo)
  end

  def todo_json(todo) do
    %{
      title: todo.title,
      completed: todo.completed,
      url: Routes.todo_url(Endpoint, :show, todo.id)
    }
  end
end
