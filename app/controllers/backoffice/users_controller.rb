class Backoffice::UsersController < BackofficeController
    def index
        @users = User.all
    end
end
