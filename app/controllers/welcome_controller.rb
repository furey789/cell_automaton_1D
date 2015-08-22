
class WelcomeController < ApplicationController

  def index
    session[:previous_url] = request.fullpath
  end

end
