require 'rails_helper'

RSpec.describe "blogs/index", type: :view do
  before(:each) do
    assign(:blogs, [
      Blog.create!(
        :title => "MyText",
        :body => "MyText",
        :image_url => "Image Url"
      ),
      Blog.create!(
        :title => "MyText",
        :body => "MyText",
        :image_url => "Image Url"
      )
    ])
  end

  it "renders a list of blogs" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Image Url".to_s, :count => 2
  end
end
