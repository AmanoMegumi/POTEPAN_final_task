require 'rails_helper'
require 'spree/testing_support/factories'

RSpec.describe "Potepan::Products", type: :request do
  describe "GET #show" do
    let(:product) { create(:product) }

    it "returns http success" do
      get potepan_product_path(product.id)
      expect(response).to have_http_status(200)
    end
  end
end
