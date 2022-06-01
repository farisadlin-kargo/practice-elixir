defmodule PhoenixBasic.Repo.Migrations.CreateVehicles do
  use Ecto.Migration

  def change do
    create table(:vehicles, primary_key: false) do
      add :id, primary_key: true, null: false, :license_plate, :string

      timestamps()
    end
  end
end
