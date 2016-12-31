defmodule Rlc.AboutController do
  use Rlc.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def projects(conn, _params) do
    render conn, "projects.html"
  end
end