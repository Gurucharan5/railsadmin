class DashboardController < ApplicationController
  before_action :authenticate_user!
  def index

     path = case current_user.role
      
      when 'Admin'
        admin_path
      when 'CompanyAdmin'
        companyadmin_path
      when 'CompanyUser'
        companyuser_path    
      else 
        '/'
    end

    redirect_to path

  end
end
