require 'spec_helper'

describe "films/show" do
  before(:each) do
    @film = assign(:film, stub_model(Film,
      :title => "Title",
      :date => "Date",
      :content => "Content",
      :director => "Director",
      :character => "Character"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Date/)
    rendered.should match(/Content/)
    rendered.should match(/Director/)
    rendered.should match(/Character/)
  end
end
