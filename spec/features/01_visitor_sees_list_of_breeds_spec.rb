require 'rails_helper'

feature "visitor sees a list of breeds" do
  scenario "sees a list of breed names" do
    Breed.create(name: "Shiba Inu", description: "a bitcoin", color: "brown", rating: 1)
    Breed.create(name: "Poodle", description: "fancy")

    visit breeds_path

    expect(page).to have_content "Shiba Inu"
    expect(page).to have_content "Poodle"
  end
end
