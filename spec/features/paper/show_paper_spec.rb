require 'rails_helper'

describe "papers index page", type: :feature do
  
  before do
    @paper = create :paper_with_author
  end

  it "should render" do
    visit paper_path(@paper)
  end

  it "should show all authors" do
    visit paper_path(@paper)
    expect(page).to have_content(@paper.authors[0].first_name)
  end
 

end