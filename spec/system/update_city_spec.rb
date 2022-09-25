require "rails_helper"

RSpec.describe "Updating a city", type: :system do
  scenario "valid inputs" do
    nyc = City.create!(name: "NYC")
    visit edit_city_path(id: nyc.id)
    fill_in "Name", with: "New Yor City"
    click_on "Update City"
    visit cities_path
    expect(page).to have_content("New Yor City")
  end
end
