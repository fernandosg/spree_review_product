Spree::Product.class_eval do
  has_many :spree_reviews, foreign_key: 'spree_product_id',class_name: 'Spree::Review'
  attr_accessor :my_rating

  def i_had_already_voting spree_user_id
    return true unless @my_rating.nil?
    review = Spree::Review.find_by_spree_product_id_and_spree_user_id(id, spree_user_id)
    return nil if review.nil?
    @my_rating = review.rating
    @my_rating
  end
end
