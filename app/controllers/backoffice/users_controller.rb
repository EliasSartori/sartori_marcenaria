class Backoffice::UsersController < BackofficeController
    before_action :set_user, only: [:edit, :update, :destroy]
    
    def index
        @users = User.all
    end

    def edit
    end
  
    def update
      passwd = params[:user][:password]
      passwd_confirmation = params[:user][:password_confirmation]
  
      if passwd.blank? && passwd_confirmation.blank?
        params[:user].delete(:password)
        params[:user].delete(:password_confirmation)
      end
  
      if @user.update(params_user)
        redirect_to backoffice_users_path, notice: "Usuário atualizado!"
      else
        render :edit
      end
    end
  
    def destroy
      if @user.destroy
        redirect_to backoffice_users_path, notice: "Usuário deletado!"
      else
        render :index
      end
    end
  
  
    private
  
      def set_user
        @user = User.find(params[:id])
      end
  
      def params_user
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
      end
end
