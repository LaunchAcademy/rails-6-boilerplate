require 'rails_helper'

feature "visitor sees a list of breeds" do
  scenario "sees a list of breed names" do
    p1 = Pet.create(name: "Dog", description: "Man's best friend")
    p2 = Pet.create(name: "Cat", description: "Sleeps all day")

    b1 = Breed.create(name: "Shiba Inu", description: "a bitcoin", color: "brown", rating: 1, pet: p1)
    b2 = Breed.create(name: "Poodle", description: "fancy", pet: p1)
    b3 = Breed.create(name: "Tabby", description: "a cat", pet: p2)

    visit pet_breeds_path(p1)

    expect(page).to have_content "Shiba Inu"
    expect(page).to have_content "Poodle"
    expect(page).not_to have_content "Cat"
    expect(page).not_to have_content "Tabby"
  end
end
