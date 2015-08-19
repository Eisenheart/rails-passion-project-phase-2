class SessionsController < ApplicationController
  def new

  end

  def create
    @user = User.find_by(email: params[:session][:email]).try(:authenticate, params[:session][:password])
    #FL: check out authenticate
    if @user
      p "User Log in"
      session[:id] = @user.id
      redirect_to beers_path
    else
      p 'email/pw wrong'
      redirect_to root_path
    end
  end

  def destroy
    session[:id] = nil
    redirect_to root_path
  end
end

