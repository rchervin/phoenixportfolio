defmodule Rlc.ProjectView do
  use Rlc.Web, :view

  def render("index.json", %{projects: projects}) do
    render_many(projects, __MODULE__, "project.json")
  end
end