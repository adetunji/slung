defmodule Slung.RoomView do
  use Slung.Web, :view

  def render("index.json", %{rooms: rooms}) do
    %{data: render_many(rooms, Slung.RoomView, "room.json")}
  end

  def render("show.json", %{room: room}) do
    %{data: render_one(room, Slung.RoomView, "room.json")}
  end

  def render("room.json", %{room: room}) do
    %{id: room.id,
      name: room.name,
      topic: room.topic}
  end
end
