class HomeController < ApplicationController
  def index
    @email = user_signed_in? ? current_user.email : 'Undefined'
    @restaurants = Restaurant.all
  end
end