class SessionsController < ApplicationController





  def new
    render template: "sessions/new"
  end

  def create
<<<<<<< HEAD
    @user = User.find_by(email: params[:email])
    if current_user && current_user.authenticate(params[:password])
      session[:user_id] = current_user.id      
=======
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id      
>>>>>>> 531679caca7c2aa89cf9e91c35aeabbd3ed6a353
      redirect_to "/jobs"
    else
      p current_user
      p current_user
      p current_user
      redirect_to "/login"
    end

  end

  def destroy
    session[:user_id] = nil
    redirect_to "/login"
  end


  





  # def create
  #   user = User.find_by(email: params[:email])
  #   if user && user.authenticate(params[:password])
  #     jwt = JWT.encode(
  #       {
  #         user_id: user.id, # the data to encode
  #         exp: 24.hours.from_now.to_i # the expiration time
  #       },
  #       Rails.application.credentials.fetch(:secret_key_base), # the secret key
  #       "HS256" # the encryption algorithm
  #     )
  #     render json: { jwt: jwt, email: user.email, user_id: user.id }, status: :created
  #   else
  #     render json: {}, status: :unauthorized
  #   end
  # end

end
