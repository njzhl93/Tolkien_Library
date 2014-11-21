require 'spec_helper'

describe "films/new" do
  before(:each) do
    assign(:film, stub_model(Film,
      :title => "MyString",
      :date => "MyString",
      :content => "MyString",
      :director => "MyString",
      :character => "MyString"
    ).as_new_record)
  end

  it "renders new film form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", films_path, "post" do
      assert_select "input#film_title[name=?]", "film[title]"
      assert_select "input#film_date[name=?]", "film[date]"
      assert_select "input#film_content[name=?]", "film[content]"
      assert_select "input#film_director[name=?]", "film[director]"
      assert_select "input#film_character[name=?]", "film[character]"
    end
  end
end
