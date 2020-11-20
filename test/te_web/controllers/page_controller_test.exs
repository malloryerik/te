defmodule TeWeb.PageControllerTest do
  use TeWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Welcome to Te!"
  end
end
