class ApplicationController < ActionController::Base
    helper_method :logged_in?

    private

    def log_in(user)
        session[:user_id] = user.id 
    end 

    def logged_in?
        !!session[:user_id]
    end

    def redirect_if_not_logged_in
        redirect_to '/' if !logged_in?
    end

    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
    end

    def log_out
        session.delete(:user_id)
        @current_user = nil
    end 
end
