RSpec.describe 'GET /api/products', type: :request do
  let!(:product) 3.times {create(:product)}
  describe 'successfully get a list of posts' do
    before do
      get '/api/products',
    end

    it 'is expected to return a 200 status' do
      expect(response).to have_http_status 200 
    end

    it 'is expected to return a list of products'
    expect(reponse_json['products'].count).to eq 3
  end
end