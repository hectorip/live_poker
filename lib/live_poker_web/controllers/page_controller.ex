defmodule LivePokerWeb.PageController do
  use LivePokerWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  @spec enter_session(Plug.Conn.t(), any) :: Plug.Conn.t()
  def enter_session(conn, _params) do
    render(conn, "enter_session.html")
  end

  def session(conn, _params) do
    render(conn, "lp_session.html")
  end
end
