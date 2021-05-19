require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'creation' do
    before do
      @user = User.create(email: 'test@test.com', password: 'azeaze', password_confirmation: 'azeaze', first_name: 'Jon', last_name: 'Snow')
    end

    it 'can be valid' do
      expect(@user).to be_valid
    end

    it 'cannot be valid' do
      @user.first_name = nil
      @user.last_name = nil
      expect(@user).not_to be_valid
    end
  end
end
