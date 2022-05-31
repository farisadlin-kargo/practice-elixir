defmodule PhoenixBasic.Repo.Migrations.CreateVehicles do
  use Ecto.Migration

  def change do
    create table(:vehicles) do
      add :license_plate, :string
      add :id, :integer

      timestamps()
    end
  end
end
