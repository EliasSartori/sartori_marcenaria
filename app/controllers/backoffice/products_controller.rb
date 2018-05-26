class Backoffice::ProductsController < BackofficeController

  before_action :set_product, only: [:edit, :update, :destroy]

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
    if @product.update(product_params)
      redirect_to backoffice_products_path, notice: "Produto atualizado!"
    else
      render :edit
    end
  end

  def destroy
    if @product.destroy
      redirect_to backoffice_products_path, notice: "Produto deletado!"
    end
  end

  private

    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:description, :quantity, :price)
    end  

end
