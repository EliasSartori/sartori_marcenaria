class Site::Profile::AddressesController < Site::ProfileController
    before_action :set_addresses, only: [:edit, :update, :destroy]

  def index
    @addresses = Address.all
  end

  def edit
  
  end

  def update
    if @addresses.update(params_addresses)
      redirect_to site_profile_addresses_path, notice: "Anúncio atualizado com sucesso!"
    else
      render :edit
    end
  end

  def new
    @addresses = Address.new
  end

  def create
    @addresses = Address.new(params_addresses)

    if @addresses.save
      redirect_to site_profile_addresses_path, notice: "Endereço cadastrado com sucesso!"
    else
      render :new
    end
  end

  def destroy
    if @addresses.destroy
      redirect_to site_profile_addresses_path, notice: "Endereço deletado!"
    else
      render :index
    end
  end

  private

    def set_addresses
      @addresses = Address.find(params[:id])
    end

    def params_addresses
      params.require(:address).permit(:id, :user_id, :city_id, :street, :neighborhood, :number)
    end
end
