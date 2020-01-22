defmodule TodoBackendPhoenixWeb.Router do
  use TodoBackendPhoenixWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug CORSPlug, origin: "*"
    plug :accepts, ["json"]
  end

  scope "/", TodoBackendPhoenixWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  scope "/api/v1", TodoBackendPhoenixWeb do
    pipe_through :api

    resources "/todos", TodoController, only: [:index]
    options "/todos", TodoController, :options

  end

  # Other scopes may use custom stacks.
  # scope "/api", TodoBackendPhoenixWeb do
  #   pipe_through :api
  # end
end
