defmodule AllOnboard.Car do
  use AllOnboard.Web, :model

  schema "cars" do
    field :make, :string
    field :model, :string
    field :beacon_major, :integer

    timestamps
  end

  @required_fields ~w(make model beacon_major)
  @optional_fields ~w()

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
