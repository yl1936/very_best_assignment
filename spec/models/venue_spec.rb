require 'rails_helper'

RSpec.describe Venue, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:neighborhood) }

    it { should have_many(:bookmarks) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do

    end
end
