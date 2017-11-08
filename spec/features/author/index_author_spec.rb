require 'rails_helper'

describe "Author index page", type: :feature do
  
  it "should render withour error" do
    visit index_author_path
  end


end