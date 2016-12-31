defmodule Rlc.Router do
  use Rlc.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Rlc do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/about", AboutController, :index
    get "/projects", AboutController, :projects
    get "/contact", PageController, :contact
  end

  # Other scopes may use custom stacks.
  # scope "/api", Rlc do
  #   pipe_through :api
  # end
end
