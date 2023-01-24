require 'rails_helper'

RSpec.describe "Dashboard", type: :request do
  let(:user) { create(:user) }

  describe "POST create" do
    context "when not signed in" do
      before { post tweets_path, params: { tweet: { body: "yohohohoho"} } }
      it { expect(response).to have_http_status(:redirect) }
    end

    context "when signed in" do
      it "creates a new tweet" do 
        sign_in user 
        expect do 
          post tweets_path, 
          params: {
            tweet: {
              body: "New tweet body"
            }
          }
        end.to change { Tweet.count }.by(1)
        expect(response).to redirect_to(dashboard_path )
      end
    end
  end
end