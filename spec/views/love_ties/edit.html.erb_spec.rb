require 'rails_helper'

RSpec.describe "love_ties/edit", type: :view do
  before(:each) do
    @love_ty = assign(:love_ty, LoveTy.create!(
      :collection => nil,
      :title => "MyString",
      :price => 1.5
    ))
  end

  it "renders the edit love_ty form" do
    render

    assert_select "form[action=?][method=?]", love_ty_path(@love_ty), "post" do

      assert_select "input#love_ty_collection_id[name=?]", "love_ty[collection_id]"

      assert_select "input#love_ty_title[name=?]", "love_ty[title]"

      assert_select "input#love_ty_price[name=?]", "love_ty[price]"
    end
  end
end
