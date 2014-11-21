require 'spec_helper'

describe "films/edit" do
  before(:each) do
    @film = assign(:film, stub_model(Film,
      :title => "MyString",
      :date => "MyString",
      :content => "MyString",
      :director => "MyString",
      :character => "MyString"
    ))
  end

  it "renders the edit film form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", film_path(@film), "post" do
      assert_select "input#film_title[name=?]", "film[title]"
      assert_select "input#film_date[name=?]", "film[date]"
      assert_select "input#film_content[name=?]", "film[content]"
      assert_select "input#film_director[name=?]", "film[director]"
      assert_select "input#film_character[name=?]", "film[character]"
    end
  end
end
