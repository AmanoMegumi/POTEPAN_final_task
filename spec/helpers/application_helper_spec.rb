require 'rails_helper'
RSpec.describe ApplicationHelper, type: :helper do
  base_title = "BIGBAG Store"
  let(:product) { create(:product) }

  example "the argument is set" do
    expect(full_title(product.name)).to eq("#{product.name} - #{base_title}")
  end

  example "the argument is null or empty" do
    expect(full_title('')).to eq(base_title)
    expect(full_title(nil)).to eq(base_title)
  end
end
