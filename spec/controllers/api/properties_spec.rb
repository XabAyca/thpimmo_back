require 'rails_helper'
require 'devise/jwt/test_helpers'

describe Api::V1::PropertiesController, type: :request do

  let (:user) { create_user }
  let (:token) { user.token}
  let (:post_property_url) { '/api/v1/properties' }
  
  context 'When GET all properties' do
    before do
      login_with_api(user)
      FactoryBot.create(:location, name:'Pau')
      FactoryBot.create(:category, name:'House')

      FactoryBot.create(:property, price: 555, title:'House of games', description: "Nichée dans un cadre de verdure, cette petite cabane de charme, tout en bois et sur pilotis, sera le refuge idéal pour vous retrouver en amoureux, été comme hiver. Vous l'apprécierez pour son calme, sa délicieuse odeur de bois, sa luminosité. La cabane est parfaite pour les couples mais ravira aussi les voyageurs en solo et même les teletravailleurs en quête de calme.",
                        photo: "https://picsum.photos/300/300", user: user, location: Location.all.sample, category: Category.all.sample)

    end

    it "return all properties" do
      get "/api/v1/properties"
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(1)
    end
  end

  context 'When GET one property' do
    before do
      login_with_api(user)
      FactoryBot.create(:location, name:'Pau')
      FactoryBot.create(:category, name:'House')

      FactoryBot.create(:property, price: 555, title:'House of games', description: "Nichée dans un cadre de verdure, cette petite cabane de charme, tout en bois et sur pilotis, sera le refuge idéal pour vous retrouver en amoureux, été comme hiver. Vous l'apprécierez pour son calme, sa délicieuse odeur de bois, sa luminosité. La cabane est parfaite pour les couples mais ravira aussi les voyageurs en solo et même les teletravailleurs en quête de calme.",
                        photo: "https://picsum.photos/300/300", user: user, location: Location.all.sample, category: Category.all.sample)
    end

    it "return all properties" do
      get "/api/v1/properties/#{Property.all.sample.id}"
      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(10)
    end
  end

  context 'When CREATE / POST a new property' do
    before do
      FactoryBot.create(:location, name:'Pau')
      FactoryBot.create(:category, name:'House')
      login_with_api(user)
    end

    it "return a create property" do
      headers = { 'Content-Type' => 'application/json' }
      # This will add a valid token for `user` in the `Authorization` header
      auth_headers = Devise::JWT::TestHelpers.auth_headers(headers, user)

      post '/api/v1/properties', headers: auth_headers, params:{
        property: {
          title: "La Belle Aimée",
          price: 555,
          description: "Logement avec vue exceptionnelle sur la mer, et Les Planches de Deauville, à juste 500 mètres. Location de vacances au calme absolu avec un environnement préservé",
          photo: "https://picsum.photos/300/300",
          location_id: Location.all.sample.id, 
          category_id: Category.all.sample.id
        }
      }.to_json

      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(10)
    end
  end

  context 'When UPDATE a property' do
    before do
      FactoryBot.create(:location, name:'Pau')
      FactoryBot.create(:category, name:'House')
      login_with_api(user)
      FactoryBot.create(:property, price: 555, title:'House of games', description: "Nichée dans un cadre de verdure, cette petite cabane de charme, tout en bois et sur pilotis, sera le refuge idéal pour vous retrouver en amoureux, été comme hiver. Vous l'apprécierez pour son calme, sa délicieuse odeur de bois, sa luminosité. La cabane est parfaite pour les couples mais ravira aussi les voyageurs en solo et même les teletravailleurs en quête de calme.",
                        photo: "https://picsum.photos/300/300", user: user, location: Location.all.sample, category: Category.all.sample)
    end

    it "return a create property" do
      headers = { 'Content-Type' => 'application/json' }
      # This will add a valid token for `user` in the `Authorization` header
      auth_headers = Devise::JWT::TestHelpers.auth_headers(headers, user)

      put "/api/v1/properties/#{Property.last.id}", headers: auth_headers, params:{
        property: {
          title: "La Belle Aimé",
          price: 555,
          description: "Logement avec vue exceptionnelle sur la mer, et Les Planches de Deauville, à juste 500 mètres. Location de vacances au calme absolu avec un environnement préservé",
          photo: "https://picsum.photos/300/300",
          location_id: Location.all.sample.id, 
          category_id: Category.all.sample.id
        }
      }.to_json

      expect(response).to have_http_status(:success)
      expect(JSON.parse(response.body).size).to eq(10)
    end
  end

  context 'When DELETE a property' do
    before do
      FactoryBot.create(:location, name:'Pau')
      FactoryBot.create(:category, name:'House')
      login_with_api(user)
      FactoryBot.create(:property, price: 555, title:'House of games', description: "Nichée dans un cadre de verdure, cette petite cabane de charme, tout en bois et sur pilotis, sera le refuge idéal pour vous retrouver en amoureux, été comme hiver. Vous l'apprécierez pour son calme, sa délicieuse odeur de bois, sa luminosité. La cabane est parfaite pour les couples mais ravira aussi les voyageurs en solo et même les teletravailleurs en quête de calme.",
                        photo: "https://picsum.photos/300/300", user: user, location: Location.all.sample, category: Category.all.sample)
    end

    it "return a create property" do
      headers = { 'Content-Type' => 'application/json' }
      # This will add a valid token for `user` in the `Authorization` header
      auth_headers = Devise::JWT::TestHelpers.auth_headers(headers, user)

      delete "/api/v1/properties/#{Property.last.id}", headers: auth_headers

      expect(response).to have_http_status(:success)
    end
  end
end