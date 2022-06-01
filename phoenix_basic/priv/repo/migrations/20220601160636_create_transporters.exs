defmodule PhoenixBasic.Repo.Migrations.CreateTransporters do
  use Ecto.Migration

  def change do
    create table(:transporters, primary_key: false) do
      add :id, primary_key: true, null: false
      add :name, :string
      add :phone_number, :string
      add :npwp_number, :string
      add :status, Ecto.Enum, values: [:not_validated, :validated], null: :not_validated
      # add :status, :string


      timestamps()
    end
  end
end
