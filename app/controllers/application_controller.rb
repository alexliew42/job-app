class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, unless: -> { request.format.json? }

  def authenticate_admin
    unless current_user && current_user.admin
      render json: {message: "Request Denied"}, status: :unauthorized
    end
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def authenticate_user
    redirect_to '/login', status: :see_other unless current_user
  end

  def authenticate_admin
    unless current_user && current_user.admin
      render json: {messsage: "Request Denied"}, status: :unauthorized
    end
  end


end
