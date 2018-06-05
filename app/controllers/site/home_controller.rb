class Site::HomeController < ApplicationController
  layout "site"
  def index
    @products = Product.order(updated_at: :desc)
  end
end
