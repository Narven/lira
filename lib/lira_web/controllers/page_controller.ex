defmodule LiraWeb.PageController do
  use LiraWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
