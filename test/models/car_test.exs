defmodule AllOnboard.CarTest do
  use AllOnboard.ModelCase

  alias AllOnboard.Car

  @valid_attrs %{beacon_major: 42, make: "some content", model: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Car.changeset(%Car{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Car.changeset(%Car{}, @invalid_attrs)
    refute changeset.valid?
  end
end
