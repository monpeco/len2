class HomeController < ApplicationController
  #before_action :require_login, except: [:login, :signin]
	
  def login
    flash.keep
  end

  def signin
    if authenticate_user
      session[:loged_in] = true
      render :feed
    else 
      flash[:error] = 'Authentication failed'
      session[loged_in] = false
      render :login
    end
  end

  def feed
  end
  
  def new
    session[:lenguage] = params[:lenguage]
  end
	
  def create
    @word = Word.new(word_params)
    @word.origin = session[:lenguage] if session[:lenguage]
    @word.save
    redirect_to home_feed_path
  end
  
  def review
    @words = Word.all
  end
  
  def review_german
    @words = Word.where(origin: :german)
  end
  
private

  def require_login
    unless session[:loged_in]
      redirect_to action: :login
    end
  end

  def authenticate_user
    params[:user] && params[:user]['Email address'] == 'okok' && params[:user] && params[:user][:password] == 'mkmk'
  end
  
  def word_params
    params.require(:word).permit(:origin, :destination, :original, :translation, :pronunciation, :hint)
  end
end
