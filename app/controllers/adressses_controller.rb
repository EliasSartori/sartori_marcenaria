class AdresssesController < ApplicationController
  before_action :set_adresss, only: [:show, :edit, :update, :destroy]

  # GET /adressses
  # GET /adressses.json
  def index
    @adressses = Adresss.all
  end

  # GET /adressses/1
  # GET /adressses/1.json
  def show
  end

  # GET /adressses/new
  def new
    @adresss = Adresss.new
  end

  # GET /adressses/1/edit
  def edit
  end

  # POST /adressses
  # POST /adressses.json
  def create
    @adresss = Adresss.new(adresss_params)

    respond_to do |format|
      if @adresss.save
        format.html { redirect_to @adresss, notice: 'Adresss was successfully created.' }
        format.json { render :show, status: :created, location: @adresss }
      else
        format.html { render :new }
        format.json { render json: @adresss.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adressses/1
  # PATCH/PUT /adressses/1.json
  def update
    respond_to do |format|
      if @adresss.update(adresss_params)
        format.html { redirect_to @adresss, notice: 'Adresss was successfully updated.' }
        format.json { render :show, status: :ok, location: @adresss }
      else
        format.html { render :edit }
        format.json { render json: @adresss.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adressses/1
  # DELETE /adressses/1.json
  def destroy
    @adresss.destroy
    respond_to do |format|
      format.html { redirect_to adressses_url, notice: 'Adresss was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adresss
      @adresss = Adresss.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adresss_params
      params.require(:adresss).permit(:user_id, :city_id, :street, :neighborhood, :number)
    end
end
