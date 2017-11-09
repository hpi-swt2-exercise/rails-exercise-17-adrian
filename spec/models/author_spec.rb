describe "New Author", type: :model do

  it "Author model should have name, lastname and homepage" do
  	author = Author.new(first_name:'Alan', last_name:'Turing', homepage:'http://wikipedia.org/Alan_Turing')
  	expect(author.first_name).to eq('Alan')
  	expect(author.last_name).to eq('Turing')
  	expect(author.homepage).to eq('http://wikipedia.org/Alan_Turing')
  end

  it "author.name should concat first and last name" do
  	author = Author.new(first_name:'Alan', last_name:'Turing', homepage:'http://wikipedia.org/Alan_Turing')
  	expect(author.name).to eq('Alan Turing')
  
  end

  it "Should validate" do
  	author = Author.new(first_name:'Alan', last_name: nil, homepage:'http://wikipedia.org/Alan_Turing')
  	expect(author.valid?).to eq(false)
  
  end

  it "have papers" do
    author = Author.new()
    expect(author.papers).to be_empty
  
  end



end