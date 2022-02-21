require 'rails_helper'

RSpec.describe User, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:bookmarks) }

    end

    describe "InDirect Associations" do

    it { should have_many(:venues) }

    it { should have_many(:dishes) }

    end

    describe "Validations" do

    end
end
