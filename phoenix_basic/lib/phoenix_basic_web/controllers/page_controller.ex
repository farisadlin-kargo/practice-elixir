defmodule PhoenixBasicWeb.PageController do
  use PhoenixBasicWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
