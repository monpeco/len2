class HomeController < ApplicationController
  before_action :require_login, except: [:login, :signin]

  def index
  end
	
  def login
    flash.keep
  end

  def signin
    if authenticate_user
      @loged_in = true
      render :index
    else 
      flash[:error] = 'Authentication failed'
      @loged_in = false
      render :login
    end
  end

private

  def require_login
    unless @loged_in
      redirect_to action: :login
    end
  end

  def authenticate_user
    params[:user] && params[:user]['Email address'] == 'okok' && params[:user] && params[:user][:password] == 'mkmk'
  end
end
