class UsersController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize_resource

  def create
    authorize! :create, User
    @user = User.new(params[:user])
    @user.role = "registered"
    if @user.save
      redirect_to users_path, notice: "Signed up!" 
    else
      render "new"
    end
  end
end