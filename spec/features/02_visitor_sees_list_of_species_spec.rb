require 'rails_helper'

feature "visitor sees a list of species" do
  scenario "sees a list of species names" do
    Species.create(name: "Dog", description: "Man's best friend")
    Species.create(name: "Cat", description: "Sleeps all day")

    visit species_index_path

    expect(page).to have_content "Dog"
    expect(page).to have_content "Cat"
  end
end
