defmodule AllOnboard.Repo.Migrations.AddPhotoDescriptionLayoutFuelTypeGearingAndIntroVideoIdToCars do
  use Ecto.Migration

  def change do
    alter table(:cars) do
      add :description, :text
      add :layout, :text
      add :fuel_type, :string
      add :gearing, :string
      add :intro_video_id, :string
    end
  end
end
