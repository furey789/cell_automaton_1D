
class WelcomeController < ApplicationController

  def index
    session[:previous_url] = request.fullpath
    @rules = One_dim_rule.all
  end

end
