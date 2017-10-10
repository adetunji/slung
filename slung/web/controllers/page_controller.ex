defmodule Slung.PageController do
  use Slung.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
