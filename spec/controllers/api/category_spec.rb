require 'rails_helper'

describe "category API", type: :request do
  it "return all location" do
    FactoryBot.create(:category, name:'House')
    FactoryBot.create(:category, name:'Villa')

    get "/api/v1/categories"
    expect(response).to have_http_status(:success)
    expect(JSON.parse(response.body).size).to eq(2)
  end
end