require 'spec_helper'

describe "films/index" do
  before(:each) do
    assign(:films, [
      stub_model(Film,
        :title => "Title",
        :date => "Date",
        :content => "Content",
        :director => "Director",
        :character => "Character"
      ),
      stub_model(Film,
        :title => "Title",
        :date => "Date",
        :content => "Content",
        :director => "Director",
        :character => "Character"
      )
    ])
  end

  it "renders a list of films" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Date".to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
    assert_select "tr>td", :text => "Director".to_s, :count => 2
    assert_select "tr>td", :text => "Character".to_s, :count => 2
  end
end
