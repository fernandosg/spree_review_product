class Spree::ReviewProductController < Spree::StoreController

  def create
    review = Spree::Review.create review_params
    if review.valid?
      flash[:notice] = "Reseña creada con éxito"
    else
      flash[:error] = "Problemas al crear la reseña"
    end
    product = Spree::Product.find(params[:spree_product_id])
    redirect_to product_path(product.slug)
  end

  private
  def review_params
    params.permit(:body, :rating, :spree_product_id, :spree_user_id)
  end
end
