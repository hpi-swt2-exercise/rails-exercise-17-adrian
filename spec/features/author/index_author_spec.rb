require 'rails_helper'

describe "Author index page", type: :feature do
  
  it "should render withour error" do
    visit authors_path
  end

  before do
  	@alan = create :author
  end
  it "Should contain godd ol' alan" do
    visit authors_path
    expect(page).to have_content('Alan Turing')
  end

  it "Should give a link to create new authors" do
    visit authors_path
    expect(page).to have_selector('a', :text => "Add Author")
  end


end