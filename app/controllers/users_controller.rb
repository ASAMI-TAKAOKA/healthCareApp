class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @records = user.records
  end
end
