require 'rails_helper'

RSpec.describe "blogs/new", type: :view do
  before(:each) do
    assign(:blog, Blog.new(
      :title => "MyText",
      :body => "MyText",
      :image_url => "MyString"
    ))
  end

  it "renders new blog form" do
    render

    assert_select "form[action=?][method=?]", blogs_path, "post" do

      assert_select "textarea[name=?]", "blog[title]"

      assert_select "textarea[name=?]", "blog[body]"

      assert_select "input[name=?]", "blog[image_url]"
    end
  end
end
