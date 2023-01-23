require 'rails_helper'

RSpec.describe "Home", type: :request do
  context "GET /index" do
    before {get root_path}
    it { expect(response).to have_http_status(:success) }
  end
end
