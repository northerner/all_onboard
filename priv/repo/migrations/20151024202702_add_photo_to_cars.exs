defmodule AllOnboard.Repo.Migrations.AddPhotoToCars do
  use Ecto.Migration

  def change do
    alter table(:cars) do
      add :photo, :string
    end
  end
end
