RSpec.describe User, type: :model do
  describe 'Database table' do
    it { is_expected.to have_db_column :email }
    it { is_expected.to have_db_column :encrypted_password }
    it { is_expected.to have_db_column :tokens }
  end
  describe 'Factory' do
    it 'is expected to have valid factory bot' do
      expect(create(:user)).to be_valid
    end
  end

  describe 'Associations' do
    it { is_expected.to have_many :orders }
  end
end
