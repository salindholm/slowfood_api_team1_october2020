RSpec.describe 'GET /api/orders', type: :request do
  let!(:product) { create(:product, name: 'Margarita') }
  let!(:product2) { create(:product, name: 'Vesuvio') }
  let!(:user) { create(:user) }
  let(:headers) { user.create_new_auth_token }
  describe '' do
    before do
      get '/api/orders',
          params: {
            product_id: product.id
          },
          headers: headers
    end
    it 'is expected to return a 200 status' do
      expect(response).to have_http_status 200
    end

    it 'is exptected to return success message' do
      expect(response_json['message']).to eq 'The product has successfully been added to your order!'
    end
  end
end
