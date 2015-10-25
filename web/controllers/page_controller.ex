defmodule AllOnboard.PageController do
  use AllOnboard.Web, :controller

  def index(conn, _params) do
    redirect conn, to: "/cars"
  end
end
