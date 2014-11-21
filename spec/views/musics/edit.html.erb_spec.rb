require 'spec_helper'

describe "musics/edit" do
  before(:each) do
    @music = assign(:music, stub_model(Music,
      :title => "MyString",
      :date => "MyString",
      :content => "MyString",
      :performer => "MyString",
      :publisher => "MyString"
    ))
  end

  it "renders the edit music form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", music_path(@music), "post" do
      assert_select "input#music_title[name=?]", "music[title]"
      assert_select "input#music_date[name=?]", "music[date]"
      assert_select "input#music_content[name=?]", "music[content]"
      assert_select "input#music_performer[name=?]", "music[performer]"
      assert_select "input#music_publisher[name=?]", "music[publisher]"
    end
  end
end
