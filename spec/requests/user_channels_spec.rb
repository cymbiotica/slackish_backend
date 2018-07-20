require 'rails_helper'

RSpec.describe "UserChannels", type: :request do
  describe "GET /user_channels" do
    it "works! (now write some real specs)" do
      get user_channels_path
      expect(response).to have_http_status(200)
    end
  end
end
