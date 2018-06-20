class Site::HomeController < SiteController
  def index
    @products = Product.order(updated_at: :desc)
  end
  def show
    @product = Product.find(params[:id])
  end
end
