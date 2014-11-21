require 'spec_helper'

describe "musics/new" do
  before(:each) do
    assign(:music, stub_model(Music,
      :title => "MyString",
      :date => "MyString",
      :content => "MyString",
      :performer => "MyString",
      :publisher => "MyString"
    ).as_new_record)
  end

  it "renders new music form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", musics_path, "post" do
      assert_select "input#music_title[name=?]", "music[title]"
      assert_select "input#music_date[name=?]", "music[date]"
      assert_select "input#music_content[name=?]", "music[content]"
      assert_select "input#music_performer[name=?]", "music[performer]"
      assert_select "input#music_publisher[name=?]", "music[publisher]"
    end
  end
end
