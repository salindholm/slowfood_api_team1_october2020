RSpec.describe Product, type: :model do
  describe 'is expected to have db columns' do
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column :description }
    it { is_expected.to have_db_column :price }
  end

  describe 'is expected to have validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :description }
    it { is_expected.to validate_presence_of :price }
  end

  describe 'Factory Bot' do
    it 'is expected to have a valid factory bot' do
      expect(create(:product)).to be_valid
    end
  end
end
