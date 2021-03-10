RSpec.describe 'PUT /api/orders', type: :request do
  let(:user) { create(:user) }
  let(:headers) { user.create_new_auth_token }
  let(:existing_order) { user.orders.create }
  let!(:product) { create(:product) }
  let!(:product_to_add) { create(:product, name: 'Vesuvio') }
  describe '' do
    before do
      existing_order.order_items.create(product: product)
      put "/api/orders/#{existing_order.id}",
          params: { product_id: product_to_add.id },
          headers: headers
    end
    it 'is expected to return a 201 response status' do
      expect(response).to have_http_status 201
    end

    it 'is expected to return a success message' do
      expect(response_json['message']).to eq 'The product was successfully added to your order!'
    end

    it 'is exptected to have a product' do
      expect(response_json['items'].count).to eq 2
    end

    it 'is exptected to have an id of the product' do
      expect(response_json['items'][1]['product_id']).to eq product_to_add.id
    end
  end
end
