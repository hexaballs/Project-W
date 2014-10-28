require 'rails_helper'

RSpec.describe "References", :type => :request do
  describe "GET /references" do
    it "works! (now write some real specs)" do
      get references_path
      expect(response.status).to be(200)
    end
  end
end
