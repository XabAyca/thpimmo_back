require 'rails_helper'

RSpec.describe Property, :type => :model do
  before do
    create_user()
    create_user()
    FactoryBot.create(:location,name:'Paris')
    FactoryBot.create(:location,name:'Lyon')
    FactoryBot.create(:category,name:'House')
    FactoryBot.create(:category,name:'Villa')
  end

  it "is valid with valid attributes" do
    expect(Property.create(
      title:'To sell my house',
      description:"La vie de bohème au 5ème étage sans ascenseur! Charmant studio avec mezzanine sous les toits avec tomettes au sol, se composant d'une entrée, d'un salon avec cheminée donnant sur une petite cuisine ouverte avec bar; une chambre pour deux personnes en mezzanine et une salle de bain avec baignoire et lit de repos",
      price:1500,
      photo:"https://picsum.photos/300/300",
      user:User.all.sample,
      location:Location.all.sample,
      category:Category.all.sample))
      .to be_valid
  end

  it "is not valid without a title"  do    
  expect(Property.create(
    title:nil,
    description:"La vie de bohème au 5ème étage sans ascenseur! Charmant studio avec mezzanine sous les toits avec tomettes au sol, se composant d'une entrée, d'un salon avec cheminée donnant sur une petite cuisine ouverte avec bar; une chambre pour deux personnes en mezzanine et une salle de bain avec baignoire et lit de repos",
    price:1500,
    photo:"https://picsum.photos/300/300",
    user:User.all.sample,
    location:Location.all.sample,
    category:Category.all.sample))
    .to_not be_valid
  end

  it "is not valid with a title too long" do 
    expect(Property.create(
      title:'To sell my house every day a write code because I love this so much...',
      description:"La vie de bohème au 5ème étage sans ascenseur! Charmant studio avec mezzanine sous les toits avec tomettes au sol, se composant d'une entrée, d'un salon avec cheminée donnant sur une petite cuisine ouverte avec bar; une chambre pour deux personnes en mezzanine et une salle de bain avec baignoire et lit de repos",
      price:1500,
      photo:"https://picsum.photos/300/300",
      user:User.all.sample,
      location:Location.all.sample,
      category:Category.all.sample))
      .to_not be_valid
  end

  it "is not valid without a description" do
    expect(Property.create(
      title:'To sell my house',
      description:nil,
      price:1500,
      photo:"https://picsum.photos/300/300",
      user:User.all.sample,
      location:Location.all.sample,
      category:Category.all.sample))
      .to_not be_valid
  end

  it "is not valid with a description length too short" do
    expect(Property.create(
      title:'To sell my house',
      description:"La vie de bohème au 5ème étage sans ascenseur! ",
      price:1500,
      photo:"https://picsum.photos/300/300",
      user:User.all.sample,
      location:Location.all.sample,
      category:Category.all.sample))
      .to_not be_valid
  end

  it "is not valid without a price" do 
    expect(Property.create(
      title:'To sell my house',
      description:"La vie de bohème au 5ème étage sans ascenseur! Charmant studio avec mezzanine sous les toits avec tomettes au sol, se composant d'une entrée, d'un salon avec cheminée donnant sur une petite cuisine ouverte avec bar; une chambre pour deux personnes en mezzanine et une salle de bain avec baignoire et lit de repos",
      price:nil,
      photo:"https://picsum.photos/300/300",
      user:User.all.sample,
      location:Location.all.sample,
      category:Category.all.sample))
      .to_not be_valid
  end

  it "is not valid with a price too low" do
    expect(Property.create(
      title:'To sell my house',
      description:"La vie de bohème au 5ème étage sans ascenseur! Charmant studio avec mezzanine sous les toits avec tomettes au sol, se composant d'une entrée, d'un salon avec cheminée donnant sur une petite cuisine ouverte avec bar; une chambre pour deux personnes en mezzanine et une salle de bain avec baignoire et lit de repos",
      price:-50,
      photo:"https://picsum.photos/300/300",
      user:User.all.sample,
      location:Location.all.sample,
      category:Category.all.sample))
      .to_not be_valid
  end

  it "is not valid without photo" do
    expect(Property.create(
      title:'To sell my house',
      description:"La vie de bohème au 5ème étage sans ascenseur! Charmant studio avec mezzanine sous les toits avec tomettes au sol, se composant d'une entrée, d'un salon avec cheminée donnant sur une petite cuisine ouverte avec bar; une chambre pour deux personnes en mezzanine et une salle de bain avec baignoire et lit de repos",
      price:1500,
      photo:nil,
      user:User.all.sample,
      location:Location.all.sample,
      category:Category.all.sample))
      .to_not be_valid
  end


  it "is not valid without user" do
    expect(Property.create(
      title:'To sell my house',
      description:"La vie de bohème au 5ème étage sans ascenseur! Charmant studio avec mezzanine sous les toits avec tomettes au sol, se composant d'une entrée, d'un salon avec cheminée donnant sur une petite cuisine ouverte avec bar; une chambre pour deux personnes en mezzanine et une salle de bain avec baignoire et lit de repos",
      price:1500,
      photo:"https://picsum.photos/300/300",
      user:nil,
      location:Location.all.sample,
      category:Category.all.sample))
      .to_not be_valid
  end

  it "is not valid without location" do
    expect(Property.create(
      title:'To sell my house',
      description:"La vie de bohème au 5ème étage sans ascenseur! Charmant studio avec mezzanine sous les toits avec tomettes au sol, se composant d'une entrée, d'un salon avec cheminée donnant sur une petite cuisine ouverte avec bar; une chambre pour deux personnes en mezzanine et une salle de bain avec baignoire et lit de repos",
      price:1500,
      photo:"https://picsum.photos/300/300",
      user:User.all.sample,
      location:nil,
      category:Category.all.sample))
      .to_not be_valid
  end

  it "is not valid without category" do
    expect(Property.create(
      title:'To sell my house',
      description:"La vie de bohème au 5ème étage sans ascenseur! Charmant studio avec mezzanine sous les toits avec tomettes au sol, se composant d'une entrée, d'un salon avec cheminée donnant sur une petite cuisine ouverte avec bar; une chambre pour deux personnes en mezzanine et une salle de bain avec baignoire et lit de repos",
      price:1500,
      photo:"https://picsum.photos/300/300",
      user:User.all.sample,
      location:Location.all.sample,
      category:nil))
      .to_not be_valid
  end
end