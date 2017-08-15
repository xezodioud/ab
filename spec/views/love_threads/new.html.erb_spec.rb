require 'rails_helper'

RSpec.describe "love_threads/new", type: :view do
  before(:each) do
    assign(:love_thread, LoveThread.new(
      :collection => nil,
      :title => "MyString",
      :price => 1.5
    ))
  end

  it "renders new love_thread form" do
    render

    assert_select "form[action=?][method=?]", love_threads_path, "post" do

      assert_select "input#love_thread_collection_id[name=?]", "love_thread[collection_id]"

      assert_select "input#love_thread_title[name=?]", "love_thread[title]"

      assert_select "input#love_thread_price[name=?]", "love_thread[price]"
    end
  end
end
