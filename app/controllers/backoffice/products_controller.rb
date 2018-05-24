class Backoffice::ProductsController < BackofficeController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to backoffice_products_path, notice: "Produto cadastrado!"
    else
      render :new
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def product_params
    params.require(:product).permit(:description, :quantity, :price)
  end  

end
