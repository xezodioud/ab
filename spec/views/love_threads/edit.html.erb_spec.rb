require 'rails_helper'

RSpec.describe "love_threads/edit", type: :view do
  before(:each) do
    @love_thread = assign(:love_thread, LoveThread.create!(
      :collection => nil,
      :title => "MyString",
      :price => 1.5
    ))
  end

  it "renders the edit love_thread form" do
    render

    assert_select "form[action=?][method=?]", love_thread_path(@love_thread), "post" do

      assert_select "input#love_thread_collection_id[name=?]", "love_thread[collection_id]"

      assert_select "input#love_thread_title[name=?]", "love_thread[title]"

      assert_select "input#love_thread_price[name=?]", "love_thread[price]"
    end
  end
end
