class Backoffice::AdministratorsController < BackofficeController
  before_action :set_administrator, only: [:edit, :update, :destroy]

  def index
    @administrators = Administrator.all
  end

  def new
    @administrator = Administrator.new
  end

  def create
    @administrator = Administrator.new(params_administrator)
    if @administrator.save
      redirect_to backoffice_administrators_path, notice: "Administrador cadastrado!"
    else
      render :new
    end
  end

  def edit
  end

  def update
    passwd = params[:administrator][:password]
    passwd_confirmation = params[:administrator][:password_confirmation]

    if passwd.blank? && passwd_confirmation.blank?
      params[:administrator].delete(:password)
      params[:administrator].delete(:password_confirmation)
    end

    if @administrator.update(params_administrator)
      redirect_to backoffice_administrators_path, notice: "Administrador atualizado!"
    else
      render :edit
    end
  end

  def destroy
    if @administrator.destroy
      redirect_to backoffice_administrators_path, notice: "Administrador deletado!"
    else
      render :index
    end
  end


  private

    def set_administrator
      @administrator = Administrator.find(params[:id])
    end

    def params_administrator
      params.require(:administrator).permit(:name, :email, :password, :password_confirmation)
    end
end
