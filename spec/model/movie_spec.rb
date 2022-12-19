# require 'rails_helper'

# describe 'the creating movie process', type: :feature do
#   before :each do
#     User.create(email: 'user1@gmail.com', password: 'password', role: 'admin')
#   end

#   it 'creates a movie' do
#     visit new_user_session_path
#     fill_in 'Email Address', with: 'user1@gmail.com'
#     fill_in 'Password', with: 'password'
#     click_on 'Log in'
#     sleep(3)
#     visit root_path
#     click_on 'Manage the Movies'
#     have_select('#Action', :options => ['Action', 'Love', 'Holyhood', 'Comedy'])
#     fill_in 'Movie Title', with: 'Anything'
#     fill_in 'Description', with: 'Anything'
#     # fill_in image { Rack::Test::UploadedFile.new(Rails.root.join('spec/files/images/download.png'), 'image/png') }
#     have_attached_file(:movie_image)
#     # fill_in 'movie[movie_image]', with: "download.png"
#     click_on 'Create Movie'
#     expect(page).to have_text('Movie was successfully created.')
#   end

# end

# In rspec, test if the image has been attached using rspec.

# Path: spec/models/movie_spec.rb
require 'rails_helper'

RSpec.describe Movie, type: :model do
    it { should have_category_id(:category_id) }
    it { should have_title(:title) }
    it { should have_description(:description) }
  it { should have_attached_file(:movie_image) }
  it { should validate_attachment_content_type(:movie_image).
                allowing('image/png', 'image/gif').
                rejecting('text/plain', 'text/xml') }
end

