require 'spec_helper'

describe "books/new" do
  before(:each) do
    assign(:book, stub_model(Book,
      :title => "MyString",
      :date => "MyString",
      :content => "MyString",
      :writer => "MyString",
      :publisher => "MyString"
    ).as_new_record)
  end

  it "renders new book form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", books_path, "post" do
      assert_select "input#book_title[name=?]", "book[title]"
      assert_select "input#book_date[name=?]", "book[date]"
      assert_select "input#book_content[name=?]", "book[content]"
      assert_select "input#book_writer[name=?]", "book[writer]"
      assert_select "input#book_publisher[name=?]", "book[publisher]"
    end
  end
end
