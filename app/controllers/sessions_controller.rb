class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    puts 'in create'
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      puts 'logged in'
      redirect_to root_url, notice: 'Logged in!'
    else
      puts 'auth failed'
      flash.now.alert = 'Email or password is invalid'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'You have logged out!'
  end

end
