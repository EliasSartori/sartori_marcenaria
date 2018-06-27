class Backoffice::OrdersController < BackofficeController
    def index
        @orders = Order.all
    end

    def delivered
        @order = Order.find(params[:id])
        if @order.update(delivered: true)
            redirect_to backoffice_orders_path, notice: 'Produto entregue'
        else
            redirect_to backoffice_orders_path, notice: 'Falha ao entregar'
        end
    end
end
