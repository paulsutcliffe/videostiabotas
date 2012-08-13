require 'spec_helper'

describe "videos/edit" do
  before(:each) do
    @video = assign(:video, stub_model(Video,
      :title => "MyString",
      :category_id => 1,
      :character_id => 1
    ))
  end

  it "renders the edit video form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => videos_path(@video), :method => "post" do
      assert_select "input#video_title", :name => "video[title]"
      assert_select "input#video_category_id", :name => "video[category_id]"
      assert_select "input#video_character_id", :name => "video[character_id]"
    end
  end
end
