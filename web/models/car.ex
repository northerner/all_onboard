defmodule AllOnboard.Car do
  use AllOnboard.Web, :model
  use Arc.Ecto.Model

  schema "cars" do
    field :make, :string
    field :model, :string
    field :beacon_major, :integer

    field :description
    field :layout
    field :fuel_type, :string
    field :gearing, :string
    field :intro_video_id, :string
    field :el_intro_video_id, :string

    field :photo_url, :string
    field :photo, AllOnboard.Photo.Type

    timestamps
  end

  @required_fields ~w(make model)
  @optional_fields ~w(beacon_major description layout fuel_type gearing intro_video_id el_intro_video_id photo_url)
  @optional_file_fields ~w(photo)
  @required_file_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
    |> cast_attachments(params, @required_file_fields, @optional_file_fields)
  end
end
