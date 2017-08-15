require 'rails_helper'

RSpec.describe "LoveThreads", type: :request do
  describe "GET /love_threads" do
    it "works! (now write some real specs)" do
      get love_threads_path
      expect(response).to have_http_status(200)
    end
  end
end
