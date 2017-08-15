require 'rails_helper'

RSpec.describe "love_threads/index", type: :view do
  before(:each) do
    assign(:love_threads, [
      LoveThread.create!(
        :collection => nil,
        :title => "Title",
        :price => 2.5
      ),
      LoveThread.create!(
        :collection => nil,
        :title => "Title",
        :price => 2.5
      )
    ])
  end

  it "renders a list of love_threads" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
  end
end
