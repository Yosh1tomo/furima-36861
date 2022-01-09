class UsersController < ApplicationController
  def show
    @user = User.find(params[:nickname])
  end
end
