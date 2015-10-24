defmodule AllOnboard.API.CarView do
  use AllOnboard.Web, :view
  @attributes ~W(id make model beacon_major)

  def render("index.json", %{cars: cars}) do
    render_many(cars, AllOnboard.API.CarView, "show.json")
  end

  def render("show.json", %{car: car}) do
    %{
      id: car.id,
      make: car.make,
      model: car.model,
      beacon_major: car.beacon_major,
      description: car.description,
      layout: car.layout,
      fuel_type: car.fuel_type,
      gearing: car.gearing,
      intro_video_id: car.intro_video_id,
      photo_url: AllOnboard.Photo.url({car.photo, car})
    }
  end

end
