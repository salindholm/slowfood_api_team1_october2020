RSpec.describe Order, type: :model do
  describe 'Database table' do
    it { is_expected.to have_db_column :user_id }
  end

  describe 'Associations' do
    it { is_expected.to belong_to :user }
    it { is_expected.to have_many :order_items }
  end

  describe 'Factory' do
    it 'is expected to have valid factory bot' do
      expect(create(:order)).to be_valid
    end
  end
end
