class CreateSpreeReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :spree_reviews do |t|
      t.reference :spree_product
      t.reference :spree_user
      t.decimal :rating

      t.timestamps
    end
  end
end
