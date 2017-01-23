class WelcomeController < ApplicationController
  def index
    flash[:alert] = "heihei"
  end
end
