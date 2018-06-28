require 'rails_helper'

RSpec.describe "Accomplishments", type: :request do
  describe "GET /accomplishments" do
    it "works! (now write some real specs)" do
      get accomplishments_path
      expect(response).to have_http_status(200)
    end
  end
end
