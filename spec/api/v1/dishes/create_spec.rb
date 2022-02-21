require "rails_helper"

RSpec.describe "dishes#create", type: :request do
  subject(:make_request) do
    jsonapi_post "/api/v1/dishes", payload
  end

  describe "basic create" do
    let(:params) do
      {
        # ... your attrs here
      }
    end
    let(:payload) do
      {
        data: {
          type: "dishes",
          attributes: params,
        },
      }
    end

    it "works" do
      expect(DishResource).to receive(:build).and_call_original
      expect do
        make_request
        expect(response.status).to eq(201), response.body
      end.to change { Dish.count }.by(1)
    end
  end
end
