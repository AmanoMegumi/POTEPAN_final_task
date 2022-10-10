require 'rails_helper'
RSpec.describe ApplicationHelper, type: :helper do
  BASE_TITLE = "BIGBAG Store"

  example "the argument is set" do
    expect(full_title("test")).to eq("test - #{BASE_TITLE}")
  end

  example "the argument is null" do
    expect(full_title(nil)).to eq BASE_TITLE
  end

  example "the argument is empty" do
    expect(full_title('')).to eq BASE_TITLE
  end
end
