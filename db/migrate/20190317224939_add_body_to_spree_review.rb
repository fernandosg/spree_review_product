class AddBodyToSpreeReview < ActiveRecord::Migration[5.2]
  def change
    add_column :spree_reviews, :body, :text
  end
end
