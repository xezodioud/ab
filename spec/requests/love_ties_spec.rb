require 'rails_helper'

RSpec.describe "LoveTies", type: :request do
  describe "GET /love_ties" do
    it "works! (now write some real specs)" do
      get love_ties_path
      expect(response).to have_http_status(200)
    end
  end
end
