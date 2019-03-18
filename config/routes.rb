Spree::Core::Engine.add_routes do
  # Add your extension routes here
  post "/products/review/create", to:'review_product#create', as:'review_product_creation'
end
