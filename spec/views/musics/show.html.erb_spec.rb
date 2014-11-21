require 'spec_helper'

describe "musics/show" do
  before(:each) do
    @music = assign(:music, stub_model(Music,
      :title => "Title",
      :date => "Date",
      :content => "Content",
      :performer => "Performer",
      :publisher => "Publisher"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Date/)
    rendered.should match(/Content/)
    rendered.should match(/Performer/)
    rendered.should match(/Publisher/)
  end
end
