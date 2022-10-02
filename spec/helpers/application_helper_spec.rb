require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the ApplicationHelper. For example:
#
# describe ApplicationHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe ApplicationHelper, type: :helper do
  base_title = "BIGBAG Store"
  let(:product) { create(:product) }

  example "the argument is set" do
    expect(full_title(product.name)).to eq(product.name + " - " + base_title)
  end

  example "the argument is null or empty" do
    expect(full_title('')).to eq(base_title)
  end
end
