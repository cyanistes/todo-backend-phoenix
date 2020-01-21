defmodule TodoBackendPhoenixWeb.PageController do
  use TodoBackendPhoenixWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
