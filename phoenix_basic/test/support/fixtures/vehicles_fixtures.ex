defmodule PhoenixBasic.VehiclesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `PhoenixBasic.Vehicles` context.
  """

  @doc """
  Generate a vehicle.
  """
  def vehicle_fixture(attrs \\ %{}) do
    {:ok, vehicle} =
      attrs
      |> Enum.into(%{
        id: 42,
        license_plate: "some license_plate"
      })
      |> PhoenixBasic.Vehicles.create_vehicle()

    vehicle
  end
end
