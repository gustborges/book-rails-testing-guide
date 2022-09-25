require "rails_helper"

RSpec.describe "Deleting a city", type: :system do
  scenario "success" do
    City.create!(name: "NYC")
    visit cities_path
    expect(page).to have_content("NYC")
    click_on "Show this city"
    click_on "Destroy this city"
    expect(page).not_to have_content("NYC")
  end
end
