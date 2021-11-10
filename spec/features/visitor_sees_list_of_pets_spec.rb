require 'rails_helper'

feature "visitor sees a list of pets" do
  scenario "sees a list of pets names" do
    Pet.create(name: "Dog", description: "Man's best friend")
    Pet.create(name: "Cat", description: "Sleeps all day")

    visit pets_path

    expect(page).to have_content "Dog"
    expect(page).to have_content "Cat"
  end
end
