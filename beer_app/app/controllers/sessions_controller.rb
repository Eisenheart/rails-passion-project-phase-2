class SessionsController < ApplicationController
  include ApplicationHelper

  def new

  end

  def create
    current_user
    #FL: check out authenticate
    if current_user
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

