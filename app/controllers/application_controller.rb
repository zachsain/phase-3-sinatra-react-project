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
      name: params[:name]
    )
    category.to_json
  end 

  get "/categories/:category_id/items" do 
    category = Category.find_by(category_id: params[:category_id])
    items = category.items
    items.to_json
  end 

  post "/categories/:category_id/items" do 
    category = Category.find_by(category_id: params[:category_id])
    item = category.items.create(name: params[:name], price: params[:price])
    # item = Item.create(
    #   name: params[:name],
    #   price: params[:price],
    # )
    item.to_json 
    
  end


  
  #Add :
  #Delete 
  #Update 

  
end
