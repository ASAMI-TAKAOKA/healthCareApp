class RecordsController < ApplicationController

  def index
    @records = Record.all.order("created_at DESC")
    @activity = Record.group(:activity).group_by_day(:created_at).count
    
  end

  def new
    @record = Record.new
  end

  def create
    Record.create(record_params)
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
    params.require(:record).permit(:activity, :feeling, :condition, :appetite).merge(user_id: current_user.id) #current_user_idをマージ
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
