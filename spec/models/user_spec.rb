require 'rails_helper'

RSpec.describe User, type: :model do
  context "Associations" do
    it { should have_many(:tweets).dependent(:destroy) }
  end
end
