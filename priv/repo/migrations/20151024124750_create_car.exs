defmodule AllOnboard.Repo.Migrations.CreateCar do
  use Ecto.Migration

  def change do
    create table(:cars) do
      add :make, :string
      add :model, :string
      add :beacon_major, :integer

      timestamps
    end

  end
end
