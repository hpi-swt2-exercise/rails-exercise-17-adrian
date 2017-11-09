require 'rails_helper'

describe "Edit author page", type: :feature do
  before do
    @alan = create :author
  end
  it "Should render" do
    visit edit_author_path(@alan)
  end

  it "Save changed" do
    visit edit_author_path(@alan)
    fill_in 'First name', with: 'Alan Mathison'
    click_button 'Save author'
  end

  

end