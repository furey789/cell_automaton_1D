
class WelcomeController < ApplicationController
  def index
    @rules=One_dim_rule.all
  end
end
