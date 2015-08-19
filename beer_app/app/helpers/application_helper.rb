module ApplicationHelper

  def current_user
    @user = User.find_by(email: params[:session][:email]).try(:authenticate, params[:session][:password])
  end

end

# I guess my rule of thumb is to use a helper to build a single "unit" of display --
# like a span containing a link -- and to use a partial to
# build a more complex unit of display composed of more than one "unit" of display -- like a grid or a menu.
