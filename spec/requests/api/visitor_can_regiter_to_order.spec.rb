RSpec.describe 'POST /api/auth', type: :request do
  describe 'with valid credentials' do
    before do
      post '/api/auth',
        params: {
          email:'user@mail.com',
          password: 'password',
          password_confirmation: 'password'
        },
        headers: headers
    end
    it 'is expected to return a 200 response' do
      expect(response).to have_http_status 200
    end

    it 'is expected to return a success message' do
      expect(response_json['message']).to eq 'You are successfully logged in!'
    end
  end
end