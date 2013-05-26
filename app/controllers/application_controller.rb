class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user

  private

  def current_user
  	#return user_id if it exist otherwise find this user with this id
    
    #SHORT VERSRION
    #@current_user ||= User.find(session[:user_id]) if session[:user_id]
		
		if @current_user
  		return @current_user 
  	else
  		@current_user = User.find(session[:user_id]) if session[:user_id]
	  	return @current_user
  	end

  	
  end

end
