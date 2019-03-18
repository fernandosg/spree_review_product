Spree::Product.class_eval do
  has_many :spree_reviews, class_name: 'Spree::Review'
end
