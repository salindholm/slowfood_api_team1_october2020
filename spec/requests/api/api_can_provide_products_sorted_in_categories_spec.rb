RSpec.describe "GET/api/products" do
  let!(:category) {create(:category, title: "veggie")}
  let!(:products) {2.times{create(:product, category: category)}}


  describe "successfully get products sorted in categories" do
    before do
      get "/api/categories/#{category.title}"
    end

    it "is expected to return a 200 response" do
      expect(response).to have_http_status 200
    end
  
    it "is expected to return all categories" do
      expect(response_json["category"]["products"].count).to eq 2
    end

    it "is expected to return the title in category" do
      expect(response_json["category"]["title"]).to eq "veggie"
    end

    it "is expected to show title of one of the products" do
      expect(response_json['category']['products'][1]['title']).to eq 'MyString'
    end
  end
end