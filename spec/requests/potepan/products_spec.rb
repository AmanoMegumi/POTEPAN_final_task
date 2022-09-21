require 'rails_helper'
require 'spree/testing_support/factories'

RSpec.describe "Potepan::Products", type: :request do
  describe "GET #show" do
    let(:product) { create(:product) }

    before do
      get potepan_product_path(product.id)
    end

    it "returns http success" do
      expect(response).to have_http_status(200)
    end

    it "shows the product information" do
      expect(response.body).to include(product.name)
      expect(response.body).to include(product.display_price.to_s)
      expect(response.body).to include(product.description)
    end

    it "shows the product images" do
      product.images.each { |image| expect(response.body).to include image.attachment(:product) }
    end
  end
end
