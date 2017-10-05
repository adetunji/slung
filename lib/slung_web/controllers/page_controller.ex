defmodule SlungWeb.PageController do
  use SlungWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
