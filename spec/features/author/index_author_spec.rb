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
    expect(page).to have_css('a', :text => /[aA]dd author/i)
  end

  it "Link to the author details pages" do
    visit authors_path
    expect(page).to have_css('a', :text => /[sS]how/i)
  end
  it "Link to the author edit page" do
    visit authors_path
    expect(page).to have_css('a', :text => /[eE]dit/i)
  end



end