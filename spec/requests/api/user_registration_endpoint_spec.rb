RSpec.describe 'POST /api/auth/', type: :request do
  describe 'with valid credentials' do
    before do
      post '/api/auth/',
        params: {
          email: 'user@mail.com',
          password: 'password',
          password_confirmation: 'password' 
        }
    end

    it {
      expect(response).to have_http_status 200
    }

    it 'is expected to respond with a "status" message' do
      expect(JSON.parse(response.body)['status']).to eq 'success'
    end
  end
end