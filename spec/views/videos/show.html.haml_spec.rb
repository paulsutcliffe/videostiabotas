require 'spec_helper'

describe "videos/show" do
  before(:each) do
    @video = assign(:video, stub_model(Video,
      :title => "Title",
      :category_id => 1,
      :character_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
