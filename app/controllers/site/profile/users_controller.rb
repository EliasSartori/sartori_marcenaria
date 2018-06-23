class Site::Profile::UsersController < Site::ProfileController

    def index
        @user = User.find(current_user)
    end
    
    def edit
        @user = User.find(current_user)
    end
    
    def update
        @user = User.find(current_user)
        passwd = params[:user][:password]
        passwd_confirmation = params[:user][:password_confirmation]
    
        if passwd.blank? && passwd_confirmation.blank?
            params[:user].delete(:password)
            params[:user].delete(:password_confirmation)
        end
    
        if @user.update(params_user)
            if passwd.blank? && passwd_confirmation.blank?
                redirect_to site_profile_users_path
            else    
                redirect_to new_user_session_path
            end
        else
            render :edit
        end
    end
    
    
    private
        def params_user
            params.require(:user).permit(:name, :phone, :email, :password, :password_confirmation)
        end
end
