require 'rails_helper'

describe "Edit paper page", type: :feature do
  before do
    @paper = create :paper
  end
  it "Should render" do
    visit edit_paper_path(@paper)
  end

 
  

end