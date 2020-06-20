defmodule LivePokerWeb.PageController do
  use LivePokerWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def enter_session(conn, _params) do
    render(conn, "enter_session.html")
  end

  def session(conn, _params) do
    render(conn, "lp_session.html")
  end
end
