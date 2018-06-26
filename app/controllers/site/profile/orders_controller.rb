class Site::Profile::OrdersController < Site::ProfileController
    def index
       @orders = current_user.orders
    end

    def create
        @product = Product.find(orders_params[:product_id])

        @order = current_user.orders.new(address_id: orders_params[:address_id])

        @order.build_products_order(unitary_value: @product.price,
                                    quantity: orders_params[:quantity],
                                    product_id: @product.id)

        if @order.save
            redirect_to site_profile_orders_path, notice: 'Sucesso'
        else
            redirect_to site_home_path(@product), notice: 'Deu ruim'
        end

    end

    def delivered
        @order = Order.find(params[:id])
        if @order.update(delivered: true)
            redirect_to site_profile_orders_path, notice: ''
        else
            redirect_to site_profile_orders_path, notice: ''
        end
    end

    private

    def orders_params
        params.require(:order).permit(:quantity, :address_id, :product_id)
    end
end
