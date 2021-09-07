require 'rails_helper'

describe "location API", type: :request do
  it "return all location" do
    FactoryBot.create(:location, name:'Pau')
    FactoryBot.create(:location, name:'Paris')
    
    get "/api/v1/locations"
    expect(response).to have_http_status(:success)
    expect(JSON.parse(response.body).size).to eq(2)
  end
end