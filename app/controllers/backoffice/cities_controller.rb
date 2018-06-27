class Backoffice::CitiesController < BackofficeController
  before_action :set_city, only: [:edit, :update, :destroy]

  def index
    @cities = City.all
  end

  def new
    @city = City.new
  end

  def create
    @city = City.new(city_params)
    if @city.save
      redirect_to backoffice_cities_path, notice: "Cidade cadastrada!"
    else
      render :new
    end
  end

  def edit
    
  end

  def update
    if @city.update(city_params)
      redirect_to backoffice_cities_path, notice: "Cidade atualizada!"
    else
      render :edit
    end
  end

  def destroy
    if @city.destroy
      redirect_to backoffice_cities_path, notice: "Cidade deletada!"
    else
      render :index
    end
  end

  private

    def set_city
      @city = City.find(params[:id])
    end

    def city_params
      params.require(:city).permit(:description, :state_id, :cep)
    end  
end
