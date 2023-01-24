require 'rails_helper'

RSpec.describe User, type: :model do
  context "Associations" do
    it { should have_many(:tweets).dependent(:destroy) }
  end

  context "Validations" do
    it { should validate_uniqueness_of(:username).case_insensitive.allow_blank }
  end
end
