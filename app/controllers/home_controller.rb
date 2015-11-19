class HomeController < ApplicationController
  skip_before_action :authenticate_user!

  def odai
    render :index
  end

  def boke
    render :index
  end

end
