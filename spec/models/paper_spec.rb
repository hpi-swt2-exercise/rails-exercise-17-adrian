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

end