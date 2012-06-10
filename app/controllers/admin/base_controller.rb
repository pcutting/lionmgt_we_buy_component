class Admin::BaseController < ActionController::Base
  protect_from_forgery
  
  before_filter :authenticate_user!  && :is_admin
  
  
  protected
  
  def is_admin
    if current_user.is_admin!
      return true
    else
      redirect_to root_path, :notice => "Must be an admin to access this section"
    end
  end
  
end
