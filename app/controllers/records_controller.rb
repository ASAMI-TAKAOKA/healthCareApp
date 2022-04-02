class RecordsController < ApplicationController

  def index

    @records = Record.includes(:user).order("created_at DESC")
    # @activity = Record.group(:activity).group_by_day(:created_at).count
    # 日毎のスコア（actibity）
    # Record.where(day: "created_at")
    # @activity_today = Record.select('activity').includes(:user).group_by_day(:created_at)
    # @activity = Record.all
    # @feeling_today = Record.includes(:user).group(:feeling).group_by_day(:created_at).count
    # 日毎のスコア（feeling）
    # @feeling = Record.all
    # # 日毎のスコア（condition）
    # @condition = Record.all
    # @condition_today = user.records.select('condition')
    # # 日毎のスコア（appetite）
    # @appetite = Record.all
    # @activity_record = Record.where(user_id: current_user.id).limit(3).order(activity: "ASC")
    @record_all = Record.includes(:user)

    # グラフの基準線作成用の配列
    # @activitys = []
    # @activity_record.each do |acti|
    #   @activitys << acti.activity
    # end
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
