require 'spec_helper'
require 'rails_helper'

feature "Sign up" do
  scenario 'User signs up' do
    visit '/'

    click_on 'Sign Up'

    fill_in 'Email', with: 'test@email.com'
    fill_in 'Password', with: 'password123'
    fill_in 'Password confirmation', with: 'password123'

    click_button 'Sign up'

    expect(page).to have_content('Sign Out')
    expect(page).not_to have_content('Sign In')
  end
end