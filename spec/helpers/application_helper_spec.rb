require 'rails_helper'

RSpec.describe ApplicationHelper, type: :helper do
  describe "full_title(page_title)" do
    example "the argument is set" do
      expect(full_title("test")).to eq("test - BIGBAG Store")
    end

    example "the argument is null" do
      expect(full_title(nil)).to eq "BIGBAG Store"
    end

    example "the argument is empty" do
      expect(full_title('')).to eq "BIGBAG Store"
    end
  end
end
