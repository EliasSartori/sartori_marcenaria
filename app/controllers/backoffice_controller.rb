class BackofficeController < ApplicationController
    before_action :authenticate_administrator!
    layout "backoffice"
end