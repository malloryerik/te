defmodule TeWeb.UserVisitsRoomsPageTest do
  use TeWeb.FeatureCase, async: true

  test("user visits room page to see a list of rooms", %{session: session}) do
    room = insert(:chat_room)

    session
    |> visit(Routes.chat_room_path(@endpoint, :index))
    |> assert_has(Query.css(".room", text: room.name))
  end
end
