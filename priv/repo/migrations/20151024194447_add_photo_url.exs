defmodule AllOnboard.Repo.Migrations.AddPhotoUrl do
  use Ecto.Migration

  def change do
    alter table(:cars) do
      add :photo_url, :string
    end
  end
end
