require 'spec_helper'
require 'rails_helper'

feature 'Sign out' do

    let!(:test_user) {User.create!(email: "test_user@mail.com",
                                 password: "password",
                                 first_name: "test")}

    scenario 'Signed-in User signs out' do
        visit '/'

        click_on 'Sign In'

        fill_in 'Email', with: "test_user@mail.com"
        fill_in 'Password', with: "password"

        click_button 'Log in'

        expect(page).to have_content('Sign Out')

        click_on 'Sign Out'

        expect(page).to have_content('Signed out successfully.')
        expect(page).to have_content('Sign Up')
    end
end