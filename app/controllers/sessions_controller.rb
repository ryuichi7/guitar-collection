class SessionsController < ApplicationController

	skip_before_filter :require_user, :only => [:new, :create]

  def new
  end

  def create
  	puts params
    user = User.find_by(email: params[:session][:email])
    if user
      session[:user_id] = user.id
      redirect_to users_path
    else
      render "new"
    end  
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end

end
