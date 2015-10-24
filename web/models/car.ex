defmodule AllOnboard.Car do
  use AllOnboard.Web, :model

  schema "cars" do
    field :make, :string
    field :model, :string
    field :beacon_major, :integer

    field :description
    field :layout
    field :fuel_type, :string
    field :gearing, :string
    field :intro_video_id, :string

    timestamps
  end

  @required_fields ~w(make model beacon_major)
  @optional_fields ~w(description layout fuel_type gearing intro_video_id)

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
