defmodule AllOnboard.Repo.Migrations.AddGreekIntroVideoId do
  use Ecto.Migration

  def change do
    alter table(:cars) do
      add :el_intro_video_id, :string
    end
  end
end
