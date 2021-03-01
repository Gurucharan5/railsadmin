class AdminController < ApplicationController
  before_action :authenticate_user!
  #before_action :check_permissions, :only => [:index]

  skip_before_action :verify_authenticity_token

   def index


   end
end
