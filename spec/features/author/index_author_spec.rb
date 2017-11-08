require 'rails_helper'

describe "Author index page", type: :feature do
  
  it "should render withour error" do
    visit authors_path
  end

  before do
  	@alan = create :author
  end
  it "should render withour error" do
    visit authors_path
    expect(page).to have_content('Alan Turing')
  end


end