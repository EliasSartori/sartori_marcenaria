class Site::ProfileController < SiteController
    before_action :authenticate_user!
    layout "profile"
    
    def index
    
    end
end
  