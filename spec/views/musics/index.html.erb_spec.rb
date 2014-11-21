require 'spec_helper'

describe "musics/index" do
  before(:each) do
    assign(:musics, [
      stub_model(Music,
        :title => "Title",
        :date => "Date",
        :content => "Content",
        :performer => "Performer",
        :publisher => "Publisher"
      ),
      stub_model(Music,
        :title => "Title",
        :date => "Date",
        :content => "Content",
        :performer => "Performer",
        :publisher => "Publisher"
      )
    ])
  end

  it "renders a list of musics" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Date".to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
    assert_select "tr>td", :text => "Performer".to_s, :count => 2
    assert_select "tr>td", :text => "Publisher".to_s, :count => 2
  end
end
