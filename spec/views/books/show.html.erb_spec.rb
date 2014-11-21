require 'spec_helper'

describe "books/show" do
  before(:each) do
    @book = assign(:book, stub_model(Book,
      :title => "Title",
      :date => "Date",
      :content => "Content",
      :writer => "Writer",
      :publisher => "Publisher"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Date/)
    rendered.should match(/Content/)
    rendered.should match(/Writer/)
    rendered.should match(/Publisher/)
  end
end
