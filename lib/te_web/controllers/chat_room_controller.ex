defmodule TeWeb.ChatRoomController do
  use TeWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
