require 'rails_helper'

RSpec.describe "love_threads/show", type: :view do
  before(:each) do
    @love_thread = assign(:love_thread, LoveThread.create!(
      :collection => nil,
      :title => "Title",
      :price => 2.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/2.5/)
  end
end
