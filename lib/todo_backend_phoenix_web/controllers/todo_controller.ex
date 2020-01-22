defmodule TodoBackendPhoenixWeb.TodoController do
  use TodoBackendPhoenixWeb, :controller

  def index(conn, _params) do
    render(conn, "index.json")
  end
end
