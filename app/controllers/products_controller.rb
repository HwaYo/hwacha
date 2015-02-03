class ProductsController < ApplicationController
  def index
    set_seed unless params[:page]
    @products = Product.order_by_rand(seed: seed).page(params[:page])
  end

private
  def set_seed
    session[:seed] = Random.new_seed
  end

  def seed
    session[:seed]
  end
end
