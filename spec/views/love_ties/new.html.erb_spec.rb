require 'rails_helper'

RSpec.describe "love_ties/new", type: :view do
  before(:each) do
    assign(:love_ty, LoveTy.new(
      :collection => nil,
      :title => "MyString",
      :price => 1.5
    ))
  end

  it "renders new love_ty form" do
    render

    assert_select "form[action=?][method=?]", love_ties_path, "post" do

      assert_select "input#love_ty_collection_id[name=?]", "love_ty[collection_id]"

      assert_select "input#love_ty_title[name=?]", "love_ty[title]"

      assert_select "input#love_ty_price[name=?]", "love_ty[price]"
    end
  end
end
