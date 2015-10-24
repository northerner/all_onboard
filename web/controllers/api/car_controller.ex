defmodule AllOnboard.API.CarController do
  use AllOnboard.Web, :controller

  alias AllOnboard.Car

  def index(conn, _params) do
    cars = Repo.all(Car)
    render(conn, cars: cars)
  end

  def show(conn, %{"id" => id}) do
    car = Repo.get!(Car, id)
    render(conn, car: car)
  end
end
