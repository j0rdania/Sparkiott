require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validations' do
    let(:user_wo_name) {User.create(email: 'ee', password: 'kk')}
    let(:user_wo_email) {User.create(name: 'ee', password: 'kk')}
    let(:user_wo_pwd) {User.create(email: 'ee', name: 'kk')}
    let(:valid_user) {User.create(email: 'mary@smith.com', password: 'pw', name: 'Mary')}

    it 'is not valid without a name' do
      expect(user_wo_name).to_not be_valid
    end
    it 'is not valid without an email' do
      expect(user_wo_email).to_not be_valid
    end
    it 'is not valid without a password' do
      expect(user_wo_pwd).to_not be_valid
    end
    it 'is valid with name, email and password' do
      expect(valid_user).to be_valid
    end
  end
end
