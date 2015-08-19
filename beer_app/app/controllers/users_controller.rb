class UsersController < ApplicationController
  def show
  end

  def new
  end

  def edit
  end

  def create
    @article = Article.new(params[:article])

    @article.save
    redirect_to @article
    # ...I am at this point!
  end

  def update
  end

  def destroy
  end
end

# # test user:
# # admin
# # admin

# #homepage -public
# get '/'  do
#   @beers = Beer.all
#   erb :index
# end

# #login form page -public
# get '/users/login'  do   # rename '/sessions/new'

#   erb :'/users/login'
# end

# #login
# post '/users/login'  do  #rename '/sessions/new'
#   @user = User.find_by_email(params[:email])
#   login
#   redirect "/users/#{@user.id}"
# end

# # redirect '/' unless @user && @user.password == params[:password]
# # session[:user_id] = @user.id
# # redirect "/beers/#{@user.id}/profile"

# #logout
# post '/users/logout/:id'  do
#   @user = User.find(params[:id])
#   logout!
#   redirect '/'
# end

# #sign up form page -public
# get '/users/new'  do
#   if request.xhr?
#     erb :'users/_signinform', layout: false #, locals: {contact: @contact}
#   else
#     erb :'/users/sign_in'
#   end
# end

# #sign-in
# post '/users/new'  do
#   @user = User.new(name: params[:name], email: params[:email],
#   password: params[:password],hometown: params[:hometown],country: params[:country])
#   # @user.password = params[:password]
#   @user.save!

#   redirect "/users/#{@user.id}"
# end

# #profile page
# get '/users/:id'  do  #'/users/:id'
#   if current_user == false
#     redirect '/users/login'
#   end
#   @user = User.find(params[:id])
#   @beers = Beer.all
#   erb :'/beers/profile'
# end

# #edit page
# get '/users/:id/edit'  do
#   @user = User.find(params[:id])
#   erb :'/users/edit'
# end

# #edit
# put '/users/:id/edit'  do
#   @user = User.find(params[:id])
#   @user.update_attributes(:name => params[:name],:email => params[:email],:hometown => params[:hometown],:country => params[:country])
#   if request.xhr?
#     erb :'users/_showupdateduser', layout: false #, locals: {contact: @contact}
#   else
#     redirect "/users/#{@user.id}"
#   end
# end

# #deletes user
# delete '/users/:id'  do
#   User.delete(params[:id])
#   redirect '/'
# end
