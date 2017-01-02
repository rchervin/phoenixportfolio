require IEx

defmodule Rlc.ProjectController do
  use Rlc.Web, :controller

  def index(conn, _params) do
    IEx.pry
    projects = File.read!(file) |> Poison.decode!()
    render conn, projects: projects
  end

  defp file() do
    Path.join(:code.priv_dir(:exjson), "projects.json")
  end
end