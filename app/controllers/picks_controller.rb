class PicksController < ApplicationController
  before_action :require_user, only: [:new, :create]

  def index
    @picks = Pick.all
  end

  def new
    @pick = Pick.new
  end
  
  def create
    @pick = Pick.new(pick_params)
    user = User.first #TODO: change this to authenticated user
    @pick.user_id = user.id

    if @pick.save
      flash[:notice] = "Pick made."
      redirect_to user_path(user.username)
    else
      render :new
    end
  end

  private

  def pick_params
    params.require(:pick).permit(:pick_url)
  end
end