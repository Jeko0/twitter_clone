require 'rails_helper'

RSpec.describe "Home", type: :request do
  let(:user) { create(:user) }
  describe "GET /index" do
    context "user is not logged in" do
      before {get root_path}
      it { expect(response).to have_http_status(:success) }
    end
  
    context "user is logged in" do
      before do 
        sign_in user 
        get root_path
      end
      it { expect(response).to redirect_to(dashboard_path) }
    end
  end
end