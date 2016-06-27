defmodule PokeTeamDb.PageController do
  use PokeTeamDb.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
