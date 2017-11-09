require 'rails_helper'
describe "New Paper", type: :model do
it "Should validate" do
  	paper = Paper.new(title:nil, venue: "somewhere", year:'2017')
  	expect(paper.valid?).to eq(false)
  
  end

end