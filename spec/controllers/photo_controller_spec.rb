require 'rails_helper'

RSpec.describe PhotoController, type: :controller do

  def setup
    sign_in User.find_by_id(1)
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(302)
    end
  end

  describe "POST #store" do
    it "returns http success" do
      get :store
      expect(response).to have_http_status(302)
    end
  end
end
