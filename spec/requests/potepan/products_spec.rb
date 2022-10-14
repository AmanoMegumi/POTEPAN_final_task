require 'rails_helper'

RSpec.describe "Potepan::Products", type: :request do
  describe "GET #show" do
    let(:product) { create(:product) }
    let(:image) { create(:image) }
    let(:filename) do
      filename = image.attachment_blob.filename
      "#{filename.base}#{filename.extension_with_delimiter}"
    end

    before do
      product.images << image
      get potepan_product_path(product.id)
    end

    it "returns http success" do
      expect(response).to have_http_status(200)
    end

    it "returns the product information" do
      expect(response.body).to include(product.name)
      expect(response.body).to include(product.display_price.to_s)
      expect(response.body).to include(product.description)
    end

    it "returns the product images" do
      expect(response.body).to include filename
    end
  end
end
