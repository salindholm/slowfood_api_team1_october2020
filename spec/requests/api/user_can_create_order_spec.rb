RSpec.describe 'POST /api/orders', type: :request do
  let!(:product) { create(:product, name: 'Margarita') }
  let!(:product2) { create(:product, name: 'Vesuvio') }
  let!(:user) { create(:user) }
  let(:headers) { user.create_new_auth_token }
  describe '' do
    before do
      post '/api/orders',
           params: {
             product_id: product.id
           },
           headers: headers
    end
    it 'is expected to return a 201 status' do
      expect(response).to have_http_status 201
    end

    it 'is exptected to return success message' do
      expect(response_json['message']).to eq 'The product was successfully added to your order!'
    end

    it 'is exptected to have a product' do
      expect(response_json['items'].count).to eq 1
    end

    it 'is exptected to have an id of the product' do
      expect(response_json['items'][0]['product_id']).to eq product.id
    end
  end
end
