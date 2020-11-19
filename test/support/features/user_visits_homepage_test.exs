defmodule TeWeb.UserVisitsHomepageTest do
  use TeWeb.FeatureCase, async: true

  test "user can visit homepage", %{session: session} do
    session
    |> visit("/")
    |> assert_has(Query.css(".title", text: "Welcome to Te!"))
  end
end
