require 'spec_helper'
require 'rails_helper'

feature "Sign in" do

  let!(:test_user) {User.create!(email: "test_user@mail.com",
                                 password: "password",
                                 first_name: "test")}

  scenario 'User signs in' do

    visit '/'

    click_on 'Sign In'

    fill_in 'Email', with: "test_user@mail.com"
    fill_in 'Password', with: "password"

    click_button 'Log in'
  
    expect(page).to have_content('Signed in successfully.')
    expect(page).to have_content('Sign Out')
  end
end