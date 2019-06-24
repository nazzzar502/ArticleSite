class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
before_action :authorize, :current_user

  protected

    def authorize
        unless User.find_by(id: session[:user_id])
        redirect_to login_url, notice: "Log in? Please"
    end
    end



  protected

    def owner
      article = Article.find(params[:id])
      if session[:user_id] != article.user_id && User.find_by(id: session[:user_id]).admin_status != true
        redirect_to root_path, notice: "You dont have permission sd"
      end
    end



  def current_user
    #reset_session
    if session[:user_id] != nil
      @current_user = User.find(session[:user_id])
    end
  end

end
