defmodule PhoenixBasic.Vehicles.Vehicle do
  use Ecto.Schema
  import Ecto.Changeset

  schema "vehicles" do
    field :license_plate, :string

    timestamps()
  end

  @doc false
  def changeset(vehicle, attrs) do
    vehicle
    |> cast(attrs, [:license_plate])
    |> validate_required([:license_plate])
  end
end
