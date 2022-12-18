require 'rails_helper'

describe 'the signin process', type: :feature do
  it 'should not save user without email' do
    user = User.new(password: '1234141')
    expect(user.save).to be(false)
  end

  it 'should not save user without password' do
    user = User.new(email: 'emmy@mail.com')
    expect(user.save).to be(false)
  end

  it 'should save user with all fields' do
    user = User.new(email: 'emmy@mail.com', password: '31334134')
    user.save
    expect(user.email).to eq('emmy@mail.com')
  end
end