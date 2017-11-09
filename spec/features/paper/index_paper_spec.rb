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

it "Link to the paper creation page" do
    visit papers_path
    expect(page).to have_css('a', :text => /[aA]dd paper/i)
  end
  it "Link to the paper details pages" do
    visit papers_path
    expect(page).to have_css('a', :text => /[sS]how/i)
  end
  it "Link to the paper edit page" do
    visit papers_path
    expect(page).to have_css('a', :text => /[eE]dit/i)
  end

   it "paper entries should have delete button" do
    visit papers_path
    expect(page).to have_css('a', :text => /[dD]estroy/i)
  end

  it "deletee button should not throw error" do
    visit papers_path
    click_link 'Destroy'
  end

 

end