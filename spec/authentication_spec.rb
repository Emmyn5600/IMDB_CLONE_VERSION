require 'rails_helper'

RSpec.describe 'Signing Up', type: :feature do
  scenario 'Sign up with valid inputs' do
    visit new_user_registration_path
    fill_in 'Enter Email', with: 'test@gmail.com'
    fill_in 'Enter Password (6 characters minimum)', with: '123456'
    fill_in 'Repeat Password', with: '123456'
    click_on 'Sign up', match: :first
    sleep(3)
    visit root_path
    expect(page).to have_content('IMDB')
  end

  scenario 'Sign up with invalid inputs' do
    visit new_user_registration_path
    fill_in 'Enter Email', with: 'test.com'
    fill_in 'Enter Password (6 characters minimum)', with: '12345678'
    fill_in 'Repeat Password', with: '111000'
    click_on 'Sign up', match: :first
    sleep(3)
    visit root_path
    expect(page).to_not have_content('text')
  end
end

RSpec.describe 'Loggin In', type: :feature do
  let(:user) { User.create(email: 'test@test.com', password: '123456') }
  scenario 'Log in with valid inputs' do
    visit new_user_session_path
    fill_in 'Email Address', with: user.email
    fill_in 'Password', with: user.password
    click_on 'Log in'
    sleep(3)
    expect(page).to have_content('IMDB')
  end

  scenario 'Log in with invalid inputs' do
    visit new_user_session_path
    fill_in 'Email Address', with: 'cool@gmail.com'
    fill_in 'Password', with: user.password
    click_on 'Log in'
    sleep(3)
    expect(page).to_not have_content('cool')
  end
end