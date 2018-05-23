class Backoffice::ProductsController < ApplicationController
  before_action :authenticate_administrator!
  layout "backoffice"
  
  def index
    @products = Product.all
  end
end
