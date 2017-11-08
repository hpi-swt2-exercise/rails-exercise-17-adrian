require 'rails_helper'

describe "Author page", type: :feature do
  before do
  	@alan = create :author
  end
  it "should show alan" do
    visit author_path(@alan)
  end

  
end