require 'rails_helper'

RSpec.describe "Dashboard", type: :request do
  let(:user) { create(:user) }

  describe "GET /dashboard" do
    context "when not signed in" do
      before { get dashboard_path }
      it { expect(response).to have_http_status(:redirect) }
    end

    context "when signed in" do
      before do 
        sign_in user
        get dashboard_path 
      end
      
      it { expect(response).to have_http_status(:success) }
    end
  end
end