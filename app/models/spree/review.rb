class Spree::Review < ApplicationRecord
  belongs_to :spree_product, foreign_key: 'spree_product_id', class_name: "Spree::Product"
  belongs_to :spree_user, foreign_key: 'spree_user_id', class_name: "Spree::User"


  def get_author_name
    spree_user.full_name
  end
end
