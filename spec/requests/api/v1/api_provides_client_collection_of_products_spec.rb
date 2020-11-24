RSpec.describe "GET/api/v1/products" do
    let!(:products){3.times{create(:product)}}

    describe "successfully get list of products" do
        before do
            get "/api/v1/products"
        end

        it "expected to return a 200 response" do
            expect(response).to have_http_status 200
        end

        it "expected to return all products" do
            expect(response_json["products"].count).to eq 3
        end
    end
end 