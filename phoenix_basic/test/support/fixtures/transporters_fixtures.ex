defmodule PhoenixBasic.TransportersFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `PhoenixBasic.Transporters` context.
  """

  @doc """
  Generate a transporter.
  """
  def transporter_fixture(attrs \\ %{}) do
    {:ok, transporter} =
      attrs
      |> Enum.into(%{
        id: 42,
        name: "some name",
        npwp_number: "some npwp_number",
        phone_number: "some phone_number"
      })
      |> PhoenixBasic.Transporters.create_transporter()

    transporter
  end
end
