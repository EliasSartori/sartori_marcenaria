class Backoffice::DashboardController < ApplicationController
  before_action :authenticate_administrator!

  layout "backoffice"
  
  def index
  end
end
