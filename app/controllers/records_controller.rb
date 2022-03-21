class RecordsController < ApplicationController

  def index
    @records = Record.all
  end

  def new
    @record = Record.new
  end

  def create
    # binding.pry
    Record.create(record_params)
    # binding.pry
  end

  def destroy
    record = Record.find(params[:id])
    record.destroy
  end

  # def edit
  # end

  # def update
    # post = Post.find(params[:id])
    # post.update(record_params)
  # end

  # def show
   
  # end

  private
  def record_params
    params.require(:record).permit(:activity, :feeling, :condition, :appetite)
  end

  # def set_post
  #   @post = Post.find(params[:id])
  # end

  # def move_to_index
  #   unless user_signed_in?
  #     redirect_to action: :index
  #   end
  # end
end
