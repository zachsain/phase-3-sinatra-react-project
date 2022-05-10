require 'pry'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  # get "/" do
  #   { message: "Good luck with your project!" }.to_json
  # end

  get "/categories" do 
    categories = Category.all 
    categories.to_json
  end 

  post "/categories" do 
    category = Category.create(
      name: params[:name],
      image: params[:image]
    )
    category.to_json
  end 

  get "/categories/:category_id/items" do 
    category = Category.find_by(category_id: params[:category_id])
    items = category.items
    items.to_json
  end 

  get "/categories/:id" do 
    category = Category.find_by(id: params[:id])
    category.to_json(include: :items)

  end 

  post "/categories/:category_id/items" do 
    

    category = Category.find_by(id: params[:category_id])
     
    item = category.items.create(
     name: params[:name],
     price: params[:price], 
     image: params[:image])

    #  byebug
    #  binding.pry

    item.to_json 

    
  end

  

  delete '/categories/:id' do
    category = Category.find(params[:id])
    catgory.destroy
  end

  delete "/items/:id" do 
    item = Item.find_by(id: params[:id])
    item.destroy  
  end

  patch '/items/:id/edit' do
    # binding.pry
    item = Item.find_by(id: params[:id])
    item.update(
      name: params[:name],
      image: params[:image],
      price: params[:price]

    )
    item.to_json
  end
   
end
