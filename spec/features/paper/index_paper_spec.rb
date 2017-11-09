require 'rails_helper'

describe "papers index page", type: :feature do
  
  it "should render withour error" do
    visit papers_path
  end

  before do
  	@paper = create :paper
  end
  it "Should contain title, year and venue" do
    visit papers_path
    expect(page).to have_content(@paper.title)
    expect(page).to have_content(@paper.venue)
    expect(page).to have_content(@paper.year)
  end

 

end