defmodule Rlc.PageController do
  use Rlc.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def contact(conn, _params) do
    render conn, "contact.html"
  end
end
