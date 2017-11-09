require 'rails_helper'

describe "New paper page", type: :feature do
  
  it "should render withour error" do
    visit new_paper_path
  end
it "should have text input for title venu and year" do
    visit new_paper_path
  
  expect(page).to have_field('Title')
  expect(page).to have_field('Venue')
  expect(page).to have_field('Year')
  end

  it "should save the paper to db" do
    visit new_paper_path
    paper = build :paper
    fill_in 'Title', with: paper.title
    fill_in 'Venue', with: paper.venue
    fill_in 'Year', with: paper.year
    click_button 'Save Paper'
    expect(page).to have_content(paper.title)
    expect(page).to have_content(paper.venue)
    expect(page).to have_content(paper.year)
  end

  it "should save the paper to db" do
    visit new_paper_path
    paper = build :paper

    fill_in 'Venue', with: paper.venue
    fill_in 'Year', with: paper.year
    click_button 'Save Paper'
    expect(page).to have_content('Title can\'t be blank')
    
  end

 

end