RSpec.describe 'POST /api/auth', type: :request do
  describe 'with valid credentials' do
    before do
      post '/api/auth',
           params: {
             email: 'user@mail.com',
             password: 'password',
             password_confirmation: 'password'
           },
           headers: headers
    end
    it 'is expected to return a 200 response' do
      expect(response).to have_http_status 200
    end

    it 'is expected to return a success message' do
      expect(response_json['status']).to eq 'success'
    end
  end
  describe 'with invalid password confirmation' do
    before do
      post '/api/auth',
           params: {
             email: 'user@mail.com',
             password: 'password',
             password_confirmation: 'password1'
           },
           headers: headers
    end

    it 'is expected to return a 422 response' do
      expect(response).to have_http_status 422
    end

    it 'is expected to return an error message' do
      expect(response_json['errors']['full_messages']).to include("Password confirmation doesn't match Password")
    end
  end
  describe 'with invalid email' do
    before do
      post '/api/auth',
           params: {
             email: 'usermail.com',
             password: 'password',
             password_confirmation: 'password'
           },
           headers: headers
    end

    it 'is expected to return a 422 response' do
      expect(response).to have_http_status 422
    end

    it 'is expected to return an error message' do
      expect(response_json['errors']['full_messages']).to include("Email is not an email")
    end
  end
end
