class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @first_name = user.first_name
    @tweets = user.cnditions
  end

  
end
