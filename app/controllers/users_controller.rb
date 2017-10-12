class UsersController < ApplicationController
  def create
    user = User.new
    user.name = params[:name]
    user.email = params[:email]
    user.post_code = params[:postcode]
    user.rating = params[:rating].to_i
    user.comment = params[:comment]
    user.save
    redirect_to '/surveys'
  end
end
