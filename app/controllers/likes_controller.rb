class LikesController < ApplicationController

  def index
    @concerts = current_user.concerts
    @users = User.all.map do |user|
      user.profile&.attributes&.merge(imgurl: user.imgurl) if user.concerts.ids == @concerts.ids and user.id != current_user.id
    end
    render json: {
    users: @users.compact,
    concerts: @concerts
   }
  end
  def create
    Like.create(liker: current_user, likee: User.find(likes_params["id"]))
    render json: current_user.matches.ids.include?(likes_params["id"])
  end

  private
  def likes_params
    params.require(:likes).permit(:id)
  end


end
