require 'rails_helper'

RSpec.describe "Quizes", type: :request do
  describe "GET /quizes" do
    it "works! (now write some real specs)" do
      get quizes_path
      expect(response).to have_http_status(200)
    end
  end
end
