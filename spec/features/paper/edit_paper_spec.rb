require 'rails_helper'

describe "Edit paper page", type: :feature do
  before do
    @paper = create :paper
    @paper2 = create :paper_with_author
  end
  it "Should render" do
    visit edit_paper_path(@paper)
  end

  it "Save changes" do
    visit edit_paper_path(@paper)
    fill_in 'Title', with: 'A new Title'
    click_button 'Save Paper'
    expect(page).to have_content('A new Title')
  end

  it "Show authors" do
    visit edit_paper_path(@paper2)
    expect(page).to have_content('Alan')
  end

  

end