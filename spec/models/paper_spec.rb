require 'rails_helper'
describe "New Paper", type: :model do
 it "Should validate venue" do
  	paper = Paper.new(title:'Some title', venue: nil, year:2017)
  	expect(paper.valid?).to eq(false)
  
  end

  it "Should validate title" do
  	paper = Paper.new(title: nil, venue: "Somewhere", year:2017)
  	expect(paper.valid?).to eq(false)
  
  end

   it "Should validate year" do
  	paper = Paper.new(title: "title", venue: "Somewhere", year:nil)
  	expect(paper.valid?).to eq(false)
  
  end

  it "Should validate year is int" do
  	paper = Paper.new(title: "title", venue: "Somewhere", year:"hello")
  	expect(paper.valid?).to eq(false)
  
  end

  it "Should have authors" do
  	paper=Paper.new()
  	expect(paper.authors).to be_empty
  end

end