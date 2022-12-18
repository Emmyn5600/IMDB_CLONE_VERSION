# require 'rails_helper'

# RSpec.describe 'Create Movie', type: :feature do
#   let(:user) { User.create(email: 'cool@.com', password: '123456', role: 'admin') }
#   let(:movie) do
#     Movie.create(category_id: 1, title: 'The loft', description: "movie is epic",

#                  movie_image: 'https://static8.depositphotos.com/1338574/829/i/600/depositphotos_8293001-stock-photo-the-number-1-in-gold.jpg',
#                  user_id: user.id)
#   end
#   describe 'Validations' do
#     context 'when valid' do
#       it { expect(movie).to be_valid }
#     end

#     it 'should allow valid name' do
#       movie.Title = 'testest'
#       expect(movie).to be_valid
#     end

#     it 'allow valid name' do
#       movie.Title = 'testname'
#       expect(movie).to be_valid
#     end

#     it ' allow valid user_id' do
#       movie.user_id = nil
#       expect(movie).to_not be_valid
#     end
#   end
# end