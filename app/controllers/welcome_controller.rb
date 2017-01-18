class WelcomeController < ApplicationController
  def index
    flash[:notice] = "Admin is here!"
  end
end
