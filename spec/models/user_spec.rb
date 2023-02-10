require 'rails_helper'

RSpec.describe 'User sign up' do
  before(:each) do
    @user = User.new(name: 'Test', email: 'test@test.com', password: '123456')
    @user.save
  end

  it 'is created succesfully' do
    expect(@user).to be_valid
  end

  it 'name is required' do
    @user.name = nil
    expect(@user).not_to be_valid
  end

  it 'email is required' do
    @user.email = nil
    expect(@user).not_to be_valid
  end

  it 'password is required' do
    @user.password = ''
    expect(@user).not_to be_valid
  end

  describe 'validations' do
    it 'is not valid without a name' do
      expect(User.new).to_not be_valid
    end
  end
end
