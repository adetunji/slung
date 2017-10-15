defmodule Slung.Room do
  use Slung.Web, :model

  schema "rooms" do
    field :name, :string
    field :topic, :string
    many_to_many :users, Slung.User, join_through: "user_rooms"

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :topic])
    |> validate_required([:name])
    |> unique_constraint(:name)
  end
end
